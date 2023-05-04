part of flutter_google_recaptcha_v3_src;

abstract class RecaptchaBaseController {
  final String _apiKey;
  final String hostname;
  const RecaptchaBaseController._(this.hostname, this._apiKey);

  String get _render;
  Future<RecaptchaModel?> getRecaptcha(BuildContext context);
}
