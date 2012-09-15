InputTag.vim
============

[InputTag-vim](https://github.com/kobabasu/inputtag-vim) vim script that will convert CSV and TSV data to input tag.

Installation
------------

[pathogen.vim](https://github.com/tpope/vim-pathogen) installation is recommended.
Copy and paste it.

    cd ~/.vim/bundle
    git clone git://github.com/kobabasu/inputtag-vim.git


Command
-----

    :InputTag

How to use
-----

Select these lines in visual mode.

    type,name,value,size,required
    text,name,enter your name,30
    your personal data
    text,zip, ,10,true
    text,products,,20

Select the CSV header as the first line.
The each fields of the first line turn to be the attributes.

Enter the command as below.

    :InputTag

these lines will convert as followed

    <input type="text" name="name" value="enter your name" size="30">
    your personal data
    <input type="text" name="zip" size="10" required>
    <input type="text" name="products" size="20">

* Empty fields and spaces should be skipped automatically.
* Attribute words such as 'required', 'disabled'... will be inserted as Abbreviations if a word is inserted into end of tag.
* IT won't be converted without 2 or more delimiters.

You can change delimiter. add this to your vimrc:

    let g:inputtag_delimiter = '\t'
