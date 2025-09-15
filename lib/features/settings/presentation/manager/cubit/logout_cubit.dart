import 'package:bloc/bloc.dart';
import 'package:cvision/core/errors/failures.dart';
import 'package:cvision/features/auth/data/repos/auth_repo_impl.dart';
import 'package:meta/meta.dart';

part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit() : super(LogoutInitial());

  Future<void> logout() async {
    emit(LogoutLoading());
    final updateResult = await AuthRepoImpl().signOut();
    updateResult.fold(
      (Failures failures) => emit(LogoutFailure(failures.errMessage)),
      (r) => emit(LogoutSuccess()),
    );
  }
}
