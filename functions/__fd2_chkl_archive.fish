function __fd2_chkl_archive --description 'select an active checklist for archival'
  fd2_select_file -r "$fd2_checklist_instances_home" -p '*.md'
  if set -q fd2_selected_item
    __fd2_chkl_archive_inst $fd2_selected_item
  end
end

#  vim: set ts=2 sw=2 tw=80 et foldmethod=syntax foldlevelstart=20 :
