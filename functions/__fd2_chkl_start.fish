# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 61
function __fd2_chkl_start --description 'find checklist definition matching <pattern>, spawn a new instance and edit' --argument search_pattern
__fd2_select_from_find $fd2_checklist_definitions_home "$search_pattern"
    if set -q fd2_selected_item
        __fd2_chkl_spawn $fd_selected_item
    end
end
