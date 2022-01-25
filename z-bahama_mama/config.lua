print("Z-Bahama_Mama - Bahama Mama Job Script by Zaidi")


Config = {}

Config.BahamaMamaDuty = vector3(-1385.06, -591.36, 31.36) -- On duty location

Config.PayPerTicket = 50 -- How much a ticket it worth.

Config.DrinkItems = {
    label = "Drinks Storage",
    slots = 10,
    items = {
        [1] = { name = "cranberry", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
        [2] = { name = "schnapps", price = 0, amount = 50, info = {}, type = "item", slot = 2, },
        [3] = { name = "gin", price = 0, amount = 50, info = {}, type = "item", slot = 3, },
        [4] = { name = "scotch", price = 0, amount = 50, info = {}, type = "item", slot = 4, },
        [5] = { name = "rum", price = 0, amount = 50, info = {}, type = "item", slot = 5, },
        [6] = { name = "icream", price = 0, amount = 50, info = {}, type = "item", slot = 6, },
        [7] = { name = "amaretto", price = 0, amount = 50, info = {}, type = "item", slot = 7, },
        [8] = { name = "curaco", price = 0, amount = 50, info = {}, type = "item", slot = 8, },
        [9] = { name = "vodka", price = 0, amount = 50, info = {}, type = "item", slot = 9, },
        [10] = { name = "chocolate", price = 0, amount = 50, info = {}, type = "item", slot = 10, },
    }
}

Config.ShowPolys = false