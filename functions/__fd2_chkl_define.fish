function __fd2_chkl_define --description 'creates a new definition of a checklist' 
  set -l slug (fd2_to_slug "$argv")
  echo slug is $slug
  set -l target_path "$fd2_checklist_definitions_home/$slug.md"
  echo path is $target_path
    # if the definition already exists, edit that instead
    if test -e $target_path
        set -U fd2_checklist_current_definition "$target_path"
    else
        touch $target_path
    end

    __fd2_chkl_editdef
end
