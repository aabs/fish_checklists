# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 118
function chkl_spawn --description 'creates an instance of the checklist' --argument definition_path
	set -l name (basename $definition_path)
    set -l ts (date +"%Y%m%d%H%M")
    set -l slug (to_slug "$ts-$name")
    set -l target_path "$FD_CHECKLIST_INSTANCES_HOME/$slug"

    # if the definition already exists, edit that instead
    if not test -e $target_path
        cp "$definition_path" "$target_path"
    end

    _chkl_select_inst "$target_path"
    chkl_edit $FD_CHECKLIST_CURRENT_CHECKLIST
end
