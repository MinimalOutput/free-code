--[[
    ReceiptInfo given by MarketplaceService.ProcessReceipt, according to the docs @ https://create.roblox.com/docs/reference/engine/classes/MarketplaceService#ProcessReceipt.
    types inferred from code examples.
]]

export type MarketplaceServiceReceiptInfo = {
    PlayerId: number,
    PlaceIdWherePurchased: number,
    PurchaseId: string,
    ProductId: number,
    CurrencySpent: number,
    CurrencyType: Enum.CurrencyType, -- always Enum.CurrencyType.Robux
}

export type MarketplaceServiceProductInfo = {
    Name: string,
    Description: string,

    AssetId: number?,
    ProductId: number?,
    AssetTypeId: number,
    IconImageAssetId: number,
    
    Creator: {
        Id: number,
        Name: string,
        CreatorType: Enum.CreatorType,
    },

    Created: string, -- ISO 8601 format date string
    Updated: string, -- ISO 8601 format date string

    Sales: number,

    IsNew: boolean,
    IsLimited: boolean,
    IsForSale: boolean,
    IsLimitedUnique: boolean,
    
    Remaining: number?,
    PriceInRobux: number?,

    MinimumMembershipLevel: number, -- same as Enum.MembershipType.X.Value
    ContentRatingTypeId: number,
}

return false -- return something so roblox don't get cranky at me.