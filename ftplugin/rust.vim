let cwd = expand('<sfile>:p:h:h')

if has("win16") || has("win32") || has("win64") || has("win95")
    let cnf = fnamemodify(cwd."\\ctags\\ctags.rust", ':p')
else
    let cnf = fnamemodify(cwd."/ctags/ctags.rust", ':p')
endif

let g:tagbar_type_rust = {
            \ 'kinds':[
            \ 'f:functions',
            \ 'T:types',
            \ 'g:enum',
            \ 's:structures',
            \ 'm:modules',
            \ 'c:consts',
            \ 't:traits',
            \ 'i:impls',
            \ 'd:macros'
            \ ],
            \ 'sro': '::',
            \ 'kind2scope': {
            \   's': 'structures',
            \   'm': 'modules'
            \ },
            \ 'scope2kind': {
            \   'structures': 's',
            \   'modules': 'm'
            \ },
            \ 'deffile': cnf,
            \}
