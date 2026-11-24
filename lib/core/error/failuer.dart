sealed class Failure {
  final String message;
   Failure(this.message);

   
}

class InvalidCredentialsFailure extends Failure { InvalidCredentialsFailure() : super('Wrong email or password'); }
class EmailAlreadyInUseFailure extends Failure { EmailAlreadyInUseFailure() : super('Email already in use'); }
class NetworkFailure extends Failure { NetworkFailure() : super('No internet connection'); }
class UnknownFailure extends Failure { UnknownFailure([super.message = 'Something went wrong']); }

// core/error/result.dart
