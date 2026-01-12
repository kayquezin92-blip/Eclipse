-- Eclipse Hub
-- Autor: KayquezinXD
-- Uso educacional

print("Eclipse carregado com sucesso")

-- SERVICES
local Players = game:GetService("Players")
local LP = Players.LocalPlayer

if LP then
    warn("[Eclipse] Jogador detectado: " .. LP.Name)
end

print("[Eclipse] Hub iniciado")

-- MODULE LOADER
local Modules = {}

-- BASE PATH (GitHub)
local base = "https://raw.githubusercontent.com/kayquezin92/Eclipse/main/scripts/modules/"

Modules.UI = loadstring(game:HttpGet(base .. "ui.lua"))()
Modules.ESP = loadstring(game:HttpGet(base .. "esp.lua"))()

-- CONECTA UI COM ESP
Modules.UI:SetToggleCallback(function(state)
    if state then
        Modules.ESP:Enable()
    else
        Modules.ESP:Disable()
    end
end)
