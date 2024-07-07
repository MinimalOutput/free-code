-- https://create.roblox.com/docs/reference/engine/classes/Player#GetJoinData

export type PlayerJoinData = {
    SourcePlaceId: number,
    SourceGameId: number,
    Members: {number}, -- {[number]: UserId }
    TeleportData: any?, -- set in one of the various TeleportService methods.
    LaunchData: string?,
}

return false -- return something so roblox don't get cranky at me.