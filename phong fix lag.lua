local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/VanThanhIOS/MakeMenu/refs/heads/main/vtiosmake"))()
 
local PhantomForcesWindow = Library:NewWindow("phong hub fix lag")
 
local KillingCheats = PhantomForcesWindow:NewSection("Main Antilag")
 
KillingCheats:CreateButton("Antilag", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/VanThanhIOS/MakeMenu/refs/heads/main/mainv1.lua.txt"))()
end)
 
KillingCheats:CreateButton("Antilag", function()
  local ToDisable = {
	Textures = true,
	VisualEffects = true,
	Parts = true,
	Particles = true,
	Sky = true
}
 
local ToEnable = {
	FullBright = false
}
 
local Stuff = {}
 
for _, v in next, game:GetDescendants() do
	if ToDisable.Parts then
		if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
			v.Material = Enum.Material.SmoothPlastic
			table.insert(Stuff, 1, v)
		end
	end
 
	if ToDisable.Particles then
		if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
			v.Enabled = false
			table.insert(Stuff, 1, v)
		end
	end
 
	if ToDisable.VisualEffects then
		if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
			v.Enabled = false
			table.insert(Stuff, 1, v)
		end
	end
 
	if ToDisable.Textures then
		if v:IsA("Decal") or v:IsA("Texture") then
			v.Texture = ""
			table.insert(Stuff, 1, v)
		end
	end
 
	if ToDisable.Sky then
		if v:IsA("Sky") then
			v.Parent = nil
			table.insert(Stuff, 1, v)
		end
	end
end
 
game:GetService("TestService"):Message("Effects Disabler Script : Successfully disabled "..#Stuff.." assets / effects. Settings :")
 
for i, v in next, ToDisable do
	print(tostring(i)..": "..tostring(v))
end
 
if ToEnable.FullBright then
    local Lighting = game:GetService("Lighting")
 
    Lighting.FogColor = Color3.fromRGB(255, 255, 255)
    Lighting.FogEnd = math.huge
    Lighting.FogStart = math.huge
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.Brightness = 5
    Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
    Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
    Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    Lighting.Outlines = true
end
end)

local KillingCheats = PhantomForcesWindow:NewSection("Main Unlock FPS")
 
KillingCheats:CreateButton("Unlock Fps", function()
  while true do
    local args = {
        [1] = 1000
    }
    game:GetService("ReplicatedStorage").UpdateFPS:FireServer(unpack(args))
    wait(0.01)
end
end)

local KillingCheats = PhantomForcesWindow:NewSection("Main Speed")

KillingCheats:CreateTextbox("Speed", function(value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)