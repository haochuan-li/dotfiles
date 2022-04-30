if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    },
  rainbow = {
      -- colors = { "#bf616a", "#d08770", "#ebcb8b", "#a3be8c", "#88c0d0", "#5e81ac", "#b48ead" },                                                                                              
      enable = true,                                                                                                                                                                         
      extended_mode = true,                                                                                                                                                                 
      -- loaded = true,                                                                                                                                                                         
      -- max_file_lines = 2500,                                                                                                                                                                 
      max_file_lines = nil,
      -- module_path = "rainbow.internal"  
    },
  incremental_selection = { 
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
      },
    },
  indent = {
    enable = true,
    disable = {"python", },
    },
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "html",
    "scss",
    "cpp",
    "python",
    "javascript",
    "java",
    "go",
    "vim",
    "vue"
    },
  autotag = {
    enable = true,
    },
  }
EOF
