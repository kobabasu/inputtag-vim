if exists('g:loaded_inputtag')
  finish
endif
let g:loaded_inputtag = 1

command! -range -nargs=* InputTag :call inputtag#InputTag(<q-args>,'>',<line1>,<line2>)
command! -range -nargs=* InputTagXs :call inputtag#InputTag(<q-args>,' />',<line1>,<line2>)
