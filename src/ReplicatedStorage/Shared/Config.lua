--!strict
--[[
	Config.lua
	Global constants shared across server and client.
	Single source of truth for round time, player counts, currency, etc.
]]

export type ConfigType = {
	ROUND_TIME_SECONDS: number,
	MIN_PLAYERS: number,
	MAX_PLAYERS: number,
	CURRENCY_NAME: string,
}

local Config: ConfigType = {
	ROUND_TIME_SECONDS = 300,
	MIN_PLAYERS = 2,
	MAX_PLAYERS = 12,
	CURRENCY_NAME = "Coins",
}

return Config
