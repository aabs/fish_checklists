function __fd2_chkl_find --argument name_pattern
  __fd2_select_from_find $fd2_checklist_instances_home $name_pattern
  if test $status -eq 0
    __fd2_chkl_edit
  end
end
