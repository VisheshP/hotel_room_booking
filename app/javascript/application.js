// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
import "jquery";
import "jquery_ujs";
import "popper";
import "bootstrap";

$(document).ready(function () {
  $(".clickable-button").click(function () {
    var id = $(this).data("booking-id");
    $.ajax({
      url: "/bookings/" + id + "/cancel",
      type: "PUT",
      success: function (data) {
        if (data.success) {
          location.reload();
        }
      },
    });
  });

  $("#search-btn").click(function () {
    var text = $("#search-text").val();
    if (text != "") {
      $.ajax({
        url: "/hotels",
        type: "GET",
        data: { search_string: text },
      });
    } else {
      alert("enter search text!");
    }
  });
});
