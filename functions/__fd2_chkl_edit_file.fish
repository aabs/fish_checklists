function __fd2_chkl_edit_file -a filepath -d "open the file in the editor"
      if set -q EDITOR
        eval "$EDITOR $filepath"
      else
        eval "vim $filepath"
      end
  end

