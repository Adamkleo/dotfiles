-- Define the colors table first
local colors = {
    red = true,
    orange = true,
    green = true,
    yellow = true,
    blue = true,
    magenta = true,
    cyan = true,
}

-- Create the command with the colors table defined
vim.api.nvim_create_user_command('Cycle', function(opts)
    if colors[opts.args] then
        vim.g.accent_colour = opts.args
        vim.cmd('colorscheme accent')
    else
        print("Invalid color: " .. opts.args .. ". Available: red, orange, green, yellow, blue, magenta, cyan, custom")
    end
end, { nargs = 1 })
