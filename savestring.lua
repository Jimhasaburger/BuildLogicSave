local charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789#$"

local function encode(i)
    return
        charset:sub(( i       & 63) + 1, ( i       & 63) + 1) ..
        charset:sub(((i >> 6) & 63) + 1, ((i >> 6) & 63) + 1) ..
        charset:sub(((i >> 12)& 63) + 1, ((i >> 12)& 63) + 1) ..
        charset:sub(((i >> 18)& 63) + 1, ((i >> 18)& 63) + 1)
end

local size = 256 
local function toIndex(x, y, z)
    return x + (y * size) + (z * size * size) + 1
end

local rotations = {
    PLUS_X = "E",
    MINUS_X = "M",
    PLUS_Y = "B",
    MINUS_Y = "D",
    PLUS_Z = "A",
    MINUS_Z = "o",
}

local function encoderotation(rot)
    return rotations[rot] or "E"
end

function wire(fromcid, fromwid, tocid, towid, external)
	base = "^"
	outputid = fromcid
	outputworldid = fromwid
	base2 = base .. outputid .. outputworldid
	if external then
		base2withsymbol = base2 .. "_"
	else
		base2withsymbol = base2 .. "-"
	end
	inputid = tocid
	worldid = towid
	base3 = base2withsymbol .. inputid .. worldid
	return base3
end

print("Wire: " .. wire(1,1,2,2,true))

function savepart(bid,x,y,z,rot,r,g,b,material)
	encodedposition = encode(toIndex(x - 1,y,z))
	encodedrotation = encoderotation(rot)
	encodedcolor = encode(toIndex(r,g,b))
	if material then
		save = bid .. encodedposition .. encodedrotation .. encodedcolor .. material
	else
		save = bid .. encodedposition .. encodedrotation .. encodedcolor
	end
	return save
end

print("block: " .. savepart("G",0,0,0,"PLUS_X",0,0,0))

print("Full save:")
print(savepart("u",0,0,0,"PLUS_X",0,0,0) .. wire(1,1,1,2,true) .. ";" .. savepart("#C",2,0,0,"PLUS_X",0,255,0) .. "=2")
