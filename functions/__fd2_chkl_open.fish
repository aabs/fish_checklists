# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 50
function chkl_open --description 'find active checklist matching <pattern>, and edit' --argument search_pattern
	if "$search_pattern" = ""
        set search_pattern "*.md"
    end
    fd_file_selector $FD_CHECKLIST_INSTANCES_HOME "$search_pattern"
    if set -q fd_selected_item
        _chkl_select_inst $fd_selected_item
        chkl_edit
    end
end
