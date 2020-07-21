# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 105
function chkl_define --description 'creates a new definition of a checklist' --argument name
	set -l slug (to_slug $name)
    set -l target_path "$FD_CHECKLIST_DEFINITIONS_HOME/$slug"
    # if the definition already exists, edit that instead
    if test -e $target_path
        set -U FD_CHECKLIST_CURRENT_DEFINITION "$target_path"
    else
        touch $target_path
    end

    chkl_editdef
end
