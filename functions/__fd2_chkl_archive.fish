# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 150
function chkl_archive --description 'select an active checklist for archival'
	fd_file_selector $FD_CHECKLIST_INSTANCES_HOME "*.md"
    if set -q fd_selected_item
        _chkl_archive $fd_selected_item
    end
end
