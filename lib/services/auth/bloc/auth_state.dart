part of 'auth_bloc.dart';

@immutable
abstract class AuthState {
  final bool isLoading;
  final String? loadingText;
  const AuthState({
    required this.isLoading,
    this.loadingText = 'Please wait a moment',
  });
}

class AuthStateUninitialized extends AuthState {
  const AuthStateUninitialized({required bool isLoading})
      : super(isLoading: isLoading);
}

class StateAddUserProfile extends AuthState {
  const StateAddUserProfile({required bool isLoading})
      : super(isLoading: isLoading);
}

class AuthStateRegistering extends AuthState {
  final Exception? exception;
  const AuthStateRegistering({
    required this.exception,
    required isLoading,
  }) : super(isLoading: isLoading);
}

class AuthStateForgotPassword extends AuthState {
  final Exception? exception;
  final bool hasSentEmail;
  const AuthStateForgotPassword({
    required this.exception,
    required this.hasSentEmail,
    required bool isLoading,
  }) : super(isLoading: isLoading);
}

class AuthStateLoggedIn extends AuthState {
  final AuthUser user;
  const AuthStateLoggedIn({
    required this.user,
    required bool isLoading,
  }) : super(isLoading: isLoading);
}

class AuthStateVerifyEnterPhoneNumber extends AuthState {
  const AuthStateVerifyEnterPhoneNumber({required bool isLoading})
      : super(isLoading: isLoading);
}

class AuthStateEnterCode extends AuthState {
  const AuthStateEnterCode({
    required bool isLoading,
  }) : super(isLoading: isLoading);
}

class AuthStateInvalidCode extends AuthState {
  final Exception? exception;
  const AuthStateInvalidCode({
    required this.exception,
    required bool isLoading,
  }) : super(isLoading: isLoading);
}

class AuthStateSendCodeFailed extends AuthState {
  final Exception? exception;
  const AuthStateSendCodeFailed({
    required this.exception,
    required bool isLoading,
  }) : super(isLoading: isLoading);
}

class AuthStateReAuthRequired extends AuthState {
  final Exception? exception;
  const AuthStateReAuthRequired({
    required this.exception,
    required bool isloading,
  }) : super(isLoading: isloading);
}

class AuthStateVerificationSuccessful extends AuthState {
  const AuthStateVerificationSuccessful({required bool isLoading})
      : super(isLoading: isLoading);
}

class AuthStateNeedsVerification extends AuthState {
  const AuthStateNeedsVerification({required bool isLoading})
      : super(isLoading: isLoading);
}

class AuthStateLoggedOut extends AuthState with EquatableMixin {
  final Exception? exception;
  const AuthStateLoggedOut({
    required this.exception,
    required bool isLoading,
    String? loadingText,
  }) : super(
          isLoading: isLoading,
          loadingText: loadingText,
        );

  @override
  List<Object?> get props => [exception, isLoading];
}

class AuthStateDelete extends AuthState {
  const AuthStateDelete({required bool isLoading})
      : super(isLoading: isLoading);
}
