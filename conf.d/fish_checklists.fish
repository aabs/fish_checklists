if not set -q fd2_checklist_home
  set -U fd2_checklist_home $HOME/.config/checklists
end

if not set -q fd2_checklist_definitions_home
  set -U fd2_checklist_definitions_home $fd2_checklist_home/checklist-definitions
end

if not set -q fd2_checklist_instances_home
  set -U fd2_checklist_instances_home $fd2_checklist_home/active-checklists
end

if not set -q fd2_checklist_archive_home
  set -U fd2_checklist_archive_home $fd2_checklist_home/inactive-checklists
end

if not set -q fd2_checklist_current_checklist
  set -U fd2_checklist_current_checklist $fd2_checklist_instances_home/startup.md
  echo -e "# welcome to fishdots checklist\n- [ ] checkout the docs\n" > $fd2_checklist_current_checklist
end

if not set -q fd2_checklist_current_definition
  set -U fd2_checklist_current_definition $fd2_checklist_definitions_home/my-first-checklist.md
  echo -e "# welcome to fishdots checklists\n- [ ] put your checklist items here\n" > $fd2_checklist_current_definition
end
  
# bind \cg "vi ~/.config/fish/config.fish"

# set -l name (basename (status -f) .fish){_uninstall}

# function $name --on-event $name
#     bind --erase \cg
# end

fd2_define_command -p chkl -d "fishdots plugin for doing useful things with git"

fd2_define_subcommand -p chkl -c archive -f __fd2_chkl_archive -d "select and archive an active instance"
fd2_define_subcommand -p chkl -c archiveall -f __fd2_chkl_archiveall -d "archive all active instances"
fd2_define_subcommand -p chkl -c define -f __fd2_chkl_define -d "create new checklist and open in editor"
fd2_define_subcommand -p chkl -c edit -f __fd2_chkl_edit -d "edit the current checklist instance"
fd2_define_subcommand -p chkl -c editdef -f __fd2_chkl_editdef -d "edit the current checklist definition"
fd2_define_subcommand -p chkl -c find -f __fd2_chkl_find -d "find an active checklist"
fd2_define_subcommand -p chkl -c home -f __fd2_chkl_home -d "change to the checklist definitions folder"
fd2_define_subcommand -p chkl -c ls -f __fd2_chkl_ls -d "list active checklists"
fd2_define_subcommand -p chkl -c lsar -f __fd2_chkl_lsar -d "list inactive checklists"
fd2_define_subcommand -p chkl -c lsdef -f __fd2_chkl_lsdef -d "list checklist definitions"
fd2_define_subcommand -p chkl -c open -f __fd2_chkl_open -d "open for an active checklist for editing"
fd2_define_subcommand -p chkl -c openar -f __fd2_chkl_openar -d "open a archived checklist for editing"
fd2_define_subcommand -p chkl -c opendef -f __fd2_chkl_opendef -d "open a checklist definition for editing"
fd2_define_subcommand -p chkl -c start -f __fd2_chkl_start -d "select and start checklist and open in editor"
fd2_define_subcommand -p chkl -c tasks -f __fd2_chkl_nierr -d "list next task from active checklists"
fd2_define_subcommand -p chkl -c sync -f __fd2_chkl_sync -d "save changes and push to origin repo"

#  vim: set ts=2 sw=2 tw=80 et foldmethod=syntax foldlevelstart=20 : 
