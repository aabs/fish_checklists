function __fd2_chkl_find --argument name_pattern
    fd2_select_from_find -r "$fd2_checklist_instances_home" -p "$name_pattern"
    if test $status -eq 0
        __fd2_chkl_edit
    end
end
