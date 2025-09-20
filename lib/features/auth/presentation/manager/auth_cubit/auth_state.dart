part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class EmailAndPasswordAuthSuccess extends AuthState {}

final class OtherMethodsSuccess extends AuthState {}

final class UpdatePasswordSuccess extends AuthState {}

final class AuthFailure extends AuthState {
  final String errMessage;

  AuthFailure(this.errMessage);
}

final class UpdatePasswordFailure extends AuthState {
  final String errMessage;

  UpdatePasswordFailure(this.errMessage);
}

final class AuthLoading extends AuthState {}

final class OtherMethodsLoading extends AuthState {}
