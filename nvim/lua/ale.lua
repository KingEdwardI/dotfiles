vim.cmd([[
let g:ale_fixers = { '*' : ['remove_trailing_lines', 'trim_whitespace'], 'javascript' : ['prettier', 'eslint'] }
]]) 
