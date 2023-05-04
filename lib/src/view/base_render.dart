part of flutter_google_recaptcha_v3_src;

@immutable
abstract class FlutterRecaptchaV3RenderWidget<T extends RecaptchaBaseController>
    extends StatefulWidget {
  final T controller;
  const FlutterRecaptchaV3RenderWidget({
    super.key,
    required this.controller,
  });

  @override
  State<FlutterRecaptchaV3RenderWidget<T>> createState() =>
      _FlutterRecaptchaV3RenderWidgetState<T>();

  void dispose();

  Widget build(BuildContext context);
}

class _FlutterRecaptchaV3RenderWidgetState<T extends RecaptchaBaseController>
    extends State<FlutterRecaptchaV3RenderWidget<T>> {
  @override
  void dispose() {
    widget.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context);
}
