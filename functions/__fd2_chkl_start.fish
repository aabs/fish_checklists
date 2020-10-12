function __fd2_chkl_start --description 'find checklist definition matching <pattern>, spawn a new instance and edit' --argument search_pattern
    fd2_select_from_find -r "$fd2_checklist_definitions_home" -p '*.md'
    if test $status -eq 0
        if set -q fd2_selected_item
            __fd2_chkl_spawn $fd2_selected_item
        end
    end
end
