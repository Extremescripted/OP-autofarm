-- place id
if game.PlaceId == 3101667897 then


    -- library
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    
    -- values
    _G.orbCity = true
    _G.orbSnow = true
    _G.orbMagma = true
    _G.orbLegend = true
    _G.diamondCity = true
    _G.diamondSnowCity = true
    _G.diamondMagmaCity = true
    _G.autoRebirth = true
    _G.autoHatch = true
    _G.diamondLegend = true
    -- functions
    
    function orbCity()
    while _G.orbCity == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Red Orb","City")
    wait(0.00000001)
    end
    end

    function orbLegend()
    while _G.orbLegend == true do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Red Orb","Legends Highway")
    wait(0.00000001)
    end
    end

    function diamondLegend()

    while _G.diamondLegend == true do
    
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Gem","Legends Highway")
    wait(0.000000001)
    end
    end

    function diamondCity()

    while _G.diamondCity == true do
    
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Gem","City")
    wait(0.000000001)
    end
    end

    function diamondSnow()

    while _G.diamondSnowCity == true do
        
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Gem","Snow City")
    wait(0.000000001)
    end
    end

    function diamondMagma()

    while _G.diamondMagmaCity == true do
            
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Gem","Magma City")
    wait(0.000000001)
    end
    end

    function orbSnow()
	while _G.orbSnow == true do
        game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Red Orb","Snow City")
        wait(0.000000001)
    
    end
    end

    function orbMagma()
        while _G.orbMagma == true do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
            wait(0.000000001)
        
        end
        end

    function autoRebirth()
        while _G.autoRebirth == true do
        game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
        wait(0.00000001)
    end
    end

    function autoHatch()
    while _G.autoHatch == true do
    
    end
    end
    
    -- window
    local Window = OrionLib:MakeWindow({Name = " Easy Hacks | Legends Of Speed ⚡  ", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
    
    -- city tab
    local CityFarm = Window:MakeTab({
        Name = "City | 🏢",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    
    -- city orbs toggles
    
    CityFarm:AddToggle({
        Name = "Orb Auto Farm",
        Default = false,
        Callback = function(Value)
            _G.orbCity = Value
            orbCity()
        end    
    })

    CityFarm:AddToggle({
        Name = "Diamond Auto Farm",
        Default = false,
        Callback = function(Value)
            _G.diamondCity = Value
            diamondCity()
        end    
    })

    -- snow city tab
    local SnowFarm = Window:MakeTab({
        Name = "Snow | ⛄",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- snow city toggles
    SnowFarm:AddToggle({
	Name = "Orb Auto Farm",
	Default = false,
	Callback = function(Value)
		_G.orbSnow = Value
		orbSnow()
	end    
    })

    SnowFarm:AddToggle({
    Name = "Diamond Auto Farm",
        Default = false,
        Callback = function(Value)
            _G.diamondSnowCity = Value
            diamondSnow()
        end    
        })
    


    -- magma city tab
    local MagmaFarm = Window:MakeTab({
        Name = "Magma | 🌋",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    
    -- magma city toggles
    
    MagmaFarm:AddToggle({
        Name = "Orb Auto Farm",
        Default = false,
        Callback = function(Value)
            _G.orbMagma = Value
            orbMagma()
        end    
    })

    MagmaFarm:AddToggle({
        Name = "Diamond Auto Farm",
        Default = false,
        Callback = function(Value)
            _G.diamondMagmaCity = Value
            diamondMagma()
        end    
    })

    -- legends highway tab
    local LegendFarm = Window:MakeTab({
        Name = "Highway | 🛣️",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- legends highway toggles
        LegendFarm:AddToggle({
        Name = "Orb Auto Farm",
        Default = false,
        Callback = function(Value)
            _G.orbLegend = Value
            orbLegend()
        end    
    })

    LegendFarm:AddToggle({
        Name = "Diamond Auto Farm",
        Default = false,
        Callback = function(Value)
            _G.diamondLegend = Value
            diamondLegend()
        end    
    })

    

    -- misc tab
    local Misc = Window:MakeTab({
        Name = "Misc | 💿 ",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- misc toggles
    Misc:AddToggle({
        Name = "Auto Rebirth",
        Default = false,
        Callback = function(Value)
            _G.autoRebirth = Value
            autoRebirth()
        end    
    })

    --credits tab
    local creds = Window:MakeTab({
        Name = "Credits | 🐐",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    --credits labels

    creds:AddLabel("Made By ozymandias#2114")

    -- finish
    end
    
    OrionLib:Init()
