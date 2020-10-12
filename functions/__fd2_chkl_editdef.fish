function __fd2_chkl_editdef --description 'edit the current definition'
    if not set -q fd2_checklist_current_definition
        echo Current definition not set
        return
    end
    __fd2_chkl_edit_file $fd2_checklist_current_definition
end
