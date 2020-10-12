# Defined in /home/d235108/.config/fishdots/plugins/fishdots_checklist/init/rc1.d/01-functions.fish @ line 118
function __fd2_chkl_spawn --description 'creates an instance of the checklist' --argument definition_path
    set -l name (basename $definition_path)
    set -l ts (date +"%Y%m%d%H%M")
    set -l slug (fd2_to_slug "$ts-$name")
    set -l target_path "$fd2_checklist_instances_home/$slug"

    # if the definition already exists, edit that instead
    if not test -e $target_path
        echo cp "$definition_path" "$target_path"
        cp "$definition_path" "$target_path"
    end

    __fd2_chkl_select_inst "$target_path"
    __fd2_chkl_edit $fd2_checklist_current_checklist
end
