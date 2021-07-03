import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rumahberbagi_mobile/entities/auth.dart';
import 'package:rumahberbagi_mobile/entities/user.dart';
import 'package:rumahberbagi_mobile/usecases/auth/login_usecase.dart';

void main() {
  final _f = Faker();

  test('successfully login', () async {
    final String email = _f.internet.email();

    final Auth auth = Auth(email: email, password: 'p4ssw0rd');
    final LoginUsecase loginUsecase = LoginUsecase(auth);

    final User user = await loginUsecase.run();

    expect(user, const TypeMatcher<User>());
    expect(user.email, email);
    expect(user.username, 'zainf');
  });
}
