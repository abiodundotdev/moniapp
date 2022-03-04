abstract class AuthenticationRepoSitoryInterface {
  Future signIn();
  Future register();
  Future<String> forgetPassword();
}
