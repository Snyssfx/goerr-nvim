local api = vim.api
local v = vim.v
local fn = vim.fn
local buf, win

function _G.GoErrFoldTxt(bufnr)
    local lines = fn.getbufline(bufnr, v.foldstart, v.foldend-1)

    if string.find(lines[1], "^%s*if err != nil {") == nil then
        return vim.api.nvim_eval('foldtext()')
    end

    local result = ""
    for i, l in ipairs(lines) do
        if i ~= 1 then
            if i ~= 2 then result = result .. "; " end
            l = string.gsub(l, "^%s*", "")
            l = string.gsub(l, "return", "")
            if #l > 27 then l = string.sub(l, 0, 27) .. '...' end
            
            result = result .. l
        end
    end
    result = "if err: " .. result
    for i = 0, v.foldlevel do
        result = "\t"..result
    end
    return ' ' .. result

end

-- print(GoErrFoldTxt(10, 7, 9, "..."))
-- print(GoErrFoldTxt(10, 11, 14, "..."))
