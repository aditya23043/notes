<style>
*{
    font-family: "VictorMono NFM";
    font-weight: Bold;
}
</style>

# LUA Tutorial

## File Handling

### Writing to a file

```lua
io.output("randomFile.hs")
io.write("Hello World!")
io.close()
```

> [!NOTE]
> This will overwrite the contents of the file

### Reading from a file

```lua
io.input("randomFile.hs")
local fileData = io.read("*all")
print(fileData)
io.close()
```

### General Approach

- This method is preferred over the previous two
- Writing to a file

```lua
local file = io.open("randomFile.hs", "w")
if file ~= nil then
    file:write("Something random")
    file:close()
else
    print("Could not open file")
end
```

- Reading from a file

```lua
local file = io.open("randomFile.hs", "r")
if file ~= nil then
    print(file:read("*all"))
    print(file:read("*line"))
    file:close()
else
    print("Could not open file")
end
```

- Append to a file
  - Just change the mode to _a_ (append) and write to the file like above

> [!NOTE] > \<modes\> can be : _w_ (write) OR _r_ (read) OR _a_ (append)

## Modules

- Both are the same thing

```lua
Mod = {
    sum = function(x,y)
        return x + y
    end
}
```

```lua
function Mod.sum(x,y)
    return x + y
end
```

- But, how to use this in another file?

```lua
local something = require("custom")
print(something.sum(10,6))
```

> Output: 16

## Object Oriented Programming

```lua
local function something(name)
	local private_attribute = true

	return {
		name = name or "Default name",
		age = 10,
		hello = function()
			print("Hello from " .. name .. "!")
		end,
		bye = function(self)
			print("Bye from " .. self.name .. "!")
		end,
	}
end

local foo = something("demn")
local bar = something()

print(foo.name)
print(bar.name)

-- Inheritance
local function somethingelse(name)
	local temp = something(name)
	temp.sem = 3
	temp.cgpa = 8

	return temp
end

local bruv = somethingelse("Inheritance")

print()
print(bruv.name)
print(bruv.age)
print(bruv.sem)
print(bruv.cgpa)
print(bruv.hello())
print(bruv:bye())
```
