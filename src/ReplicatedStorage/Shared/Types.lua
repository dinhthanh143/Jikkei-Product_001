--!strict
--[[
	Types.lua
	Shared type aliases for PlayerData, GameState, and other cross-boundary structures.
	Use in both server and client for consistent typing.
]]

export type PlayerData = {
	userId: number,
	displayName: string,
	currency: number,
	-- Extend as needed
}

export type GameState = "Lobby" | "InProgress" | "Intermission" | "GameOver"

export type RoundState = {
	phase: GameState,
	elapsedSeconds: number,
	playerCount: number,
}

-- Add more shared types as the project grows
return nil :: any
