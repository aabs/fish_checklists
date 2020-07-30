function __fd2_chkl_archiveall --description 'archive all active checklists'
  for inst in (fd2_find $fd2_checklist_instances_home "*.md")
    __fd2_chkl_archive_inst $inst
  end
end

