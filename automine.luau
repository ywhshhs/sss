-- AutoMine for Mine3
-- Settings
getgenv().AutoMine = true
local HIT_DAMAGE = 50
local HIT_DELAY = 0.25

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

local function getRemote()
    local char = LocalPlayer.Character
    if not char then return nil end
    for _, child in ipairs(char:GetChildren()) do
        if child:IsA("Tool") then
            local remote = child:FindFirstChild("RemoteFunction", true)
            if remote and remote:IsA("RemoteFunction") then
                return remote, child
            end
        end
    end
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if backpack then
        for _, tool in ipairs(backpack:GetChildren()) do
            if tool:IsA("Tool") then
                tool.Parent = char
                task.wait(0.3)
                return getRemote()
            end
        end
    end
    return nil
end

local function getOres()
    local mineFolder = Workspace:FindFirstChild("Mine3")
    if not mineFolder then warn("Mine3 not found") return {} end
    local ores = {}
    for _, model in ipairs(mineFolder:GetChildren()) do
        local ore = model:FindFirstChild("Ore", true)
        if ore and ore:IsA("BasePart") then
            table.insert(ores, ore)
        end
    end
    return ores
end

task.spawn(function()
    while getgenv().AutoMine do
        local remote = getRemote()
        if remote then
            local ores = getOres()
            for _, ore in ipairs(ores) do
                if not getgenv().AutoMine then break end
                if ore and ore.Parent then
                    local args = {
                        [1] = "hit",
                        [2] = {
                            [1] = ore,
                            [2] = HIT_DAMAGE
                        }
                    }
                    pcall(function()
                        remote:InvokeServer(unpack(args))
                    end)
                    task.wait(HIT_DELAY)
                end
            end
        else
            warn("No RemoteFunction tool found")
            task.wait(1)
        end
        task.wait(0.2)
    end
end)
