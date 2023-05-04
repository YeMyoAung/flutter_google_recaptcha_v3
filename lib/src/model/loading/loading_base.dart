part of flutter_google_recaptcha_v3_src;

abstract class LoadingBase {
  final String colorString;
  final String? backgroundColor;
  const LoadingBase([this.colorString = 'grey', this.backgroundColor]);

  String get html;
  String get css;
}
