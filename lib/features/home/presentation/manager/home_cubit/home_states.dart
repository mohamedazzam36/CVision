class HomeStates {}

class InitialState extends HomeStates {}

class UploadedCvSuccess extends HomeStates {}

class UploadedCvFailure extends HomeStates {}

class UploadedCvToApiFailure extends HomeStates {
  final String errMessage;

  UploadedCvToApiFailure({required this.errMessage});
}

class UploadedCvToApiSuccess extends HomeStates {}

class UploadedCvToApiLoading extends HomeStates {}

class ReUploadedCvToApi extends HomeStates {}

class GetSkillsSuccessState extends HomeStates {}

class GetSkillsLoadingState extends HomeStates {}

class GetSkillsFailureState extends HomeStates {
  final String errMessage;

  GetSkillsFailureState({required this.errMessage});
}
