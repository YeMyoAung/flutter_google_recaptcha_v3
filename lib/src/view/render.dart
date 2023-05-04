part of flutter_google_recaptcha_v3_src;

class _FlutterRecaptchaV3RenderWidget extends FlutterRecaptchaV3RenderWidget {
  const _FlutterRecaptchaV3RenderWidget({
    required RecaptchaBaseController controller,
    required this.isLoaded,
  }) : super(controller: controller);

  final ValueNotifier<bool> isLoaded;

  @override
  void dispose() {
    isLoaded.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            InAppWebView(
              onWebViewCreated: (controller) {
                isLoaded.value = true;
                controller.addJavaScriptHandler(
                  handlerName: 'verifyHandler',
                  callback: (args) =>
                      Navigator.of(context).pop(args[0].toString()),
                );
              },
              initialData: InAppWebViewInitialData(
                baseUrl: Uri.parse(controller.hostname),
                data: controller._render,
              ),
            ),
            ValueListenableBuilder(
              valueListenable: isLoaded,
              builder: (context, value, child) {
                if (value) return child!;
                return const SizedBox();
              },
              child: SizedBox(
                width: size.width,
                height: size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: CupertinoActivityIndicator(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Checking your app before accessing ${controller.hostname}.',
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'This process is automatic.',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Please allow up to 5 seconds...',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Ray Id: ${DateTime.now().hashCode}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
