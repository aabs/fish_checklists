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

fd2_define_command chkl "fishdots plugin for doing useful things with git"

fd2_define_subcommand chkl archive __fd2_chkl_archive "select and archive an active instance"
fd2_define_subcommand chkl archiveall __fd2_chkl_archiveall "archive all active instances"
fd2_define_subcommand chkl define __fd2_chkl_define "create new checklist and open in editor"
fd2_define_subcommand chkl edit __fd2_chkl_edit "edit the current checklist instance"
fd2_define_subcommand chkl editdef __fd2_chkl_editdef "edit the current checklist definition"
fd2_define_subcommand chkl find __fd2_chkl_find "find an active checklist"
fd2_define_subcommand chkl home __fd2_chkl_home "change to the checklist definitions folder"
fd2_define_subcommand chkl ls __fd2_chkl_ls "list active checklists"
fd2_define_subcommand chkl lsar __fd2_chkl_lsar "list inactive checklists"
fd2_define_subcommand chkl lsdef __fd2_chkl_lsdef "list checklist definitions"
fd2_define_subcommand chkl open __fd2_chkl_open "open for an active checklist for editing"
fd2_define_subcommand chkl openar __fd2_chkl_openar "open a archived checklist for editing"
fd2_define_subcommand chkl opendef __fd2_chkl_opendef "open a checklist definition for editing"
fd2_define_subcommand chkl start __fd2_chkl_start "select and start checklist and open in editor"
fd2_define_subcommand chkl tasks __fd2_chkl_nierr "list next task from active checklists"
fd2_define_subcommand chkl sync __fd2_chkl_sync "save changes and push to origin repo"

#  vim: set ts=2 sw=2 tw=80 et foldmethod=syntax foldlevelstart=20 : 
