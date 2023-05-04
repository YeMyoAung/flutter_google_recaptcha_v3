part of flutter_google_recaptcha_v3_src;

class RecaptchaController extends RecaptchaBaseController
    with RecaptchaRender, GetRecaptcha {
  RecaptchaController(
    String apiKey, {
    String hostName = 'http://localhost',
  }) : super._(hostName, apiKey);
}
