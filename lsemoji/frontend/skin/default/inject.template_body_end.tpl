<script>
	document.addEventListener('DOMContentLoaded', function(){ // ������������ ������ ����� DOM

		$(document).ready(function(e) {
		
			$( "textarea" ).emojionePicker({ // ���������� ��� textarea
			  pickerTop: 5, // ������ ������
			  pickerRight: 5 // ������ ������
			});
			
			$(".ls-text").each(function() { // ��������� �������� � ������ ������ ������ .ls-text
				var original = $(this).html();
				var converted = emojione.toImage(original);
				console.log(emojione.toImage(original));
				$(this).html(converted);
			});
			
		});

	}, false);
</script>