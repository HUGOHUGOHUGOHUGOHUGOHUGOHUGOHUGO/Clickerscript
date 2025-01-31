local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Fluent " .. Fluent.Version,
    TabWidth = 160, 
    Size = UDim2.fromOffset(580, 460),
    Theme = "Dark"
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main" }),
    1 = Window:AddTab({ Title = "Farms" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

Fluent:Notify({ Title = "carro roxo", Content = "feito: Hugo" })

Tabs.Main:AddParagraph({ Title = "Carro Roxo", Content = "todo bem" })

--botões--



--alterar--

local Toggle = 1:AddToggle("oi", 
{
    Title = "auto farm", 
    Description = "clickes automático",
    Default = false, -- esse "," e preciso coloque em qualquer situação 
    Callback = function(state)
	if state then
	    print("Toggle On")
	else
	    print("Fluent:Notify({ Title = "desativado", Content = "Carro Roxo" })")
        end
    end 
})

--slader--

local Slider = Tab:AddSlider("Slider", 
{
    Title = "test",
    Description = "é nada",
    Default = 2,
    Min = 0,
    Max = 200,
    Rounding = 1,
    Callback = function(Value)
        print("Slider was changed:", Value)
    end
})
