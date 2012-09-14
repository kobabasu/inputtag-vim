InputTag.vim
============

[InputTag-vim](https://github.com/kobabasu/inputtag-vim) vimscript for converting csv, tsv to input tag.

Installation
------------

I recommend installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and then simply copy and paste:

    cd ~/.vim/bundle
    git clone git://github.com/kobabasu/inputtag-vim.git


Command
-----

    :Inputtag

Use Case
-----

Select lines like this, in visual mode.

    type,name,value,size,required
    text,name,enter your name,30
    your personal data
    text,zip, ,10,true
    text,products,,20

First line must be a header. each fields of first line become to attributes.

then enter

    :InputTag

to change lines to

    <input type="text" name="name" value="enter your name" size="30">
    your personal data
    <input type="text" name="zip" size="10" required>
    <input type="text" name="products" size="20">

empty fields or include just space fields were ignored.
attribute can be omitted like 'required', 'disabled', etc... were omitted if fill out field by anyword.
the line not include at least two delimiter was not converted.

You can change delimiter. add this to your vimrc:

    let g:inputtag_delimiter = '\t'
