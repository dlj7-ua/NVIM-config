return function()
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitGutterAdd'   , text = '│'},
    change       = {hl = 'GitGutterChange', text = '│'},
    delete       = {hl = 'GitGutterDelete', text = '_'},
    topdelete    = {hl = 'GitGutterDeleteChange', text = '‾'},
    changedelete = {hl = 'GitGutterChange', text = '~'},
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navegar entre hunks
    map('n', ']c', function() if vim.wo.diff then return ']c' end; gs.next_hunk() end, {expr=true})
    map('n', '[c', function() if vim.wo.diff then return '[c' end; gs.prev_hunk() end, {expr=true})

    -- Stage/reset hunk
    map('n', '<leader>hs', gs.stage_hunk)
    map('n', '<leader>hr', gs.reset_hunk)
    map('v', '<leader>hs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
    map('v', '<leader>hr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)

    -- Stage/reset buffer
    map('n', '<leader>hS', gs.stage_buffer)
    map('n', '<leader>hR', gs.reset_buffer)

    -- Preview hunk
    map('n', '<leader>hp', gs.preview_hunk)

    -- Blame
    map('n', '<leader>hb', gs.blame_line)
    map('n', '<leader>tb', gs.toggle_current_line_blame)

    -- Diff
    map('n', '<leader>hd', gs.diffthis)
    map('n', '<leader>hD', function() gs.diffthis('~') end)

    -- Toggle signs
    map('n', '<leader>ht', gs.toggle_signs)
    map('n', '<leader>hl', gs.toggle_linehl)
    map('n', '<leader>hn', gs.toggle_numhl)
  end
}
end
