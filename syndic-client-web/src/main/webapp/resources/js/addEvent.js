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
    
    /**
     * to Append Question Input 
     */
	$(function() {
		var i = $('[name^="pp_new_"]').size() + 1;
		$('#addNew').click(function() {
			i++;
			$.get("/syndic/appendQuestionView.ldz", { fieldId: i},
					function(data){
						$("#submitRow").before(data);
					});

			return false;
		});

		$('#remNew').click( function () {
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
	
	/**
	 * to append Address checkBox  
	 */
	$(function() {
		var index = 0;
		$('#zipCode').change(function() {
			var zipCodeElement = document.getElementById("zipCode");
			var zipCode = zipCodeElement.options[zipCodeElement.selectedIndex].text;
			if ( zipCode != 'Select') {
				var tree = jQuery.parseJSON($('#condoJson').val());
				var html = '';
				if (tree) {
					for(var i = tree.trees.length-1; i>=0; --i) { 
						if (zipCode != 'Select' && tree.trees[i].address.zipCode == zipCode) {
							$.get("/syndic/appendAddressView.ldz", { fieldId: tree.trees[i].id, fieldIndex: index },
									function(data){
										html += data;
										$('#checkbox').append(data);
									});
						    index++;
						}
					}
				}
			} 
		});
		
		$('#reset').click ( function() {
			index = 0;
			$('#checkboxlabel').remove();
		});
	});
	
	app = function (data) {
		$('.checkbox').append(data);
	}
	
