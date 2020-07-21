# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 97
function __fd2_chkl_editdef --description 'edit the current definition'
	if not set -q FD_CHECKLIST_CURRENT_DEFINITION
	echo Current definition not set
	return
    end
    _chkl_edit	$FD_CHECKLIST_CURRENT_DEFINITION
end
