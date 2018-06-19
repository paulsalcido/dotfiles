function! basic#MyOpenCommandSplit(command, name, myft)
    " Get the command text
    let data = system(a:command)

    let data_wnr = bufwinnr(a:name)
    if data_wnr != -1
        execute data_wnr . "wincmd w"
    else
        execute "vsplit " . a:name
    endif

    normal! ggdG
    execute ":setlocal filetype=" . a:myft
    setlocal buftype=nofile

    call append(0, split(data, '\v\n'))
    normal! gg
endfunction
