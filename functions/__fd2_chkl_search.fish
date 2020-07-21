# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 46
function __fd2_chkl_search --argument pattern
	fishdots_search_select $FD_CHECKLIST_INSTANCES_HOME $pattern
end
