" Vim syntax file
" Language:   Homebrew Formula
" Maintainer: Xu Cheng <xucheng@me.com>
" URL:        https://github.com/xu-cheng/brew.vim
" ----------------------------------------------------------------------------

if exists("b:current_syntax")
  finish
endif

" Load ruby syntax
source $VIMRUNTIME/syntax/ruby.vim
unlet b:current_syntax

" Load git syntax into @Git
syn include @Git $VIMRUNTIME/syntax/git.vim

" Link __END__ block to git syntax
syn region brewPatch matchgroup=rubyDataDirective start="^__END__$" end="\%$" contains=@Git, brewPatch fold

let b:current_syntax = "brew"

" vim: nowrap sw=2 sts=2 ts=8 noet:
