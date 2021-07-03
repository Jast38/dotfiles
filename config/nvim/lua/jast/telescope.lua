local telescope = require 'telescope'
local telescope_builtin = require 'telescope.builtin'
local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '!.git',
            '-u',
            '-u'
        },
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

require('telescope').load_extension('fzy_native')

local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "$HOME/.config",
    })
end

M.git_branches = function()
    require("telescope.builtin").git_branches({
        attach_mappings = function(_, map)
            map('i', '<c-d>', actions.git_delete_branch)
            map('n', '<c-d>', actions.git_delete_branch)
            return true
        end
    })
end

M.find_files = function()
  telescope_builtin.find_files {
    find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' },
  }
end

M.find_config_files = function()
  local config_dir ='/.config/'
  telescope_builtin.find_files {
    find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden', config_dir },
  }
end

M.file_browser = function()
  telescope_builtin.file_browser {
      hidden = 'True'
  }
end
return M

