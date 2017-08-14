<?php

/*-------------------------------------------------------
*
*   LiveStreet Engine Social Networking
*
*--------------------------------------------------------*/

class PluginLsemoji_HookLsemoji extends Hook {
	/*
	* Регистрируем хуки
	*/
	public function RegisterHook() {
		$this->AddHook('engine_init_complete','addFiles');
		$this->AddHook('template_body_end','addJs');
	}
	/*
	* Добавляем файлы js/css
	*/
	public function addFiles() {
		$this->Viewer_AppendStyle(Plugin::GetTemplatePath(__CLASS__).'css/emojione.picker.css');
		$this->Viewer_AppendScript(Plugin::GetTemplatePath(__CLASS__).'js/emojione.picker.js');
		$this->Viewer_AppendScript(Plugin::GetTemplatePath(__CLASS__).'js/lsemoji.js');
		$this->Viewer_AppendScript(Plugin::GetTemplatePath(__CLASS__).'js/emojione.min.js');
		
	}
	
	public function addJs() {
        return $this->Viewer_Fetch(Plugin::GetTemplatePath(__CLASS__) . 'inject.template_body_end.tpl');
	}	
}
?>