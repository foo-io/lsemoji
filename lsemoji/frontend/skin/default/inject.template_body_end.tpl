<script>
	document.addEventListener('DOMContentLoaded', function(){ // ñáðàáàòûâàåì ñêðèïò ïîñëå DOM

		$(document).ready(function(e) {
		
			$( "textarea" ).emojionePicker({ // ïîäêëþ÷àåì äëß textarea
			  pickerTop: 5, // îòñòóï èêîíêè
			  pickerRight: -15 // временное решение
			});
			
			$(".ls-text").each(function() { // ïåðåâîäèì øîðòêîäû â èêîíêó âíóòðè êëàññà .ls-text
				var original = $(this).html();
				var converted = emojione.toImage(original);
				console.log(emojione.toImage(original));
				$(this).html(converted);
			});
			
		});

	}, false);
</script>
