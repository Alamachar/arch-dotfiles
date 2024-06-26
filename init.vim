" Configuracion de Neovim
set encoding=utf-8  " Configurar la codificación del archivo como UTF-8

" Habilitar la compatibilidad con terminales modernas
if has('termguicolors')
    set termguicolors
endif

" Plugins y gestor de plugins (vim-plug)
call plug#begin('~/.config/nvim/plugged')
Plug 'Pocco81/Catppuccino.nvim'
Plug 'tpope/vim-surround'          " Plugin para manipulación rápida de paréntesis y otros delimitadores
Plug 'dense-analysis/ale'          " Plugin para resaltado de sintaxis y sugerencias de corrección
Plug 'scrooloose/nerdtree'         " Plugin para un explorador de archivos similar a Visual Studio Code
Plug 'ryanoasis/vim-devicons'      " Plugin para poner iconos al explorador de archivos

" Pagina de inicio
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'startup-nvim/startup.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" ---
Plug 'SirVer/ultisnips'

call plug#end()

" Configuracion basica
set number           " Mostrar números de línea
set expandtab        " Utilizar espacios en lugar de tabulaciones
set tabstop=4        " Tamaño de la tabulación
set shiftwidth=4     " Tamaño del desplazamiento al presionar Tab
set autoindent       " Auto-indentar nuevas líneas
set nowrap           " No envolver líneas
set noswapfile       " No crear archivos de intercambio
set undofile         " Guardar historial de cambios
set mouse=a          " Habilitar clic del ratón

" Configuracion de la apariencia
syntax enable                 " Habilitar resaltado de sintaxis
let g:NERDTreeShowHidden = 1  " Ver archivos ocultos
set background=dark           " Seleccionar modo oscuro
colorscheme catppuccin-mocha  " Seleccionar esquema de colores

" Atajos de teclado
nnoremap <C-s> :w<CR>        " Guardar el archivo con Ctrl + S
nnoremap <C-w> :q<CR>        " Cerrar el archivo con Ctrl + W
nnoremap <C-j> :tabnext<CR>  " Cambiar a la siguiente pestaña con Ctrl + J
nnoremap <C-k> :tabprev<CR>  " Cambiar a la pestaña anterior con Ctrl + K
nnoremap <C-q> :q!<CR>       " Cerrar Neovim sin guardar cambios con Ctrl + Q
nnoremap <C-t> :tabnew<CR>
nnoremap <C-x> :terminal<CR>
nnoremap <silent> <C-h> :tabnew ./config/nvim/help.txt<CR>


" Definir <leader> como la tecla º
let mapleader = "º"

" Configuracion de NERDTree
map <C-n> :NERDTreeToggle<CR>  " Mostrar/ocultar NERDTree con Ctrl + N


" Mostrar pantalla inicial
lua << EOF
require("startup").setup({theme = "dashboard"})
EOF