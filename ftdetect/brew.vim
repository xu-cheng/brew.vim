" Vim filetype plugin
" Language:   Homebrew Formula
" Maintainer: Xu Cheng <xucheng@me.com>
" URL:        https://github.com/xu-cheng/brew.vim
" ----------------------------------------------------------------------------

function! s:isFormula()
  for i in range(1, line('$'))
    if !empty(matchstr(getline(i), 'class \S\+ *< *Formula'))
      return 1
    endif
  endfor
  return 0
endfunction

function! s:setFileType()
  set filetype=ruby
  if s:isFormula()
    set syntax=brew
  endif
endfunction

augroup brew_formula_file_detect
  autocmd!
  autocmd BufNewFile,BufRead *.rb call s:setFileType()
augroup END

" vim: nowrap sw=2 sts=2 ts=8 noet:
