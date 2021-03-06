"===============================================================================
" Allow renaming of files within vim buffer
"===============================================================================
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec  ':saveas ' . new_name
        exec  ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <Leader>r :call RenameFile()<CR>
