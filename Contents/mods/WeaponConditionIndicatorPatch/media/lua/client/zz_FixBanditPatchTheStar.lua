if BanditPatches and BanditPatches.TheStar then
    -- TheStar.HandMainExtension.init() is called in OnCreatePlayer
    -- according to test, OnCreatePlayer is before OnGameStart
    -- but we need to run patch code before TheStar.HandMainExtension.init()
    Events.OnGameStart.Remove(BanditPatches.TheStar)
    BanditPatches.TheStar()
    BanditPatches.TheStar = function() end
end
