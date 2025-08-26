import 'package:bloc/bloc.dart';
import 'package:cvision/core/errors/failures.dart';
import 'package:cvision/features/auth/data/repos/auth_repo.dart';
import 'package:cvision/features/auth/data/repos/auth_repo_impl.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final AuthRepo authRepo = AuthRepoImpl();
  bool isRemembered = false;

  Future<void> signInWithGoogle() async {
    emit(OtherMethodsLoading());
    final signInResults = await authRepo.signInWithGoogle();
    signInResults.fold(
      (Failures failures) => emit(AuthFailure(failures.errMessage)),
      (r) async {
        await authRepo.setRememberMe(true);
        emit(OtherMethodsSuccess());
      },
    );
  }

  Future<void> emailAndPaawordSignIn({
    required String email,
    required String password,
  }) async {
    emit(AuthLoading());
    final signIn = await authRepo.emailAndPaawordSignIn(email: email, password: password);
    signIn.fold(
      (Failures failures) => emit(AuthFailure(failures.errMessage)),
      (r) async {
        await authRepo.setRememberMe(isRemembered);
        emit(EmailAndPasswordAuthSuccess());
      },
    );
  }

  Future<void> signInWithFacebook() async {
    emit(OtherMethodsLoading());
    final signInResults = await authRepo.signInWithFacebook();
    signInResults.fold(
      (Failures failures) => emit(AuthFailure(failures.errMessage)),
      (r) async {
        await authRepo.setRememberMe(true);
        emit(OtherMethodsSuccess());
      },
    );
  }

  Future<void> emailAndPaawordRegister({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(AuthLoading());
    final register = await authRepo.emailAndPaawordRegister(
      name: name,
      email: email,
      password: password,
    );
    register.fold(
      (Failures failures) => emit(AuthFailure(failures.errMessage)),
      (r) => emit(EmailAndPasswordAuthSuccess()),
    );
  }

  Future<void> updatePassword(String email) async {
    emit(AuthLoading());
    final updateResult = await authRepo.updatePassword(email);
    updateResult.fold(
      (Failures failures) => emit(UpdatePasswordFailure(failures.errMessage)),
      (r) => emit(UpdatePasswordSuccess()),
    );
  }

  Future<void> emailAndPaawordSignIn({
    required String email,
    required String password,
  }) async {
    emit(AuthLoading());
    final signIn = await AuthServices.emailAndPaawordSignIn(email: email, password: password);
    signIn.fold(
      (errMessage) => emit(AuthFailure(errMessage)),
      (r) => emit(AuthSuccess()),
    );
  }

  Future<void> emailAndPaawordRegister({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(AuthLoading());
    final register = await AuthServices.emailAndPaawordRegister(
      name: name,
      email: email,
      password: password,
    );
    register.fold(
      (errMessage) => emit(AuthFailure(errMessage)),
      (r) => emit(AuthSuccess()),
    );
  }

  Future<void> updatePassword(String email) async {
    emit(AuthLoading());
    final updateResult = await AuthServices.updatePassword(email);
    updateResult.fold(
      (errMessage) => emit(UpdatePasswordFailure(errMessage)),
      (r) => emit(UpdatePasswordSuccess()),
    );
  }
}
