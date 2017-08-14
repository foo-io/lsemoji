(function($){
	var methods = {
		init: function(settings) {
			methods.initMarkitup.apply(this, arguments);
		},
		
		//markitup
		//init
		initMarkitup: function(settings){
			//Меняем настройки markitup
			settings.markupSet.push({
				separator: '-'
			});
			settings.markupSet.push({
				name: "Смайлики",
				className: "bsEditor",
				beforeInsert: function(action) {
					$(action.textarea).emojionePicker('toggle');
				}
			});
		},
		
	};

	$.fn.bestsmiles = function(method) {
		if(method === 'methods') {
			return methods;
		} 
		else if(methods[method]) {
			return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
		} 
		else if(typeof method === 'object' || !method){
			return methods.init.apply(this, arguments);
		}		
	
	};
	
	$.bsStart = function(){
		if(typeof $.fn.markItUp == 'function'){
			ls.hook.inject([jQuery.fn, 'markItUp'], function(settings, extraSettings){
				this.bestsmiles('methods').initMarkitup(settings || {markupSet : []});
			});
		}
	};
})(jQuery);



$(function($){
	$.bsStart();
});
