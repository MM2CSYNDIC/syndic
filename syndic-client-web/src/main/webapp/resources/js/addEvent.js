/**
 *@author LYES KHERBICHE
 * 
 */
 jQuery(document).ready(function(){
	 
		$('#AGform').hide();
		$('#eventform').hide();
		$('#eventform2').hide();
		$('#addinput').show();
		$('#typeEvent').change(function()
		{
			if (document.getElementById("typeEvent").value == 'AG') {
				$('#AGform').toggle(400);
				$('#addinput').show();
				$('#eventform').hide();
				$('#eventform2').hide();
			}
			else if (document.getElementById("typeEvent").value == 'Intervention') {
				$('#eventform').toggle(400);
				$('#eventform2').toggle(400);
				$('#AGform').hide();
			}
			else
			{
				$('#AGform').hide();
				$('#eventform').hide();
				$('#eventform2').hide();
			}
		});
	});
 
    $(function() {
		$("#dateEvent").datepicker({
			minDate : 0
		});
	});	
    
    
	$(function() {
		var i = $('[name^="pp_new_"]').size() + 1;
		$('#addNew').live('click', function() {
			var something = '${abc}';
			var jsonBoms = $('#zip');
			var jsonBom = $('#zip').val();
			var jsonBomss = jsonBom[0];
			var json_obj = $.parseJSON(jsonBom);
		    var person = JSON.parse(jsonBom);
			i++;
			$.get("/syndic/appendQuestionView.ldz", { fieldId: i},
					function(data){
						$("#submitRow").before(data);
					});

			return false;
		});

		$('#remNew').live('click', function () {
			if( i > 0 ) {
				$('#pp_new_'+i+'').remove();
				i--;
			}
			return false;
		});

		$('#typeEvent').change(function() {
			$('[name^="pp_new_"]').remove();
			i=0;
		});
	});
	
	
