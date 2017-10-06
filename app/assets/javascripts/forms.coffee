$(document).on "ajax:beforeSend", "#emails-form", ()->
    $("#email-info").html "Procesando tu peticion"
$(document).on "ajax:success", "#emails-form", (e,data,estado,xhr)->
  $(this).slideUp()
  $("#email-info").html "Esta en la lista"
$(document).on "ajax:error", "#emails-form", (e,data,estado,xhr)->
  $("#email-info").html data.respnseJSON.email[0]