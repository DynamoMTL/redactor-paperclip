window.init_redactor = function(){
  var csrf_token = $('meta[name=csrf-token]').attr('content');
  var csrf_param = $('meta[name=csrf-param]').attr('content');
  var params;
  if (csrf_param !== undefined && csrf_token !== undefined) {
    params = csrf_param + "=" + encodeURIComponent(csrf_token);
  }
  $('.redactor').redactor(
    { "imageUpload":"/redactor_assets/create?" + params,
      "imageGetJson":"/redactor_assets/",
      "buttonSource": true,
      "css":"style.css"}
  );
}

$(document).ready( window.init_redactor );
$(window).bind('page:change', window.init_redactor);
