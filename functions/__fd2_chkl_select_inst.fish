function __fd2_chkl_select_inst -a inst_path -d "choose working checklist instance"
    if test -e $inst_path
        set -U fd2_checklist_current_checklist $inst_path
    end
end
