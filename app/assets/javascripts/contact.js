$(function() {
  $('body').on('click', '#send_contact', function(e) {
    e.preventDefault(); // prevent default submit behaviour
    e.stopPropagation();

    var name = $("#contact_name").val();
    var email = $("#contact_email").val();
    var company = $("#contact_company").val();
    var phone = $("#contact_phone").val();
    var message = $("#contact_comments").val();
    var firstName = name; // For Success/Failure Message

    // Check for white space in name for Success/Fail message
    if (firstName.indexOf(' ') >= 0) {
      firstName = name.split(' ').slice(0, -1).join(' ');
    }

    $.ajax({
      url: "/save",
      type: "POST",
      data: {
        contact: {
          name: name,
          phone: phone,
          email: email,
          comments: message,
          company: company
        }
      },
      success: function (e) {
        $('#success').html("<div class='alert alert-success'>")
        $('#success > .alert-success').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;").append("</button>")
        $('#success > .alert-success').append("<strong>Your message has been sent. </strong>")
        $('#success > .alert-success').append('</div>')

//clear all fields
        $('#contact-form').trigger("reset")
      },
      error: function (e) {
        // Fail message
        $('#success').html("<div class='alert alert-danger'>");
        $('#success > .alert-danger').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
            .append("</button>");
        $('#success > .alert-danger').append("<strong>Sorry " + firstName + ", it seems that my mail server is not responding. Please try again later!");
        $('#success > .alert-danger').append('</div>');
        //clear all fields
        $('#contact-form').trigger("reset");
      },
    })

  });
});
