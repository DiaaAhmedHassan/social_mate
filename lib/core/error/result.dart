import 'package:social_mate/core/error/failuer.dart';
sealed class Result<T> {
  const Result();

  R fold<R>({
    required R Function(Failure failure) onError,
    required R Function(T data) onSuccess,
  }) =>
      switch (this) {
        Success(:final data) => onSuccess(data),
        Error(:final failure) => onError(failure),
      };
}
class Success<T> extends Result<T> { final T data; const Success(this.data); }
class Error<T> extends Result<T> { final Failure failure; const Error(this.failure); }