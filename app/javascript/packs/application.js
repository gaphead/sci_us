import "bootstrap";
import filter from "./card-filter.js";

filter();

// $(function() {
//    $(window).scroll(function () {
//       if ($(this).scrollTop() > 300) {
//          $('body').addClass('changeColor')
//       }
//       if ($(this).scrollTop() < 300) {
//          $('body').removeClass('changeColor')
//       }
//    });
// });

const donateButton = document.getElementById("donateButton");

if (donateButton) {
  $('#donateButton').on('click', function(e) {
    e.preventDefault();

    $('#error_explanation').html('');

    var amount = $('input#amount').val();
    amount = amount.replace(/\$/g, '').replace(/\,/g, '')

    amount = parseFloat(amount);

    if (isNaN(amount)) {
      $('#error_explanation').html('<p>Please enter a valid amount in USD ($).</p>');
    }
    else if (amount < 5.00) {
      $('#error_explanation').html('<p>Donation amount must be at least $5.</p>');
    }
    else {
      amount = amount * 100; // Needs to be an integer!
      handler.open({
        amount: Math.round(amount)
      })
    }
  });
}

const toast = $('#achievement-toast')

if(toast) {
  toast.toast('show')
}
