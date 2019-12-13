"" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8', 'pylint']
"" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']

set tabstop=4
set softtabstop=4
set shiftwidth=4
""set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8
