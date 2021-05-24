local Terminal = require('nvim-terminal').Terminal
local Window = require('nvim-terminal').Window

local window = Window:new({
	pos = 'botright',
	split = 'sp',
	width = 50,
	height = 15
})
terminal = Terminal:new(window)
