$(document).ready(function() {
  $(".container").on("click", ".collapsible-header", function() {
    $(this).addClass("hidden").siblings(".collapsible-box").removeClass("hidden");
  } );
});
