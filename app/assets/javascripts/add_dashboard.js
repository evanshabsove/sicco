$(function() {
  $(".add-button").on("click", function() {
    $.ajax({
      url: "dashboard/handle_request",
      dataType: "JSON",
      data: {"category": $(this).attr("id"), "method": "add"},
      method: "POST"
    }).done(function(responseData) {
      // console.log(responseData);
      $("body").append(responseData.html)
      $(".modal").modal()
    })
  })
  $(".edit-button").on("click", function() {
    $.ajax({
      url: "dashboard/handle_request",
      dataType: "JSON",
      data: {"id": $(this).attr("id"), "method": "edit"},
      method: "POST"
    }).done(function(responseData) {
      // console.log(responseData);
      $("body").append(responseData.html)
      $(".modal").modal()
    })
  })
})
