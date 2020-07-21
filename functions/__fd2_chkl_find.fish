# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 42
function chkl_find --argument name_pattern
	fishdots_find_select $FD_CHECKLIST_INSTANCES_HOME $name_pattern
end
