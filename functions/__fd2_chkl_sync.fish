# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 163
function __fd2_chkl_sync --description 'save and push' --argument msg
  cd $fd2_checklist_home
  __fd2_fdg_sync "$msg"
end
