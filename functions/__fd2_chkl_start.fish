# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 61
function __fd2_chkl_start --description 'find checklist definition matching <pattern>, spawn a new instance and edit' --argument search_pattern
	fd_file_selector $FD_CHECKLIST_DEFINITIONS_HOME "$search_pattern"
    if set -q fd_selected_item
        chkl_spawn $fd_selected_item
    end
end
