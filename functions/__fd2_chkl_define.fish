# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 105
function __fd2_chkl_define --description 'creates a new definition of a checklist' --argument name
  set -l slug (__fd2_to_slug $name)
    set -l target_path "$fd2_checklist_definitions_home/$slug"
    # if the definition already exists, edit that instead
    if test -e $target_path
        set -U fd2_checklist_current_definition "$target_path"
    else
        touch $target_path
    end

    __fd2_chkl_editdef
end
