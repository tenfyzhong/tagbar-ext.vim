let cwd = expand('<sfile>:p:h:h')

if has("win16") || has("win32") || has("win64") || has("win95")
    let ctags_bin = fnamemodify(cwd."\\bin\\markdown2ctags.py", ':p')
else
    let ctags_bin = fnamemodify(cwd."/bin/markdown2ctags.py", ':p')
endif

if empty(ctags_bin)
    finish
endif

let g:tagbar_type_markdown = {
            \'ctagstype': 'markdown',
            \ 'ctagsbin' : ctags_bin,
            \ 'ctagsargs' : '-f - --sort=yes',
            \ 'kinds' : [
            \     's:sections',
            \     'i:images',
            \     '?:unknown',
            \   ],
            \ 'sro' : '|',
            \ 'kind2scope' : {
            \     's' : 'section',
            \   },
            \ 'sort': 0,
            \ }
