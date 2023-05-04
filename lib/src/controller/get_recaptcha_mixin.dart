part of flutter_google_recaptcha_v3_src;

mixin GetRecaptcha on RecaptchaBaseController {
  @override
  Future<RecaptchaModel?> getRecaptcha(BuildContext context) async {
    final response = await showModalBottomSheet(
      context: context,
      builder: (_) => _FlutterRecaptchaV3RenderWidget(
        controller: this,
        isLoaded: ValueNotifier(false),
      ),
      isScrollControlled: true,
      isDismissible: false,
    );

    if (response == null) return null;
    return RecaptchaModel._(response, DateTime.now());
  }
}
