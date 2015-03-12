" Default ag executable path
let s:exe  = '/usr/local/bin/ag'

" Last command
let s:last = ''

function! s:remove(args, name)
    return substitute(a:args, '\s\{}' . a:name . '\(=\S\{}\)\?', '', 'g')
endfunction

function! s:cmd(args)
    let cmd  = has_key(g:, 'ags_agexe') ? g:ags_agexe . ' ' : s:exe
    let args = a:args

    for [ key, arg ] in items(g:ags_agargs)
        let value = arg[0]
        let short = arg[1]
        let args  = s:remove(args, key)
        let args  = empty(short) ? args : s:remove(args, short)

        if value =~ '^g:'
            let value = substitute(value, '^g:', '', '')
            let value = has_key(g:, value) ? g:[value] : arg[2]
        endif

        let op   = empty(value) ? '' : '='
        let cmd .= ' ' . key . op . value
    endfor

    let cmd    = cmd . ' ' . args
    let s:last = cmd

    return cmd
endfunction

" Runs an ag search with the given {args}
"
function! ags#run#ag(args)
    return system(s:cmd(a:args))
endfunction

" Returns the last ag command executed
"
function! ags#run#getLastCmd()
    return s:last
endfunction