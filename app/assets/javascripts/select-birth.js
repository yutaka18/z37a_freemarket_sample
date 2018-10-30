$(function() {
  function monthday(year, month) {
    var lastday = new Array('', 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
    if ((year % 4 == 0 && year % 100 == 0) || year % 400 == 0) {
      lastday[2] = 29;
    }
    return lastday[month];
  };

  function SetDay() {
    var year  = $('#year').val();
    var month = $('#month').val();
    var day   = $('#day').val();
    var lastday = monthday(year, month)
    var option = '<option value>--</option>';
    for (var i = 1; i <= lastday; i++) {
      if (i == day) {
        option += '<option value="' + i + '" selected="selected">' + i + '</option>'
      } else {
        option += '<option value="' + i + '">' + i + '</option>'
      }
    }
    $('#day').html(option);
  };

  $(function formSetBirthDay() {
    var time = new Date();
    var year = time.getFullYear();
    for (var i = year; i >= 1900; i--) {
      $('#year').append('<option value="' + i + '">' + i + '</option>');
    }
    for (var i = 1; i <= 12; i++) {
      $('#month').append('<option value="' + i + '">' + i + '</option>');
    }
    for (var i = 1; i <= 31; i++) {
      $('#day').append('<option value="' + i + '">' + i + '</option>');
    };
  });
  $('#year').on('change', function() {
    SetDay();
  });
  $('#month').on('change', function() {
    SetDay();
  });
});
