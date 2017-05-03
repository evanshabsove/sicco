$(function() {
  $(".add-button").on("click", function() {
    $.ajax({
      url: "dashboard/handle_request",
      dataType: "JSON",
      data: {"category": $(this).attr("id")},
      method: "POST"
    }).done(function(responseData) {
      console.log(responseData);
    })
  })
})
