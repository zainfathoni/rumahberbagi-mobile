import '../../entities/auth.dart';
import '../../entities/user.dart';
import '../usecase.dart';

class LoginUsecase implements Usecase<Future<User>> {
  const LoginUsecase(this.auth);

  final Auth auth;

  @override
  Future<User> run() async {
    // TODO: Call an endpoint to get the username from the backend
    final User user = User(email: auth.email, username: 'zainf');

    return user;
  }
}
