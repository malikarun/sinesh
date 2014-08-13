$(document).on('ready page:change', function() {
  window.fbAsyncInit = function() {
    FB.init({
      appId: 313947082104988,
      xfbml: true,
      version: "v2.0"
    });
  };
  return (function(d, s, id) {
    var fjs, js;
    fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {
      return;
    }
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  })(document, "script", "facebook-jssdk");
});