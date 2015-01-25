$(document).ready(function() {
  $(".container").on("click", ".collapsible-header", function() {
    $(this).siblings(".collapsible-box").removeClass("hidden");
  } );
});
