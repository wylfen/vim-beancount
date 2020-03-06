if exists('b:did_ftplugin')
    finish
endif

let b:did_ftplugin = 1
let b:undo_ftplugin = 'setlocal foldmethod< comments< commentstring<'

setl foldmethod=syntax
setl comments=b:;
setl commentstring=;%s
compiler beancount

" This variable customizes the behavior of the AlignCommodity command.
if !exists('g:beancount_separator_col')
    let g:beancount_separator_col = 50
endif
if !exists('g:beancount_account_completion')
    let g:beancount_account_completion = 'default'
endif
if !exists('g:beancount_detailed_first')
    let g:beancount_detailed_first = 0
endif

command! -buffer -range AlignCommodity
            \ :call beancount#align_commodity(<line1>, <line2>)

command! -buffer -range GetContext
            \ :call beancount#get_context()

command! -nargs=? -buffer FetchPrice
            \ :call beancount#fetch_price(<f-args>)

" Omnifunc for account completion.
setl omnifunc=beancount#complete
