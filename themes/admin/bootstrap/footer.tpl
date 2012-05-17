<!-- BEGIN: FOOTER -->
  <script src="js/jquery.min.js"></script>
  <script src="{PHP.cfg.themes_dir}/admin/bootstrap/js/bootstrap.js"></script>
  <script type="text/javascript">
    $(function(){
      setTimeout(function(){
        $('.alert.alert-success').animate({
          opacity: 0,
          height: 0
        }, 'slow');
      }, 5000);
      <!-- IF {PHP.m} == 'users' -->
      $('input[name=rskiprights]').click(function(){
        if ($(this).val() == 1){
          $('select[name=rcopyrightsfrom]').attr('disabled', 'disabled');
        } else {
          $('select[name=rcopyrightsfrom]').removeAttr('disabled');
        }
      });
      <!-- ENDIF -->
      <!-- IF {PHP.m} == 'extrafields' -->
      var options = [];
      
      $(".accordion").collapse();
      $('#extf_type_textarea').hide();
      $('#extf_type_select').hide();
      $('#extf_type_rangeint').hide();
      $('#extf_type_rangefloat').hide();
      $('#extf_type_checklistbox').hide();
      $('#extf_type_datetime').hide();
      
      $('#extf_field_type').change(function() {
        options = [];
        $('#extf_field_params').val('');
        updateOptions();
        var val = $(this).val();
        $('#customize').hide();
        if (val == 'input') {
          $('#customize').show();
          $('#extf_type_input').show();
        } else {
          $('#extf_type_input').hide();
        }
        if (val == 'textarea') {
          $('#customize').show();
          $('#extf_type_textarea').show();
        } else {
          $('#extf_type_textarea').hide();
        }
        if (val == 'select' || val == 'checklistbox' || val == 'radio') {
          $('#customize').show();
          $('#extf_type_select').show();
        } else {
          $('#extf_type_select').hide();
        }
        if (val == 'range' || val == 'inputint') {
          $('#customize').show();
          $('#extf_type_rangeint').show();
        } else {
          $('#extf_type_rangeint').hide();
        }
        if (val == 'double' || val == 'currency') {
          $('#customize').show();
          $('#extf_type_rangefloat').show();
        } else {
          $('#extf_type_rangefloat').hide();
        }
        if (val == 'checklistbox') {
          $('#customize').show();
          $('#extf_type_checklistbox').show();
        } else {
          $('#extf_type_checklistbox').hide();
        }
        if (val == 'datetime') {
          $('#customize').show();
          $('#extf_type_datetime').show();
        } else {
          $('#extf_type_datetime').hide();
        }
      });
      $('#newoption').click(function(e){
        e.preventDefault();
        var newopt = $('input[name=newoption]').val();
        if (newopt) {
          options.push(newopt);
          updateOptions();
        }
        $('input[name=newoption]').val('');
      });
      $('a.removeoption').live('click', function(e){
        e.preventDefault();
        var opt = $(this).siblings('span:first').text();
        options.splice(options.indexOf(opt), 1);
        updateOptions();
      });
      function updateOptions(){
        $('#options').html('');
        $.each(options, function(i){
          $('#options').append('<li><a href="#" class="removeoption"><i class="icon-remove"></i></a> <span>'+options[i]+'</span></li>');
        });
        $('#extf_field_variants').val(options.toString());
      }
      $('input[name=intmin], input[name=intmax]').blur(function(){
        var min = $('input[name=intmin]').val();
        var max = $('input[name=intmax]').val();
        if (min !== '' && max !== '') {
          $('#extf_field_params').val(parseInt(min) + ',' + parseInt(max));
        } else {
          $('#extf_field_params').val('');
        }
      });
      $('input[name=floatmin], input[name=floatmax]').blur(function(){
        var min = $('input[name=floatmin]').val();
        var max = $('input[name=floatmax]').val();
        if (min !== '' && max !== '') {
          $('#extf_field_params').val(parseFloat(min) + ',' + parseFloat(max));
        } else {
          $('#extf_field_params').val('');
        }
      });
      $('input[name=datemin], input[name=datemax]').blur(function(){
        var min = $('input[name=datemin]').val();
        var max = $('input[name=datemax]').val();
        var format = $('input[name=dateformat]').val();
        if (min !== '' && max !== '') {
          $('#extf_field_params').val(parseInt(min) + ',' + parseInt(max) + ',' + format);
        } else {
          $('#extf_field_params').val('');
        }
      });
      $('input[name=regex]').blur(function(){
        $('#extf_field_params').val($(this).val());
      });
      $('input[name=separator]').blur(function(){
        $('#extf_field_params').val($(this).val());
      });
      <!-- ENDIF -->
    });
  </script>
</body>
</html>
<!-- END: FOOTER -->