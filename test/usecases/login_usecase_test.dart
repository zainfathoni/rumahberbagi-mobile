import 'package:flutter_test/flutter_test.dart';
import 'package:rumahberbagi_mobile/entities/auth.dart';
import 'package:rumahberbagi_mobile/entities/user.dart';
import 'package:rumahberbagi_mobile/usecases/auth/login_usecase.dart';

void main() {
  test('successfully login', () async {
    final Auth auth = Auth(email: 'me@zainf.dev', password: 'p4ssw0rd');
    final LoginUsecase loginUsecase = LoginUsecase(auth);

    expect(await loginUsecase.run(), const TypeMatcher<User>());
  });
}
