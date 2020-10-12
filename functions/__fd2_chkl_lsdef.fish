function __fd2_chkl_lsdef
    set results (fd2_find -r "$fd2_checklist_definitions_home" -p '*.md')
    set ctr 1
    for r in $results
        echo -e "$ctr\t"(basename $r)
        set ctr (math $ctr + 1)
    end
end
