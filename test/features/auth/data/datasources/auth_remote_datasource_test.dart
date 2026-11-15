import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:social_mate/features/auth/data/datasources/auth_remote_datasource.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUserCredential extends Mock implements UserCredential {}

void main() {
  late AuthRemoteDatasource datasrouce;
  late MockFirebaseAuth mockFirebaseAuth;
  late MockUserCredential mockUserCredential;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockUserCredential = MockUserCredential();

    datasrouce = AuthRemoteDatasource(mockFirebaseAuth);
  });

  group("Signup with firebase", () {
    const email = "example@gmail.com";
    const password = "password123";

    test("should return UserCredential when signup is successful", () async {
      // Arrange
      when(
        () => mockFirebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).thenAnswer((_) async => mockUserCredential);

      // Act
      final result = await datasrouce.signupWithEmailPassword(
        email: email,
        password: password,
      );

      // Assert
      expect(result, mockUserCredential);
      verify(
        () => mockFirebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).called(1);
    });

     test('should throw FirebaseAuthException when signup fails', () async {
      // Arrange
      final exception = FirebaseAuthException(
        code: 'weak-password',
        message: 'The password is too weak.',
      );

      when(
        () => mockFirebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).thenThrow(exception);

      // Act & Assert
      expect(
        () => datasrouce.signupWithEmailPassword(
          email: email,
          password: password,
        ),
        throwsA(same(exception)),
      );
    });
  });

  group('Login with firebase', () {
  const email = 'example@gmail.com';
  const password = 'password123';

  test('should return UserCredential when login is successful', () async {
    // Arrange
    when(
      () => mockFirebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      ),
    ).thenAnswer((_) async => mockUserCredential);

    // Act
    final result = await datasrouce.loginEmailPassword(
      email: email,
      password: password,
    );

    // Assert
    expect(result, mockUserCredential);

    verify(
      () => mockFirebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      ),
    ).called(1);
  });

  test('should throw FirebaseAuthException when login fails', () async {
    // Arrange
    final exception = FirebaseAuthException(
      code: 'user-not-found',
      message: 'No user found for this email.',
    );

    when(
      () => mockFirebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      ),
    ).thenThrow(exception);

    // Act & Assert
    expect(
      () => datasrouce.loginEmailPassword(
        email: email,
        password: password,
      ),
      throwsA(same(exception)),
    );
  });
});
}
