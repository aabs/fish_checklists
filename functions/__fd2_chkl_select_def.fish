function __fd2_chkl_select_def -a def_path -d "choose working definition"
    if test -e $def_path
        set -U fd2_checklist_current_definition $def_path
    end
end
