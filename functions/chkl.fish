function chkl -d 'dispatcher for chkl functions'
    set l (count $argv)
    if test $l -eq 0
        chkl_help
        return
    end

    set myargv ''
    for x in $argv[2..10]
        switch $x
            case "* *"
                set myargv "$myargv \"$x\""
            case '*'
                set myargv "$myargv $x"
        end
    end

    switch $argv[1]
        case archive
            eval "__fd2_chkl_archive $myargv"
        case archiveall
            eval "__fd2_chkl_archiveall $myargv"
        case define
            eval "__fd2_chkl_define $myargv"
        case edit
            eval "__fd2_chkl_edit $myargv"
        case editdef
            eval "__fd2_chkl_editdef $myargv"
        case find
            eval "__fd2_chkl_find $myargv"
        case home
            eval "__fd2_chkl_home $myargv"
        case ls
            eval "__fd2_chkl_ls $myargv"
        case lsar
            eval "__fd2_chkl_lsar $myargv"
        case lsdef
            eval "__fd2_chkl_lsdef $myargv"
        case open
            eval "__fd2_chkl_open $myargv"
        case openar
            eval "__fd2_chkl_openar $myargv"
        case opendef
            eval "__fd2_chkl_opendef $myargv"
        case start
            eval "__fd2_chkl_start $myargv"
        case tasks
            eval "__fd2_chkl_nierr $myargv"
        case sync
            eval "__fd2_chkl_sync $myargv"

        case '*'
            chkl_help
    end

end

function chkl_help
    echo "usage: chkl <cmd> [<options>]"
    echo
    echo "chkl has various commands for creating and working with checklists:"
    echo
    echo "    archive    select and archive an active instance"
    echo "    archiveall archive all active instances"
    echo "    define     create new checklist and open in editor"
    echo "    edit       edit the current checklist instance"
    echo "    editdef    edit the current checklist definition"
    echo "    find       find an active checklist"
    echo "    home       change to the checklist definitions folder"
    echo "    ls         list active checklists"
    echo "    lsar       list inactive checklists"
    echo "    lsdef      list checklist definitions"
    echo "    open       open for an active checklist for editing"
    echo "    openar     open a archived checklist for editing"
    echo "    opendef    open a checklist definition for editing"
    echo "    start      select and start checklist and open in editor"
    echo "    tasks      list next task from active checklists"
    echo "    sync       save changes and push to origin repo"
    echo

end