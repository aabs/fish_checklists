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

alias cks="__fd2_chkl_start -p '*.md'"

#  vim: set ts=2 sw=2 tw=80 et foldmethod=syntax foldlevelstart=20 : 
