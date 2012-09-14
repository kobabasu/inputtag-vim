if exists('g:loaded_inputtag')
  finish
endif
let g:loaded_inputtag = 1

command! -nargs=? -range=% InputTag :call inputtag#InputTag(<line1>,<line2>)
