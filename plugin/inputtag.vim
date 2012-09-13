if exists('g:loaded_inputtag')
  finish
endif
let g:loaded_inputtag = 1

command! -nargs=? -range=% Inputtag :call inputtag#Inputtag(<line1>,<line2>)
