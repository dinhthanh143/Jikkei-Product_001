--!strict
--[[
	Janitor.lua
	Lightweight Janitor for connection and instance cleanup.
	Ensures every connection/instance is cleaned up on teardown.
]]

export type Janitor = {
	Add: (self: Janitor, item: RBXScriptConnection | Instance, key: string?) -> (),
	Clean: (self: Janitor) -> (),
	Destroy: (self: Janitor) -> (),
}

type JanitorPrivate = Janitor & {
	_items: { [string | number]: RBXScriptConnection | Instance },
	_nextKey: number,
}

local function disconnect(value: RBXScriptConnection | Instance): ()
	if typeof(value) == "RBXScriptConnection" then
		value:Disconnect()
	elseif typeof(value) == "Instance" then
		value:Destroy()
	end
end

local JanitorMt = {}
JanitorMt.__index = JanitorMt

function JanitorMt:Add(item: RBXScriptConnection | Instance, key: string?): ()
	local private = self :: JanitorPrivate
	local k = key or private._nextKey
	if private._items[k] then
		disconnect(private._items[k])
	end
	private._items[k] = item
	if not key then
		private._nextKey += 1
	end
end

function JanitorMt:Clean(): ()
	local private = self :: JanitorPrivate
	for _, v in pairs(private._items) do
		disconnect(v)
	end
	table.clear(private._items)
	private._nextKey = 1
end

function JanitorMt:Destroy(): ()
	(self :: JanitorPrivate):Clean()
end

local function new(): Janitor
	local self = {
		_items = {} :: { [string | number]: RBXScriptConnection | Instance },
		_nextKey = 1,
	}
	setmetatable(self, JanitorMt)
	return self :: Janitor
end

return {
	new = new,
}
