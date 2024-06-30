--[[
    this is some truly god awful code.

    reminder: stop commiting untested fucking code 
]]--

return function(inst: Instance): string
    local path = {}

    local nextInst = inst.Parent

    while true do
        local parent = nextInst.Parent
        if not parent then break end
        if inst == game then break end

        table.insert(path, nextInst.Name)

        nextInst = parent
    end

    local pathString = ""

    for i = #path, 1, -1 do
        pathString ..= path[i] .. "."
    end

    pathString ..= inst.Name

    return pathString
end
