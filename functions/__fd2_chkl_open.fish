# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 50
function __fd2_chkl_open --description 'find active checklist matching <pattern>, and edit' --argument search_pattern
    if test "$search_pattern" = ""
        set search_pattern "*.md"
    end
    fd2_select_from_find -r "$fd2_checklist_instances_home" -p "$search_pattern"
    if set -q fd2_selected_item
        __fd2_chkl_select_inst $fd2_selected_item
        __fd2_chkl_edit
    end
end
