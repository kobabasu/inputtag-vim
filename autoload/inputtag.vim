" Vim global plugin for generate input tag
" Last Change:	2012 Sep 12
" Maintainer:	Keiji Kobayashi <keiji@seeknetusa.com>
" License:	This file is placed in the public domain.

function! inputtag#Inputtag(first,last) range
  let d = exists('g:inputtag_delimiter') ? g:inputtag_delimiter : '\t'
  let s:abbr = 'disabled,autofocus,readonly,required,async'

  let s:head = split(getline(a:first),d)

  let n = a:firstline + 1
  while n <= a:last
    let raw = getline(n)

    if match(raw,d,0,2) != -1
        let line = split(raw,d)
        let tag = GenerateTag(line)
        call setline(n,tag)
    endif

    let n = n + 1
  endwhile

  exe a:firstline . "d"
endfunction

function! GenerateTag(ln)
    let tag = '<input '
    let tail = ' '
    let i = 0

    while i < len(s:head)
      if exists('a:ln[i]') && a:ln[i] !~ '^$\|^\s\+$'
        if match(s:abbr,s:head[i]) == -1
          let tag = tag . s:head[i] . '="' . a:ln[i] . '" '
        else
          let tail = tail . s:head[i] . ' '
        endif
      endif

      let i = i + 1
    endwhile

    let tail = substitute(tail,' $','','g')
    let tag = substitute(tag,' $','','g') . tail . '>'
    return tag
endfunction
