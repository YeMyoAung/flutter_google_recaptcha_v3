part of flutter_google_recaptcha_v3_src;

mixin RecaptchaRender on RecaptchaBaseController {
  @override
  String get _render {
    return """<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Google Recaptcha</title>
</head>
<body>
  <div id="g-recaptcha-response"></div>
  <script src="https://www.google.com/recaptcha/api.js?render=$_apiKey"></script>
  <script>
    grecaptcha.ready(async function () {
        const token = await grecaptcha
        .execute("$_apiKey", {
          action: "validate_captcha",
        });
        window.flutter_inappwebview.callHandler('verifyHandler', token);
    });
  </script>
</body>
</html>""";
  }
}
