<script>
	document.addEventListener('DOMContentLoaded', function(){ // сбрабатываем скрипт после DOM

		$(document).ready(function(e) {
		
			$( "textarea" ).emojionePicker({ // подключаем для textarea
			  pickerTop: 5, // отступ иконки
			  pickerRight: -15 // отступ иконки (временное решение)
			});
			
			$(".ls-text").each(function() { // переводим шорткоды в иконку внутри класса .ls-text
				var original = $(this).html();
				var converted = emojione.toImage(original);
				console.log(emojione.toImage(original));
				$(this).html(converted);
			});
			
		});

	}, false);
</script>
