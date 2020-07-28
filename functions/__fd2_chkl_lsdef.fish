function __fd2_chkl_lsdef
        set results (__fd2_find $fd2_checklist_definitions_home "*.md")
        set ctr 1
        for r in $results
                echo -e "$ctr\t(basename $r)"
                set ctr (math $ctr + 1)
        end
end
