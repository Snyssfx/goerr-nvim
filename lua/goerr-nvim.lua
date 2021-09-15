local v = vim.v
local fn = vim.fn

local goerr = {}

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
            l = string.gsub(l, "return ", "")
            l = string.gsub(l, "errors%.", "ε")
            l = string.gsub(l, "fmt%.", "ϕ")
            l = string.gsub(l, "log%.", "λ")
            l = string.gsub(l, "logger%.", "λ")
            l = string.gsub(l, "can't ", "c'")
            l = string.gsub(l, "cannot ", "c'")
            l = string.gsub(l, "couldn't ", "c'")
            l = string.gsub(l, "can not ", "c'")
            l = string.gsub(l, '"', '')

            if #l > 27 then l = string.sub(l, 0, 27) .. '...' end
            result = result .. l
        end
    end

    result = "ifer: " .. result
    for i = 1, v.foldlevel-1, 1 do
        for j = 1, vim.o.softtabstop, 1 do
            result = " "..result
        end
    end
    return result
end

return goerr
