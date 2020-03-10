if exists('b:did_ftplugin')
    finish
endif

let b:did_ftplugin = 1
let b:undo_ftplugin = 'setlocal foldmethod< formatprg< comments< commentstring<'

setl foldmethod=syntax
setl formatprg=bean-format\ -c61
setl comments=b:;
setl commentstring=;%s
compiler beancount

if !exists('g:beancount_account_completion')
    let g:beancount_account_completion = 'default'
endif
if !exists('g:beancount_detailed_first')
    let g:beancount_detailed_first = 0
endif

command! -buffer -range GetContext
            \ :call beancount#get_context()

" Omnifunc for account completion.
setl omnifunc=beancount#complete
