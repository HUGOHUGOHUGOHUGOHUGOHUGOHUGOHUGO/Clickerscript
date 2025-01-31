-- carregar biblioteca 
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- aviso ao executar
Fluent:Notify({ Title = "Carro Roxo Executando!", Content = "Executando Com Sucesso" })


local Window = Fluent:CreateWindow({
    Title = "CARRO ROXO" .. Fluent.Version,
    TabWidth = 160, 
    Size = UDim2.fromOffset(580, 460), 
    Theme = "Dark"
})

local Tabs = {
    Main = Window:AddTab({ Title = "Começo" }),
    Player= Window:AddTab({ Title = "Jogador" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
-- para grafos
Tabs.Main:AddParagraph({ Title = "Main", Content = "Aqui tem Farms" })

-- botões 
Tabs.Player:AddButton({ Title = "infinite jump", Callback = function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/HeyGyt/infjump/main/main"))()
end })

-- alterador 
local Toggle = Tabs.Main:AddToggle("autofarm", 
{
    Title = "autofarm", 
    Description = "clickes",
    Default = false, -- esse "," e preciso coloque em qualquer situaÃ§Ã£o 
    Callback = function(state)
	if state then
	    Fluent:Notify({ Title = "autofarm ligado", Content = "ligado" })
	else
	    Fluent:Notify({ Title = "desligando", Content = "desligando" })
        end
    end 
})

local Toggle = Tabs.Player:AddToggle("autofarm", 
{
    Title = "pulo infinito", 
    Description = "tá bugado",
    Default = false, -- esse "," e preciso coloque em qualquer situaÃ§Ã£o 
    Callback = function(state)
	if state then
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/HeyGyt/infjump/main/main"))()
	else
	    print("Toggle Off")
        end
    end 
})

--sliders

local Slider = Tabs.Player:AddSlider("pulo", 
{
    Title = "ajusta pulo",
    Description = "irar mudar pulo jogador",
    Default = 2,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Callback = function(Value)
        print("pulo mudou pra:", Value)
    end
})





local Slider = Tabs.Player:AddSlider("velocidade", 
{
    Title = "Velocidade",
    Description = "Ajusta a velocidade do jogador",
    Default = 2,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        
        -- Define a velocidade de caminhada
        humanoid.WalkSpeed = Value * 10  -- Multiplica o valor para aumentar o impacto
    end
})
