-- Commands
vim.cmd('set iskeyword+=-')                  --treat dash separated words as a word text object"
vim.cmd('set tabstop=2')                     --Insert 2 spaces for a tab
vim.cmd('set shiftwidth=2')                  --Insert 2 spaces for a tab
vim.cmd('set number')                        --Turn on line numbers
vim.cmd('set linebreak')                     --Soft wrap lines
vim.cmd('set breakindent showbreak=┕→')      --Show character for soft wrapped lines
vim.cmd('syntax on')

-- Global options
vim.o.hidden=true                            --Required to keep multiple buffers open multiple buffers
vim.o.mouse="a"                              --Enable your mouse
vim.o.splitbelow=true                        --Horizontal splits will automatically be below
vim.o.splitright=true                        --Vertical splits will automatically be to the right
vim.o.termguicolors=true
vim.o.t_Co="256"                             --Support 256 colors
vim.o.showmode=false                         --We don't need to see things like -- INSERT -- anymore
vim.o.updatetime=300                         --Faster completion
vim.o.timeoutlen=250                         --By default timeoutlen is 1000 ms

-- Buffer options
vim.bo.expandtab=true                        --Converts tabs to spaces
vim.bo.smartindent=true                      --Makes indenting smart

-- Window options
vim.wo.cursorline=true                       --Enable highlighting of the current line
vim.wo.signcolumn="yes"                      --Always show the signcolumn, otherwise it would shift the text each time
