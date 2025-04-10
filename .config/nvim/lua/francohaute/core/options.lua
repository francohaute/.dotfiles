vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.wrap = false
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.backspace = "indent,eol,start"
opt.swapfile = false
opt.scrolloff = 8
opt.isfname:append("@-@")
opt.updatetime = 50
opt.colorcolumn = "80"

local ok, _ = pcall(vim.cmd, 'colorscheme habamax')
if not ok then
  vim.cmd 'colorscheme default' -- if the above fails, then use default
end
