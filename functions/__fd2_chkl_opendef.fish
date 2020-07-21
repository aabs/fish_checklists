# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 79
function chkl_opendef --description 'file name search for a definition matching <pattern>, opens selection in default editor' --argument search_pattern
	fd_file_selector $FD_CHECKLIST_DEFINITIONS_HOME "*.md"
    if set -q fd_selected_item
        _chkl_select_def $fd_selected_item
        chkl_editdef
    end
end
