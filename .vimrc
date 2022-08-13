set background=dark

filetype plugin on
syntax on

set number
set relativenumber

set mouse=a
if $TERM == 'alacritty'
    set ttymouse=sgr
endif

set clipboard=unnamedplus,unnamed
autocmd Vimleave * call system("echo -n $'" . escape(getreg(), "'") . "' | xsel --input --clipboard")

