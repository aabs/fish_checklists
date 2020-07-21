# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 68
function chkl_openar --description 'open a archived checklist for editing' --argument search_pattern
	fd_file_selector $FD_CHECKLIST_ARCHIVE_HOME "*.md"
    if set -q fd_selected_item
        if set -q EDITOR
            eval '$EDITOR "'$fd_selected_item'"'
        else
            vim $fd_selected_item
        end
    end
end
