local Hamming = {}

function Hamming.compute(a,b)
    local count = -1
    if #a ~= #b then
        error("strands must be of equal length")
    end
    count = 0
    for i = 1, #a do
        local a_c = a:sub(i, i)
        local b_c = b:sub(i, i)
        if a_c ~= b_c then
            count = count + 1
        end
    end
    return count
end

return Hamming
