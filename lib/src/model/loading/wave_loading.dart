part of flutter_google_recaptcha_v3_src;

class WaveLoading extends LoadingBase {
  const WaveLoading([String colorString = 'grey', String? backgroundColor])
      : super(colorString, backgroundColor);

  @override
  String get html => """
<div class="lds-facebook">
  <div></div>
  <div></div>
  <div></div>
  <div></div>
  <div></div>
</div>
""";

  @override
  String get css => """
<style>
body {
  display: flex;
  width: 100%;
  height: 100vh;
  background: $backgroundColor;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.lds-facebook {
  display: inline-block;
  position: relative;
  width: 80px;
  height: 40px;
}
.lds-facebook div {
  display: inline-block;
  position: absolute;
  left: 8px;
  width: 10px;
  background: $colorString;
  animation: lds-facebook 1.2s cubic-bezier(0, 0.5, 0.5, 1) infinite;
}
.lds-facebook div:nth-child(1) {
  left: 8px;
  animation-delay: -0.24s;
}
.lds-facebook div:nth-child(2) {
  left: 24px;
  animation-delay: -0.12s;
}
.lds-facebook div:nth-child(3) {
  left: 40px;
  animation-delay: 0;
}
.lds-facebook div:nth-child(4) {
  left: 56px;
  animation-delay: 0;
}
.lds-facebook div:nth-child(5) {
  left: 56px;
  animation-delay: 0;
}
@keyframes lds-facebook {
  0% {
    top: 8px;
    height: 64px;
  }
  50%,
  100% {
    top: 24px;
    height: 30px;
  }
}
</style>
""";
}
