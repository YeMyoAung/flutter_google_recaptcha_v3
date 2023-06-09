part of flutter_google_recaptcha_v3_src;

class ThreeBounceLoading extends LoadingBase {
  const ThreeBounceLoading(
      [String colorString = 'grey', String? backgroundColor])
      : super(colorString, backgroundColor);

  @override
  String get html => """
<div class="lds-ellipsis"><div></div><div></div><div></div><div></div></div>
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
.lds-ellipsis {
  display: inline-block;
  position: relative;
  width: 80px;
  height: 80px;
  
}
.lds-ellipsis div {
  position: absolute;
  top: 33px;
  width: 13px;
  height: 13px;
  border-radius: 50%;
  background: $colorString;
  animation-timing-function: cubic-bezier(0, 1, 1, 0);
}
.lds-ellipsis div:nth-child(1) {
  left: 8px;
  animation: lds-ellipsis1 0.6s infinite;
}
.lds-ellipsis div:nth-child(2) {
  left: 8px;
  animation: lds-ellipsis2 0.6s infinite;
}
.lds-ellipsis div:nth-child(3) {
  left: 32px;
  animation: lds-ellipsis2 0.6s infinite;
}
.lds-ellipsis div:nth-child(4) {
  left: 56px;
  animation: lds-ellipsis3 0.6s infinite;
}
@keyframes lds-ellipsis1 {
  0% {
    transform: scale(0);
  }
  100% {
    transform: scale(1);
  }
}
@keyframes lds-ellipsis3 {
  0% {
    transform: scale(1);
  }
  100% {
    transform: scale(0);
  }
}
@keyframes lds-ellipsis2 {
  0% {
    transform: translate(0, 0);
  }
  100% {
    transform: translate(24px, 0);
  }
}

</style>
""";
}
