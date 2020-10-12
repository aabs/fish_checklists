# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 30
function __fd2_chkl_ls
    fd2_find -r "$fd2_checklist_instances_home" -p '*.md'
end
