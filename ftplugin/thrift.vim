let cwd = expand('<sfile>:p:h:h')

if has('win16') || has('win32') || has('win64') || has('win95')
  let cnf = fnamemodify(cwd."\\ctags\\thrift.cnf", ':p')
else
  let cnf = fnamemodify(cwd."/ctags/thrift.cnf", ":p")
endif

let g:tagbar_type_thrift = {
      \ 'ctagstype': 'thrift',
      \ 'kinds': [
        \ 'e:enum:0:1',
        \ 's:struct:0:1',
        \ 'S:service:0:1',
        \ ],
        \ 'sro': '.',
        \ 'deffile': cnf,
      \ }
