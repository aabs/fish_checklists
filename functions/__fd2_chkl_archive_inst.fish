function __fd2_chkl_archive_inst -a inst_path -d "archive selected file"
# TODO check the target exists and is a file
      mv $inst_path $fd2_checklist_archive_home
      echo (basename $inst_path) "archived"
  end
