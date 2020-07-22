function __fd2_chkl_archive --description 'select an active checklist for archival'
  __fd2_select_file $fd2_checklist_instances_home "*.md"
  if set -q fd2_selected_item
    __fd2_chkl_archive_inst $fd2_selected_item
  end
end

#  vim: set ts=2 sw=2 tw=80 et foldmethod=syntax foldlevelstart=20 :
