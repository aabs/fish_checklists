# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 79
function __fd2_chkl_opendef --description 'file name search for a definition matching <pattern>, opens selection in default editor' --argument search_pattern
fd2_select_from_find $fd2_checklist_definitions_home "*.md"
    if set -q fd2_selected_item
        __fd2_chkl_select_def $fd2_selected_item
        __fd2_chkl_editdef
    end
end
