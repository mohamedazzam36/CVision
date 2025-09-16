import 'dart:convert';
import 'package:cvision/core/errors/api_failures.dart';
import 'package:cvision/core/services/api_service.dart';
import 'package:cvision/features/home/data/models/market_comparsion/market_comparsion.dart';
import 'package:cvision/features/home/data/models/upload_cv_model/upload_cv_model.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(InitialState());

  Future<PlatformFile?> pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'docx'],
    );
    if (result != null) {
      emit(UploadedCvSuccess());
      return result.files.single;
    }
    emit(UploadedCvFailure());
    return null;
  }

  UploadCvModel? uploadCvModel;

  Future<void> uploadFileToApi(String filePath) async {
    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(
        filePath,
        filename: filePath.split("/").last,
      ),
    });

    emit(UploadedCvToApiLoading());

    try {
      var value = await ApiService.post(
        "/analysis/start",
        data: formData,
        contentType: 'multipart/form-data',
      );
      uploadCvModel = UploadCvModel.fromJson(value.data);
      emit(UploadedCvToApiSuccess());
    } on DioException catch (e) {
      emit(UploadedCvToApiFailure(errMessage: ApiFailures.fromDioException(e).errMessage));
    } catch (e) {
      emit(UploadedCvToApiFailure(errMessage: e.toString()));
    }
  }

  Future<void> pickAndUploadFile() async {
    final file = await pickFile();
    if (file != null && file.path != null) {
      await uploadFileToApi(file.path!);
    } else {
      print("File Not found");
    }
  }

  Future<void> rePickAndUploadFile() async {
    final file = await pickFile();
    emit(ReUploadedCvToApi());

    if (file != null && file.path != null) {
      await uploadFileToApi(file.path!);
    } else {
      print("File Not found");
    }
  }

  MarketComparsion? marketComparsion;

  Future<void> getSkills() async {
    emit(GetSkillsLoadingState());

    final body = {
      "verified_skills": {
        "technical_skills": ["JavaScript", "React", "Node.js", "TypeScript"],
        "soft_skills": ["Problem Solving", "Communication", "Team Collaboration"],
      },
    };

    try {
      var value = await ApiService.post(
        "/analysis/${uploadCvModel!.data!.analysisData!.analysisId}/compare",
        data: jsonEncode(body),
        contentType: 'application/json',
      );

      marketComparsion = MarketComparsion.fromJson(value.data);
      emit(GetSkillsSuccessState());
    } on DioException catch (e) {
      emit(GetSkillsFailureState(errMessage: ApiFailures.fromDioException(e).errMessage));
    } catch (e) {
      emit(GetSkillsFailureState(errMessage: e.toString()));
    }
  }
}
