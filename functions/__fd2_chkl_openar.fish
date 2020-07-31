function __fd2_chkl_openar --description 'open a archived checklist for editing' --argument search_pattern
fd2_select_from_find $fd2_checklist_archive_home "*.md"
    if set -q fd2_selected_item
        if set -q EDITOR
            eval '$EDITOR "'$fd2_selected_item'"'
        else
            vim $fd2_selected_item
        end
    end
end
