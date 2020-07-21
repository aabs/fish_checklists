# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 157
function chkl_archiveall --description 'archive all active checklists'
	for inst in (fishdots_find $FD_CHECKLIST_INSTANCES_HOME "*.md")
        _chkl_archive $inst
    end
end
