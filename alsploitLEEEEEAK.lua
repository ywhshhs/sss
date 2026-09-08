if false  then
	local _unused = 0
end

do

	do
		repeat task.wait()

	until  game:IsLoaded()
	local RbxAnalyticsService = game:GetService('RbxAnalyticsService')
	local clientId = RbxAnalyticsService:GetClientId()
	local function xorEncode(String: string, key: string)
		local resultTable = table.create(#String)
		for idx = 1, #String  do
			local byte1 = String:byte(idx)
			local byte2 = key:byte(((idx - 1) % #key) + 1)
			resultTable[idx] = string.char(bit32.bxor(byte1, byte2))
		end
		return table.concat(resultTable):gsub('.', function(char)
			local hex = string.format('%02X', char:byte())
			if math.random(0, 1) == 1  then

				hex = hex:lower()
			end
			return hex
		end)
	end
	local UninjectedKey = xorEncode('AlSploitUnInjected', tostring(clientId))
	while #UninjectedKey > 5  do

		UninjectedKey = UninjectedKey:sub(2)
	end

	shared[UninjectedKey] = false
	local ReplicatedStorage = game:GetService('ReplicatedStorage')
	local ContentProvider = game:GetService('ContentProvider')
	local VirtualUser = game:GetService('VirtualUser')
	local CollectionService = game:GetService('CollectionService')
	local UserInputService = game:GetService('UserInputService')
	local TextChatService = game:GetService('TextChatService')
	local Lighting = game:GetService('Lighting')
	local TeleportService = game:GetService('TeleportService')
	local Players = game:GetService('Players')
	local Teams = game:GetService('Teams')
	local TweenService = game:GetService('TweenService')
	local HttpService = game:GetService('HttpService')
	local TextService = game:GetService('TextService')
	local RunService = game:GetService('RunService')
	local Workspace = game:GetService('Workspace')
	local CoreGui = game:GetService('CoreGui')
	local LocalPlayer = Players.LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local Camera = Workspace.CurrentCamera
	local ScreenGui = Instance.new('ScreenGui')
	ScreenGui.Parent = LocalPlayer.PlayerGui
	ScreenGui.Name = 'AlSploit'
	ScreenGui.OnTopOfCoreBlur = true
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.ResetOnSpawn = false
	local IsBadExecutor = false
	local function checkBadExecutor()
		if not (debug.getupvalue or debug.getupvalues or debug.getproto or debug.getprotos or require)  then
			return true
		end
		local executorName = getexecutorname() or 'None'
		if string.find(string.lower(executorName), 'xeno') or string.find(string.lower(executorName), 'solara') or string.find(string.lower(executorName), 'jjsploit')  then
			return true
		end
		local httpRequest = http and http.request or http_request or request or httprequest
		local httpResponse = httpRequest({
		Url = 'https://mockhttp.org/get', Method = 'GET',
		Headers = { ['Content-Type'] = 'application/json' } })
		if httpResponse.Success  then
			local responseData = HttpService:JSONDecode(httpResponse.Body)
			for i, v in responseData.headers  do
				if string.find(string.lower(i), 'xeno')  then
					return true
				end

			end

		end
		local pcallSuccess, controlsModule = pcall(function()
			return require(LocalPlayer.PlayerScripts.PlayerModule).controls
		end)
		if pcallSuccess == false or not controlsModule  then
			return true
		end
		return false
	end

	IsBadExecutor = checkBadExecutor()
	local IsGhostMode = nil
	local function createLoadingUI()
		local LoadingFrame = Instance.new('ImageLabel')
		local UICorner = Instance.new('UICorner')
		local UIStroke = Instance.new('UIStroke')
		local titleLabel = Instance.new('ImageLabel')
		local loadingBar = Instance.new('Frame')
		local uiCorner2 = Instance.new('UICorner')
		local barStroke = Instance.new('UIStroke')
		local uiGradient = Instance.new('UIGradient')
		local FillBar = Instance.new('Frame')
		local fillCorner = Instance.new('UICorner')
		local fillGradient = Instance.new('UIGradient')
		local PercentageLabel = Instance.new('TextLabel')
		local percentConstraint = Instance.new('UITextSizeConstraint')
		local creditsLabel = Instance.new('TextLabel')
		local creditsConstraint = Instance.new('UITextSizeConstraint')
		local discordServerLabel = Instance.new('TextLabel')
		local discordConstraint2 = Instance.new('UITextSizeConstraint')
		local blatantBtn = Instance.new('TextButton')
		local blatantCorner = Instance.new('UICorner')
		local blatantStroke = Instance.new('UIStroke')
		local blatantGradient = Instance.new('UIGradient')
		local ghostBtn = Instance.new('TextButton')
		local ghostCorner = Instance.new('UICorner')
		local ghostStroke = Instance.new('UIStroke')
		local ghostGradient = Instance.new('UIGradient')
		local socialsLabel = Instance.new('TextLabel')
		local textConstraint = Instance.new('UITextSizeConstraint')
		LoadingFrame.Parent = ScreenGui
		LoadingFrame.Name = 'LoadingFrame'
		LoadingFrame.BorderSizePixel = 0
		LoadingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		LoadingFrame.ImageColor3 = Color3.new(0.0823529, 0.709804, 1)
		LoadingFrame.ScaleType = Enum.ScaleType.Crop
		LoadingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
		LoadingFrame.Image = 'rbxassetid://17100395362'
		LoadingFrame.Size = UDim2.new(0.479, 0, 0.461, 0)
		UICorner.CornerRadius = UDim.new(0.03, 0)
		UICorner.Parent = LoadingFrame
		UIStroke.Parent = LoadingFrame
		UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke.Color = Color3.new(1, 1, 1)
		titleLabel.Parent = LoadingFrame
		titleLabel.Name = 'Title'
		titleLabel.BackgroundTransparency = 1
		titleLabel.BorderSizePixel = 0
		titleLabel.ScaleType = Enum.ScaleType.Fit
		titleLabel.Position = UDim2.new(0, 0, 0.044, 0)
		titleLabel.Image = 'rbxassetid://17100452624'
		titleLabel.Size = UDim2.new(1, 0, 0.642, 0)
		loadingBar.Parent = LoadingFrame
		loadingBar.Name = 'LoadingBar'
		loadingBar.BorderSizePixel = 0
		loadingBar.Position = UDim2.new(0.067, 0, 0.465, 0)
		loadingBar.Size = UDim2.new(0.853, 0, 0.028, 0)
		uiCorner2.CornerRadius = UDim.new(0.7, 0)
		uiCorner2.Parent = loadingBar
		uiGradient.Parent = loadingBar
		uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.new(0.290196, 0.196078, 0.596078)), ColorSequenceKeypoint.new(1, Color3.new(0.180392, 0.121569, 0.368627))}
		barStroke.Parent = loadingBar
		barStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		barStroke.Color = Color3.new(1, 1, 1)
		FillBar.Parent = loadingBar
		FillBar.Name = 'Fill'
		FillBar.BorderSizePixel = 0
		FillBar.Size = UDim2.new(0, 0, 1, 0)
		fillGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.new(0.45098, 0.356863, 0.792157)), ColorSequenceKeypoint.new(1, Color3.new(0.552941, 0.254902, 1))}
		fillGradient.Parent = FillBar
		fillCorner.CornerRadius = UDim.new(0.7, 0)
		fillCorner.Parent = FillBar
		PercentageLabel.Parent = LoadingFrame
		PercentageLabel.Name = 'Percentage'
		PercentageLabel.BackgroundTransparency = 1
		PercentageLabel.BorderSizePixel = 0
		PercentageLabel.TextColor3 = Color3.new(1, 1, 1)
		PercentageLabel.TextScaled = true
		PercentageLabel.Position = UDim2.new(0.347, 0, 0.326, 0)
		PercentageLabel.Size = UDim2.new(0.294, 0, 0.139, 0)
		PercentageLabel.Font = Enum.Font.GothamBold
		PercentageLabel.Text = 'Pick Blantant / Ghost'
		percentConstraint.Parent = PercentageLabel
		percentConstraint.MaxTextSize = (4+16)
		creditsLabel.Parent = LoadingFrame
		creditsLabel.Name = 'DiscordUsername'
		creditsLabel.BackgroundTransparency = 1
		creditsLabel.BorderSizePixel = 0
		creditsLabel.TextColor3 = Color3.new(1, 1, 1)
		creditsLabel.TextSize = 15.000
		creditsLabel.Position = UDim2.new(0, 0, 0.704, 0)
		creditsLabel.Size = UDim2.new(1, 0, 0.0972, 0)
		creditsLabel.Font = Enum.Font.GothamBold
		creditsLabel.Text = 'Developed by godclutcher, with the help of Near, Stav, Blank, Hamza, Piston, Sown, Max & others.'
		creditsConstraint.Parent = creditsLabel
		creditsConstraint.MaxTextSize = (1+15)
		discordServerLabel.Parent = LoadingFrame
		discordServerLabel.Name = 'DiscordServer'
		discordServerLabel.BackgroundTransparency = 1
		discordServerLabel.BorderSizePixel = 0
		discordServerLabel.TextScaled = true
		discordServerLabel.TextColor3 = Color3.new(1, 1, 1)
		discordServerLabel.Position = UDim2.new(0, 0, 0.822, 0)
		discordServerLabel.Size = UDim2.new(1, 0, 0.069, 0)
		discordServerLabel.Font = Enum.Font.GothamMedium
		discordServerLabel.Text = 'Discord Server: discord.gg/Msud9c5YRS'
		discordConstraint2.Parent = discordServerLabel
		discordConstraint2.MaxTextSize = (8+8)
		blatantBtn.Parent = LoadingFrame
		blatantBtn.Name = 'AlSpoitBlatant'
		blatantBtn.BackgroundColor3 = Color3.new(1, 1, 1)
		blatantBtn.BorderSizePixel = 0
		blatantBtn.TextSize = (3+22)
		blatantBtn.Position = UDim2.new(0.256, 0, 0.577, 0)
		blatantBtn.Size = UDim2.new(0.135, 0, 0.09, 0)
		blatantBtn.Font = Enum.Font.GothamBold
		blatantBtn.Text = 'Blatant'
		blatantCorner.CornerRadius = UDim.new(0.1, 0)
		blatantCorner.Parent = blatantBtn
		blatantStroke.Parent = blatantBtn
		blatantStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		blatantStroke.Color = Color3.new(1, 1, 1)
		blatantGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.new(0.309804, 0.572549, 0.552941)), ColorSequenceKeypoint.new(1, Color3.new(0.164706, 0.447059, 0.690196))}
		blatantGradient.Parent = blatantBtn
		ghostBtn.Parent = LoadingFrame
		ghostBtn.Name = 'AlSploitGhost'
		ghostBtn.BackgroundColor3 = Color3.new(1, 1, 1)
		ghostBtn.BorderSizePixel = 0
		ghostBtn.TextSize = (14+11)
		ghostBtn.Position = UDim2.new(0.597, 0, 0.577, 0)
		ghostBtn.Size = UDim2.new(0.135, 0, 0.09, 0)
		ghostBtn.Font = Enum.Font.GothamBold
		ghostBtn.Text = 'Ghost'
		ghostCorner.CornerRadius = UDim.new(0.1, 0)
		ghostCorner.Parent = ghostBtn
		ghostStroke.Parent = ghostBtn
		ghostStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		ghostStroke.Color = Color3.new(1, 1, 1)
		ghostGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.new(0.309804, 0.572549, 0.552941)), ColorSequenceKeypoint.new(1, Color3.new(0.164706, 0.447059, 0.690196))}
		ghostGradient.Parent = ghostBtn
		socialsLabel.Parent = LoadingFrame
		socialsLabel.Name = 'Socials'
		socialsLabel.BackgroundTransparency = 1
		socialsLabel.BorderSizePixel = 0
		socialsLabel.TextScaled = true
		socialsLabel.TextColor3 = Color3.new(1, 1, 1)
		socialsLabel.Position = UDim2.new(0, 0, 0.89, 0)
		socialsLabel.Size = UDim2.new(1, 0, 0.069, 0)
		socialsLabel.Font = Enum.Font.GothamMedium
		socialsLabel.Text = 'YouTube: @BedwarsShowcaser'
		textConstraint.Parent = socialsLabel
		textConstraint.MaxTextSize = (8+8) blatantBtn.Activated:Connect(function()
			IsGhostMode = false
		end) ghostBtn.Activated:Connect(function() IsGhostMode = true
		end)
		return LoadingFrame, PercentageLabel, FillBar
	end
	local LoadingFrame, PercentageLabel, FillBar = createLoadingUI()
	repeat task.wait()

until  IsGhostMode ~= nil
local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
local loadTween = TweenService:Create(FillBar, tweenInfo, {Size = UDim2.new(1, 0, 1, 0)}) loadTween:Play()
repeat task.wait() PercentageLabel.Text = math.round(FillBar.Size.X.Scale * (91+9)) .. '%'

until  FillBar.Size.X.Scale == 1
task.wait(0.1)
PercentageLabel.Text = 'Loaded'
task.wait(0.1) LoadingFrame:Destroy()
local ContainerFrame = Instance.new('Frame')
local containerLayout = Instance.new('UIListLayout')
local NotificationContainer = Instance.new('Frame')
local notifLayout = Instance.new('UIListLayout')
local mobileKeybindHolder = Instance.new('Frame')
local mobileGrid = Instance.new('UIGridLayout')
local bindPrompt = Instance.new('Frame')
local uiShadow = Instance.new('UIShadow')
local bindStroke = Instance.new('UIStroke')
local bindCorner = Instance.new('UICorner')
local bindTitle = Instance.new('TextLabel')
local yesBtn = Instance.new('TextButton')
local noBtn = Instance.new('TextButton')
local OpenGuiButton = Instance.new('ImageButton')
local openGuiCorner = Instance.new('UICorner')
local ChangeGuiColorEvent = Instance.new('BindableEvent')
local ToggleFunctionEvent = Instance.new('BindableEvent')
local UnInjectEvent = Instance.new('BindableEvent')
local activeNotifications = {}
local NotificationRemovedEvent = Instance.new('BindableEvent')
local notifCount = 0
local notifAlpha = 0.88
local Connections = {}
task.spawn(function() Connections['NotificationRemoved'] = NotificationRemovedEvent.Event:Connect(function(removedNotif)
	if removedNotif.Name == 'NotificationRemoved'  then
		for i, v in next, activeNotifications  do
			if v.Position.Y.Scale < removedNotif.Position.Y.Scale  then
				local newPos = UDim2.new(v.Position.X.Scale, 0, (v.Position.Y.Scale + 0.105), 0)
				local tweenInfo = TweenInfo.new(0.24, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
				local moveTween = TweenService:Create(v, tweenInfo, {Position = newPos}) moveTween:Play()
			end

		end

	end

end)
end)
task.spawn(function() ContainerFrame.Parent = ScreenGui
	ContainerFrame.Name = 'ContainerFrame' ContainerFrame.BackgroundTransparency = 1
	ContainerFrame.Position = UDim2.new(0, 0, 0.05, 0) ContainerFrame.Visible = false
	ContainerFrame.Size = UDim2.new(1, 0, 1, 0) containerLayout.Parent = ContainerFrame
	containerLayout.Name = 'ContainerUIListLayout' containerLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	containerLayout.FillDirection = Enum.FillDirection.Horizontal containerLayout.SortOrder = Enum.SortOrder.LayoutOrder
	containerLayout.Padding = UDim.new(0, (25+25)) NotificationContainer.Parent = ScreenGui
	NotificationContainer.Name = 'NotificationContainer' NotificationContainer.BackgroundTransparency = 1
	NotificationContainer.BorderSizePixel = 0 NotificationContainer.Position = UDim2.new(0.8, 0, 0, 0)
	NotificationContainer.Size = UDim2.new(0.2, 0, 0.980, 0) notifLayout.Parent = NotificationContainer
	notifLayout.Name = 'NotificationContainerUIListLayout' notifLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	notifLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom notifLayout.FillDirection = Enum.FillDirection.Vertical
	notifLayout.SortOrder = Enum.SortOrder.LayoutOrder notifLayout.Padding = UDim.new(0, (9+1))
	OpenGuiButton.Parent = ScreenGui OpenGuiButton.Name = 'OpenGui'
	OpenGuiButton.BackgroundTransparency = 1 OpenGuiButton.AutoButtonColor = false
	OpenGuiButton.BorderSizePixel = 0 OpenGuiButton.Position = UDim2.new(0.958, 0, 0.098, 0)
	OpenGuiButton.ZIndex = (34+66) OpenGuiButton.Image = 'rbxassetid://102141261324485'
	OpenGuiButton.Size = UDim2.new(0.040, 0, 0.024, 0) openGuiCorner.Parent = OpenGuiButton
	openGuiCorner.Name = 'OpenGuiUICorner' openGuiCorner.CornerRadius = UDim.new(0.2, 0)
	mobileKeybindHolder.Parent = ScreenGui mobileKeybindHolder.Name = 'MobileKeybindFrameHolder'
	mobileKeybindHolder.BackgroundTransparency = 1 mobileKeybindHolder.BorderSizePixel = 0
	mobileKeybindHolder.Position = UDim2.new(0.68, 0, 0.144, 0) mobileKeybindHolder.Size = UDim2.new(0.315, 0, 0.342, 0)
	bindPrompt.Parent = ScreenGui bindPrompt.Name = 'Background'
	bindPrompt.BackgroundColor3 = Color3.new(0, 0, 0) bindPrompt.BackgroundTransparency = 0.1
	bindPrompt.BorderSizePixel = 0 bindPrompt.Position = UDim2.new(0.357, 0, 0.603, 0)
	bindPrompt.Visible = false bindPrompt.Size = UDim2.new(0.287, 0, 0.175, 0)
	bindCorner.Parent = bindPrompt bindCorner.CornerRadius = UDim.new(0.03, 0)
	bindStroke.Parent = bindPrompt bindStroke.Transparency = 0.8
	bindStroke.Color = Color3.new(0, 0, 0) uiShadow.Parent = bindStroke
	bindTitle.Parent = bindPrompt bindTitle.Name = 'Title'
	bindTitle.BackgroundTransparency = 1 bindTitle.BorderSizePixel = 0
	bindTitle.TextColor3 = Color3.new(1, 1, 1) bindTitle.TextScaled = true
	bindTitle.Position = UDim2.new(0.041, 0, 0.074, 0) bindTitle.Size = UDim2.new(0.919, 0, 0.252, 0)
	bindTitle.Font = Enum.Font.GothamBold bindTitle.Text = 'Would you like to bind the following module?'
	noBtn.Parent = bindPrompt noBtn.Name = 'No'
	noBtn.BackgroundTransparency = 1 noBtn.BorderSizePixel = 0
	noBtn.TextScaled = true noBtn.Position = UDim2.new(0.6419, 0, 0.524, 0)
	noBtn.Size = UDim2.new(0.071, 0, 0.360, 0) noBtn.Font = Enum.Font.SourceSans
	noBtn.Text = string.char() yesBtn.Parent = bindPrompt
	yesBtn.Name = 'Yes' yesBtn.BackgroundTransparency = (1+10)
	yesBtn.BorderSizePixel = 0 yesBtn.Position = UDim2.new(0.285, 0, 0.524, 0)
	yesBtn.TextScaled = true yesBtn.Size = UDim2.new(0.07, 0, 0.360, 0)
	yesBtn.Font = Enum.Font.SourceSans yesBtn.Text = string.char()
	mobileGrid.Parent = mobileKeybindHolder mobileGrid.CellPadding = UDim2.new(0.05, 0, 0.05, 0)
	mobileGrid.CellSize = UDim2.new(0.15, 0, 0.25, 0) ChangeGuiColorEvent.Parent = ReplicatedStorage
	ChangeGuiColorEvent.Name = 'ChangeGuiToggleColorEvent' ToggleFunctionEvent.Parent = ReplicatedStorage
	ToggleFunctionEvent.Name = 'ToggleToggleFunction' UnInjectEvent.Parent = ReplicatedStorage
	UnInjectEvent.Name = 'UnInjectEvent'
	task.spawn(function() OpenGuiButton.Activated:Connect(function() ContainerFrame.Visible = not ContainerFrame.Visible
	end)
end)
end)
local Config = {}
local guiColor = Color3.new(1, 1, 1)
local secondaryColor = Color3.new(1, 1, 1)
local layoutOrder = 0
local Library = {}
local writeFile = writefile or function() CreateNotification(3, 'Error, unable to use WriteFile')
end
local isFile = isfile or function() CreateNotification(3, 'Error, unable to use IsFile')
end
local readFile = readfile or function() CreateNotification(3, 'Error, unable to use ReadFile')
end
local deleteFile = delfile or function() CreateNotification(3, 'Error, unable to use DeleteFile')
end
local getScriptBytecode = getscriptbytecode or function() CreateNotification(3, 'Error, Unable To Use GetScriptByteCode')
	return nil
end
local httpResponse = http and http.request or http_request or request or httprequest
local fireProximityPrompt = fireproximityprompt or function() CreateNotification(3, 'Error, unable to use FireProximityPrompt')
end
local queueOnTeleport = queue_on_teleport or function() CreateNotification(3, 'Error, unable to use QueueOnTeleport')
end
local fireSignal = firesignal or function() CreateNotification(3, 'Error, unable to use FireSignal')
end
local setFpsCap = setfpscap or function() CreateNotification(3, 'Error, unable to use SetFpsCap')
end
local hookMetaMethod = hookmetamethod or function() CreateNotification(3, 'Error, unable to use HookMetaMethod')
end
local getCustomAsset = getcustomasset or function() CreateNotification(3, 'Error, unable to use GetCustomAsset')
end
local fontAssets = {
ProductSans = { ProductSansRegular = game:HttpGet('https://github.com/AlSploit/AlSploit/raw/refs/heads/main/Bedwars/Assets/ProductSans/Product%20Sans%20Regular.ttf'),
ProductSansBold = game:HttpGet('https://github.com/AlSploit/AlSploit/raw/refs/heads/main/Bedwars/Assets/ProductSans/Product%20Sans%20Bold.ttf') } }
local customFonts = {
ProductSans = { Regular = nil,
Bold = nil } }
if getCustomAsset and writeFile  then
	for i, v in next, fontAssets.ProductSans  do

		writeFile(i .. '.ttf', v)
	end

	writeFile('ProductSansFace.json', HttpService:JSONEncode({ name = 'ProductSans',
	faces = { { name = 'Regular',
	weight = (232+168), style = 'normal',
	assetId = getCustomAsset('ProductSansRegular.ttf') }, { name = 'Bold',
	weight = (176+524), style = 'normal',
	assetId = getCustomAsset('ProductSansBold.ttf') } } })) customFonts = {
	ProductSans = { Regular = Font.new(getCustomAsset('ProductSansFace.json')),
	Bold = Font.new( getCustomAsset('ProductSansFace.json'), Enum.FontWeight.Bold, Enum.FontStyle.Normal ) } }
end
task.spawn(function()
	if isFile and not isFile('AlSploitConfiguration.json') and writeFile  then
		local configJson = HttpService:JSONEncode(Config) writeFile('AlSploitConfiguration.json', configJson)
	end
	if not isFile or not isFile('AlSploitConfiguration.json')  then

		CreateNotification(3, 'Saving Folder Not Found')
	end

end)
task.spawn(function()
	if writeFile and isFile('AlSploitConfiguration.json') and readFile  then
		local loadedConfig = HttpService:JSONDecode(readFile('AlSploitConfiguration.json'))
		Config = loadedConfig
	end
	if not readFile  then

		CreateNotification(3, 'Unable To Load Settings')
	end
	task.spawn(function()
		repeat if isFile and isFile('AlSploitConfiguration.json') and writeFile  then
			local configJson = HttpService:JSONEncode(Config) writeFile('AlSploitConfiguration.json', configJson)
		end
		task.wait(0.5)

	until  shared[UninjectedKey] == true
end)
end)
function Library:CreateTab(moduleName, IconID, IconSize, IconPosition)
	local currentModule = nil
	local tabInstance = Instance.new('Frame')
	local UICorner = Instance.new('UICorner')
	local cornerFix = Instance.new('ImageLabel')
	local moduleScroll = Instance.new('ScrollingFrame')
	local moduleListLayout = Instance.new('UIListLayout')
	local tabIcon = Instance.new('ImageLabel')
	local titleLabel = Instance.new('TextLabel')
	local titlePad = Instance.new('UIPadding')
	tabInstance.Parent = ContainerFrame
	tabInstance.Name = 'Tab'
	tabInstance.BackgroundTransparency = 1
	tabInstance.BorderSizePixel = 0
	tabInstance.Position = UDim2.new(0.434, 0, 0, 0)
	tabInstance.Size = UDim2.new(0.125, 0, 0.051, 0)
	UICorner.CornerRadius = UDim.new(0.2, 0)
	UICorner.Parent = tabInstance
	cornerFix.Parent = tabInstance
	cornerFix.Name = 'CornerFix'
	cornerFix.BackgroundTransparency = 1
	cornerFix.ImageTransparency = 0.1
	cornerFix.BorderSizePixel = 0
	cornerFix.Position = UDim2.new(-0.152, 0, -0.390, 0)
	cornerFix.Image = 'rbxassetid://84860993868196'
	cornerFix.Size = UDim2.new(1.304, 0, 2.035, 0)
	moduleScroll.Parent = tabInstance
	moduleScroll.Name = 'ModuleContainer'
	moduleScroll.BackgroundTransparency = 1
	moduleScroll.ScrollBarThickness = (UserInputService.KeyboardEnabled and 0 or 3)
	moduleScroll.BorderSizePixel = 0
	moduleScroll.CanvasSize = UDim2.new(0, 0, (9+21), 0)
	moduleScroll.Position = UDim2.new(0, 0, 1, 0)
	moduleScroll.Size = UDim2.new(1, 0, 21.429, 0)
	moduleListLayout.Parent = moduleScroll
	moduleListLayout.Name = 'UIListLayout'
	moduleListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	moduleListLayout.FillDirection = Enum.FillDirection.Vertical
	moduleListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	tabIcon.Parent = tabInstance
	tabIcon.Name = 'Icon'
	tabIcon.BackgroundTransparency = 1
	tabIcon.BorderSizePixel = 0
	tabIcon.Position = IconPosition
	tabIcon.Image = IconID
	tabIcon.Size = IconSize
	titleLabel.Parent = tabInstance
	titleLabel.Name = 'Title'
	titleLabel.BackgroundTransparency = 1
	titleLabel.BorderSizePixel = 0
	titleLabel.TextXAlignment = Enum.TextXAlignment.Left
	titleLabel.TextColor3 = Color3.new(1, 1, 1)
	titleLabel.TextScaled = true
	titleLabel.Position = UDim2.new(-0.070, 0, 0.45, 0)
	if customFonts.ProductSans.Bold  then

		titleLabel.FontFace = customFonts.ProductSans.Bold

	else
		titleLabel.Font = Enum.Font.GothamBold
	end

	titleLabel.Size = UDim2.new(0.992, 0, 0.375, 0)
	titleLabel.Text = moduleName
	titlePad.Parent = titleLabel
	titlePad.Name = 'UIPadding_0'
	titlePad.PaddingLeft = UDim.new(0, (4+26))
	local tabApi = {}
	function tabApi:CreateToggle(Information)
		local moduleName = Information.Name
		currentModule = moduleName
		local toggleCallback = Information.Function
		local hoverText = Information.HoverText
		local toggleButton = Instance.new('TextButton')
		local background = Instance.new('Frame')
		local toggleGradient = Instance.new('UIGradient')
		local dropdownBtn = Instance.new('ImageButton')
		local hoverInfo = Instance.new('TextLabel')
		local uiCorner2 = Instance.new('UICorner')
		local creditsConstraint = Instance.new('UITextSizeConstraint')
		local moduleNameLabel = Instance.new('TextLabel')
		local togglePadding = Instance.new('UIPadding')
		local discordConstraint2 = Instance.new('UITextSizeConstraint')
		local orderId = 0
		if Config[moduleName] == nil  then

			Config[moduleName] = {Value = false}
		end
		local function updateGradient()
			local baseHue = select(1, guiColor:ToHSV())
			local sat1 = 0.458824
			local val1 = 0.572549
			local hue2 = (baseHue + (15+17) / (340+20)) % 1
			local sat2 = (118+76) / (224+31)
			local val2 = (36+140) / (193+62)
			local col1 = Color3.fromHSV(baseHue, sat1, val1)
			local col2 = Color3.fromHSV(hue2, sat2, val2)
			toggleGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, col1), ColorSequenceKeypoint.new(1, col2)})
		end
		local function updateToggle(Start)
			if Start == false  then

				Config[moduleName].Value = not Config[moduleName].Value
			end
			if Config[moduleName].Value == true  then

				background.BackgroundColor3 = Color3.new(1, 1, 1)
				moduleNameLabel.TextColor3 = Color3.new(1, 1, 1)
				toggleGradient.Enabled = true
				task.spawn(function()
					if Start == true  then
						task.wait(0.5) toggleCallback()
					end

				end)
				task.spawn(function()
					if Start == false  then

						toggleCallback()
					end

				end)
			end
			if Config[moduleName].Value == false  then

				background.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745)
				moduleNameLabel.TextColor3 = Color3.new(0.854902, 0.854902, 0.854902)
				toggleGradient.Enabled = false
				task.spawn(function()
					if Start == true  then
						task.wait(0.5) toggleCallback()
					end

				end)
				task.spawn(function()
					if Start == false  then

						toggleCallback()
					end

				end)
			end

		end

		toggleButton.Parent = moduleScroll
		toggleButton.Name = 'Toggle' toggleButton.BackgroundTransparency = 1
		toggleButton.TextTransparency = 1 toggleButton.AutoButtonColor = false
		toggleButton.BorderSizePixel = 0 toggleButton.Size = UDim2.new(1, (7+3), 0.0275, 0)
		toggleButton.LayoutOrder = layoutOrder layoutOrder = (layoutOrder + (43+7))
		orderId = (layoutOrder - (30+19)) background.Parent = toggleButton
		background.Name = 'Background' background.BackgroundTransparency = 0.1
		background.BorderSizePixel = 0 background.Position = UDim2.new(0.024, 0, 0, 0)
		background.Size = UDim2.new(0.952, 0, 1, 0) toggleGradient.Parent = background
		toggleGradient.Name = 'UIGradient_0' toggleGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.new(0.309804, 0.572549, 0.552941)), ColorSequenceKeypoint.new(1, Color3.new(0.164706, 0.447059, 0.690196))}
		togglePadding.Parent = toggleButton togglePadding.Name = 'UIPadding'
		togglePadding.PaddingLeft = UDim.new(0, (14+1)) creditsConstraint.Parent = hoverInfo
		creditsConstraint.Name = 'UITextSizeConstraint_2' creditsConstraint.MaxTextSize = (5+6)
		dropdownBtn.Parent = toggleButton dropdownBtn.Name = 'DropdownButton'
		dropdownBtn.BackgroundTransparency = 1 dropdownBtn.BorderSizePixel = 0
		dropdownBtn.Position = UDim2.new(0.822, 0, 0.176, 0) dropdownBtn.Rotation = 0
		dropdownBtn.Image = 'rbxassetid://105562103695155' dropdownBtn.Size = UDim2.new(0.080, 0, 0.5, 0)
		hoverInfo.Parent = ScreenGui hoverInfo.Name = 'ModuleInformation'
		hoverInfo.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961) hoverInfo.BorderSizePixel = 0
		hoverInfo.TextColor3 = Color3.new(1, 1, 1) hoverInfo.TextScaled = true
		hoverInfo.TextSize = (1+10) hoverInfo.Visible = false
		hoverInfo.ZIndex = 5 hoverInfo.Size = UDim2.new(1.199, 0, 0.32, 0)
		if customFonts.ProductSans.Bold  then

			hoverInfo.FontFace = customFonts.ProductSans.Bold

		else
			hoverInfo.Font = Enum.Font.GothamBold
		end

		hoverInfo.Text = hoverText
		local _kfkIVQFLkuJgqEYpXxvqhDJBtHLnIhy = TextService:GetTextSize(hoverText, (1+10), Enum.Font.GothamBold, Vector2.new((86594+13406), (85977+14023)))
		hoverInfo.Size = UDim2.new(0, (_kfkIVQFLkuJgqEYpXxvqhDJBtHLnIhy.X + (4+11)), 0, (_kfkIVQFLkuJgqEYpXxvqhDJBtHLnIhy.Y + 4))
		uiCorner2.Parent = hoverInfo
		uiCorner2.Name = 'UICorner_2'
		uiCorner2.CornerRadius = UDim.new(0.4, 0)
		creditsConstraint.Parent = hoverInfo
		creditsConstraint.Name = 'UITextSizeConstraint_3'
		creditsConstraint.MaxTextSize = (3+8)
		moduleNameLabel.Parent = toggleButton
		moduleNameLabel.Name = 'ModuleName'
		moduleNameLabel.BackgroundTransparency = 1
		moduleNameLabel.BorderSizePixel = 0
		moduleNameLabel.TextXAlignment = Enum.TextXAlignment.Left
		moduleNameLabel.TextColor3 = Color3.new(1, 1, 1)
		moduleNameLabel.TextScaled = true
		moduleNameLabel.Position = UDim2.new(0.028, 0, 0, 0)
		moduleNameLabel.Size = UDim2.new(0.948, 0, 1, 0)
		moduleNameLabel.Text = moduleName
		if customFonts.ProductSans.Bold  then

			moduleNameLabel.FontFace = customFonts.ProductSans.Bold

		else
			moduleNameLabel.Font = Enum.Font.GothamBold
		end

		togglePadding.Parent = moduleNameLabel
		togglePadding.PaddingLeft = UDim.new(0, (12+3))
		discordConstraint2.Parent = moduleNameLabel
		discordConstraint2.Name = 'UITextSizeConstraint_3'
		discordConstraint2.MaxTextSize = (11+2)
		task.spawn(function()
			local updateToggle = false
			local _bmkUDvNNySeJpygQYqTZoUsmATbQWMifpqscXfSbty dropdownBtn.Activated:Connect(function() updateToggle = not updateToggle
				if _bmkUDvNNySeJpygQYqTZoUsmATbQWMifpqscXfSbty  then

					_bmkUDvNNySeJpygQYqTZoUsmATbQWMifpqscXfSbty:Destroy()
				end
				if updateToggle == true  then
					local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
					local _vAzEXVWUuOMsPoQ = TweenService:Create(dropdownBtn, tweenInfo, {Rotation = (87+3)})
					_bmkUDvNNySeJpygQYqTZoUsmATbQWMifpqscXfSbty = _vAzEXVWUuOMsPoQ:Play()
				end
				if updateToggle == false  then
					local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
					local _vAzEXVWUuOMsPoQ = TweenService:Create(dropdownBtn, tweenInfo, {Rotation = 0})
					_bmkUDvNNySeJpygQYqTZoUsmATbQWMifpqscXfSbty = _vAzEXVWUuOMsPoQ:Play()
				end

			end)
		end)
		task.spawn(function() updateGradient() updateToggle(true)
		end)
		task.spawn(function() ChangeGuiColorEvent.Event:Connect(function() updateGradient()
		end)
	end)
	task.spawn(function() toggleButton.Activated:Connect(function() updateToggle(false)
	end) ToggleFunctionEvent.Event:Connect(function(_VxLpnqGLxhfMppCyRUxmIrafsrNfATBlMtIZnduapWrQt)
		if _VxLpnqGLxhfMppCyRUxmIrafsrNfATBlMtIZnduapWrQt == moduleName  then

			updateToggle(false)
		end

	end)
end)
task.spawn(function()
	task.wait(1)
	if currentModule == moduleName  then
		local UICorner = Instance.new('UICorner')
		UICorner.Parent = background
		UICorner.BottomRightRadius = UDim.new(0.2, 0)
		UICorner.BottomLeftRadius = UDim.new(0.2, 0)
		UICorner.TopRightRadius = UDim.new(0, 0)
		UICorner.TopLeftRadius = UDim.new(0, 0)
	end

end)
task.spawn(function()
	local _yhimiEsleehIfQbzSaYxOfsgjOokEc = false toggleButton.MouseLeave:Connect(function()
		hoverInfo.Visible = false _yhimiEsleehIfQbzSaYxOfsgjOokEc = false
	end) toggleButton.MouseEnter:Connect(function() hoverInfo.Visible = true
		_yhimiEsleehIfQbzSaYxOfsgjOokEc = true
	end) Mouse.Move:Connect(function()
		if _yhimiEsleehIfQbzSaYxOfsgjOokEc == true  then
			local _VZQyVsBaOtZLZOiQJaVDKk = UserInputService:GetMouseLocation()
			hoverInfo.Position = UDim2.new(0, _VZQyVsBaOtZLZOiQJaVDKk.X , 0, _VZQyVsBaOtZLZOiQJaVDKk.Y - (5+5))
		end

	end)
end)
local _ejdwfNkTAvUuGTJna = {}
function _ejdwfNkTAvUuGTJna:CreateToggle(removedNotif)
	local _RYtoqtPVvPWHyaJkixXnBd = removedNotif.DefaultValue
	local _brUXFDPaztbLzPkNdLELHVmlGWGTQkPlPqWnqVimBvTXFOhI = removedNotif.Function
	local keybindButton = moduleName
	local moduleName = removedNotif.Name
	local discordLabel = Instance.new('TextLabel')
	local _nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl = Instance.new('UIPadding')
	local textConstraint = Instance.new('UITextSizeConstraint')
	local _TZISxLMKLyCNswmTzxEMuZLaydAnHFeCunDokxVwYViFl = Instance.new('Frame')
	local fillCorner = Instance.new('UICorner')
	local uiGradient = Instance.new('UIGradient')
	local toggleButton = Instance.new('TextButton')
	local blatantCorner = Instance.new('UICorner')
	local _VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl = Instance.new('UITextSizeConstraint')
	if Config[keybindButton][moduleName] == nil  then

		Config[keybindButton][moduleName] = {Value = _RYtoqtPVvPWHyaJkixXnBd}
	end
	local function updateToggle(Start)
		if Start == false  then

			Config[keybindButton][moduleName].Value = not Config[keybindButton][moduleName].Value
		end
		if Config[keybindButton][moduleName].Value == true  then

			uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.564706, 0.0313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.392157, 0.0431373, 1))}
			local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, false, 0)
			local _NLMnaVbIBqfozppCdsmAPQjjcfhgq = TweenService:Create(toggleButton, tweenInfo, {Position = UDim2.new(0.06, 0, 0.1, 0)}) _NLMnaVbIBqfozppCdsmAPQjjcfhgq:Play() _brUXFDPaztbLzPkNdLELHVmlGWGTQkPlPqWnqVimBvTXFOhI()
		end
		if Config[keybindButton][moduleName].Value == false  then

			uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.133333, 0.133333, 0.1333337)), ColorSequenceKeypoint.new(1.00, Color3.new(0.133333, 0.133333, 0.1333337))}
			local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, false, 0)
			local _NLMnaVbIBqfozppCdsmAPQjjcfhgq = TweenService:Create(toggleButton, tweenInfo, {Position = UDim2.new(0.46, 0, 0.1, 0)}) _NLMnaVbIBqfozppCdsmAPQjjcfhgq:Play() _brUXFDPaztbLzPkNdLELHVmlGWGTQkPlPqWnqVimBvTXFOhI()
		end

	end

	discordLabel.Parent = moduleScroll
	discordLabel.Name = 'MiniToggle' discordLabel.BackgroundTransparency = 0.15
	discordLabel.BackgroundColor3 = Color3.new(0, 0, 0) discordLabel.BorderSizePixel = 0
	discordLabel.TextXAlignment = Enum.TextXAlignment.Left discordLabel.TextColor3 = Color3.new(1, 1, 1)
	discordLabel.TextScaled = true discordLabel.TextSize = (4+7)
	discordLabel.Visible = false discordLabel.Size = UDim2.new(1, 0, 0.03, 0)
	discordLabel.Font = Enum.Font.GothamBold discordLabel.Text = moduleName
	discordLabel.LayoutOrder = orderId orderId = (orderId + 1)
	_nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl.Parent = discordLabel
	_nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl.Name = 'UIPadding_2'
	_nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl.PaddingLeft = UDim.new(0, (8+7))
	textConstraint.Parent = discordLabel
	textConstraint.Name = 'UITextSizeConstraint_4'
	textConstraint.MaxTextSize = (4+7)
	_TZISxLMKLyCNswmTzxEMuZLaydAnHFeCunDokxVwYViFl.Parent = discordLabel
	_TZISxLMKLyCNswmTzxEMuZLaydAnHFeCunDokxVwYViFl.Name = 'ToggleContainer'
	_TZISxLMKLyCNswmTzxEMuZLaydAnHFeCunDokxVwYViFl.BackgroundColor3 = Color3.new(1, 1, 1)
	_TZISxLMKLyCNswmTzxEMuZLaydAnHFeCunDokxVwYViFl.BorderSizePixel = 0
	_TZISxLMKLyCNswmTzxEMuZLaydAnHFeCunDokxVwYViFl.BorderColor3 = Color3.new(0, 0, 0)
	_TZISxLMKLyCNswmTzxEMuZLaydAnHFeCunDokxVwYViFl.Position = UDim2.new(0.785, 0, 0.232, 0)
	_TZISxLMKLyCNswmTzxEMuZLaydAnHFeCunDokxVwYViFl.Size = UDim2.new(0.163, 0, 0.497, 0)
	fillCorner.Parent = _TZISxLMKLyCNswmTzxEMuZLaydAnHFeCunDokxVwYViFl
	fillCorner.Name = 'UICorner_3'
	fillCorner.CornerRadius = UDim.new(1, 0)
	uiGradient.Parent = _TZISxLMKLyCNswmTzxEMuZLaydAnHFeCunDokxVwYViFl
	uiGradient.Name = 'UIGradient'
	uiGradient.Rotation = (1+44)
	uiGradient.Color = (Config[keybindButton][moduleName].Value == true and ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.564706, 0.0313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.392157, 0.0431373, 1))} or ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.133333, 0.133333, 0.1333337)), ColorSequenceKeypoint.new(1.00, Color3.new(0.133333, 0.133333, 0.1333337))})
	toggleButton.Parent = _TZISxLMKLyCNswmTzxEMuZLaydAnHFeCunDokxVwYViFl
	toggleButton.Name = 'Toggle'
	toggleButton.BackgroundColor3 = Color3.new(0, 0, 0)
	toggleButton.AutoButtonColor = false
	toggleButton.BorderSizePixel = 0
	toggleButton.TextScaled = true
	toggleButton.TextSize = (6+8)
	toggleButton.Position = UDim2.new(0.040, 0, 0.100, 0)
	toggleButton.Size = UDim2.new(0.500, 0, 0.800, 0)
	toggleButton.Font = Enum.Font.GothamBold
	toggleButton.Text = ""
	blatantCorner.Parent = toggleButton
	blatantCorner.Name = 'UICorner_4'
	blatantCorner.CornerRadius = UDim.new(1, 0)
	_VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl.Parent = toggleButton
	_VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl.MaxTextSize = (6+8)
	task.spawn(function() updateToggle(true)
	end)
	task.spawn(function() toggleButton.Activated:Connect(function() updateToggle(false)
	end)
end)
task.spawn(function() dropdownBtn.Activated:Connect(function() discordLabel.Visible = not discordLabel.Visible
end)
end)
end
function _ejdwfNkTAvUuGTJna:CreateKeybind()
	local iconLabel = Instance.new('TextButton')
	local textConstraint = Instance.new('UITextSizeConstraint')
	local _nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl = Instance.new('UIPadding')
	local _ZvyABPsEZfnerRSZrXvGJlekAFmpHoqTflnrhaYkwwPUl = false
	local _hsjyVOaJQigwtfpVLeWhcEyXxpQSOST = false
	if not Config[moduleName].Keybind  then

		Config[moduleName].Keybind = '...'
	end
	local function updateToggle(Keybind) Config[moduleName].Keybind = Keybind
		iconLabel.Text = 'KeyBind: ' .. Keybind
	end

	iconLabel.Parent = moduleScroll
	iconLabel.Name = 'KeyBind' iconLabel.BackgroundTransparency = 0.15
	iconLabel.BackgroundColor3 = Color3.new(0, 0, 0) iconLabel.AutoButtonColor = false
	iconLabel.BorderSizePixel = 0 iconLabel.TextXAlignment = Enum.TextXAlignment.Left
	iconLabel.TextColor3 = Color3.new((77+178), (230+25), (88+167)) iconLabel.TextScaled = true
	iconLabel.TextSize = (3+8) iconLabel.Position = UDim2.new(0, 0, 0.082, 0)
	iconLabel.Visible = false iconLabel.Size = UDim2.new(1, 0, 0.025, 0)
	iconLabel.Font = Enum.Font.GothamBold iconLabel.Text = (Config[moduleName].Keybind == '...' and 'KeyBind: ' or 'KeyBind: ' .. Config[moduleName].Keybind)
	iconLabel.LayoutOrder = orderId orderId = (orderId + 1)
	textConstraint.Parent = iconLabel
	textConstraint.Name = 'ITextSizeConstraint_4'
	textConstraint.MaxTextSize = (9+2)
	_nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl.Parent = iconLabel
	_nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl.Name = 'UIPadding_2'
	_nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl.PaddingLeft = UDim.new(0, (6+9))
	task.spawn(function() iconLabel.Activated:Connect(function() _hsjyVOaJQigwtfpVLeWhcEyXxpQSOST = not _hsjyVOaJQigwtfpVLeWhcEyXxpQSOST
		if _ZvyABPsEZfnerRSZrXvGJlekAFmpHoqTflnrhaYkwwPUl == false and
		_hsjyVOaJQigwtfpVLeWhcEyXxpQSOST == true  then

			iconLabel.Text = 'KeyBind: ...'
			_ZvyABPsEZfnerRSZrXvGJlekAFmpHoqTflnrhaYkwwPUl = true
		end
		if _hsjyVOaJQigwtfpVLeWhcEyXxpQSOST == false  then

			Config[moduleName].Keybind = '...'
			iconLabel.Text = 'KeyBind: ' _ZvyABPsEZfnerRSZrXvGJlekAFmpHoqTflnrhaYkwwPUl = false
		end

	end)
end)
task.spawn(function() UserInputService.InputBegan:Connect(function(moduleList)
	if _ZvyABPsEZfnerRSZrXvGJlekAFmpHoqTflnrhaYkwwPUl == false and not UserInputService:GetFocusedTextBox() and Config[moduleName].Keybind == moduleList.KeyCode.Name  then
		if Config[moduleName].Value == true  then

			toggleButton.Background.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745) toggleButton.Background.UIGradient_0.Enabled = false
			toggleButton.ModuleName.TextColor3 = Color3.new(0.854902, 0.854902, 0.854902) CreateNotification(3, moduleName .. ' Has Been Toggled Off')
		end
		if Config[moduleName].Value == false  then
			for i, v in next, toggleButton:GetChildren()  do

				print(i, v)
			end

			toggleButton.Background.BackgroundColor3 = Color3.new(1, 1, 1)
			toggleButton.Background.UIGradient_0.Enabled = true toggleButton.ModuleName.TextColor3 = Color3.new(1, 1, 1) CreateNotification(3, moduleName .. ' Has Been Toggled On')
		end

		Config[moduleName].Value = not Config[moduleName].Value toggleCallback()
	end
	if _ZvyABPsEZfnerRSZrXvGJlekAFmpHoqTflnrhaYkwwPUl == true and
	UserInputService.KeyboardEnabled == true  then
		if moduleList.UserInputType == Enum.UserInputType.Keyboard  then

			_ZvyABPsEZfnerRSZrXvGJlekAFmpHoqTflnrhaYkwwPUl = false _hsjyVOaJQigwtfpVLeWhcEyXxpQSOST = false updateToggle(moduleList.KeyCode.Name)
		end

	else
		if _ZvyABPsEZfnerRSZrXvGJlekAFmpHoqTflnrhaYkwwPUl == true and
		UserInputService.KeyboardEnabled == false  then
			bindPrompt.Visible = true
			task.spawn(function()
				local _cjXkZPcosviPPUrEIZrPtGCrNqTg = {} _cjXkZPcosviPPUrEIZrPtGCrNqTg['Yes'] = yesBtn.Activated:Connect(function() updateToggle("")
					_ZvyABPsEZfnerRSZrXvGJlekAFmpHoqTflnrhaYkwwPUl = false bindPrompt.Visible = false
					for i, v in next, _cjXkZPcosviPPUrEIZrPtGCrNqTg  do

						v:Disconnect()
					end

				end) _cjXkZPcosviPPUrEIZrPtGCrNqTg['No'] = noBtn.Activated:Connect(function() updateToggle('...') _ZvyABPsEZfnerRSZrXvGJlekAFmpHoqTflnrhaYkwwPUl = false
					bindPrompt.Visible = false
					for i, v in next, _cjXkZPcosviPPUrEIZrPtGCrNqTg  do

						v:Disconnect()
					end

				end)
			end)
		end

	end

end)
end)
task.spawn(function() dropdownBtn.Activated:Connect(function() iconLabel.Visible = not iconLabel.Visible
end)
end)
end
function _ejdwfNkTAvUuGTJna:CreateSlider(removedNotif)
	local _RYtoqtPVvPWHyaJkixXnBd = removedNotif.DefaultValue
	local _XQHGRICXzBWNGilprLuXXtPLvjgIbaeEtKKmr = removedNotif.MaximumValue
	local _brUXFDPaztbLzPkNdLELHVmlGWGTQkPlPqWnqVimBvTXFOhI = removedNotif.Function
	local keybindButton = moduleName
	local moduleName = removedNotif.Name
	local tabFrame = Instance.new('Frame')
	local startFlag = Instance.new('Frame')
	local FillBar = Instance.new('Frame')
	local uiGradient = Instance.new('UIGradient')
	local scrollingFrame = Instance.new('TextButton')
	local fillCorner = Instance.new('UICorner')
	local UIStroke = Instance.new('UIStroke')
	local textConstraint = Instance.new('UITextSizeConstraint')
	local findNearest = Instance.new('TextLabel')
	local _VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl = Instance.new('UITextSizeConstraint')
	local _lFuqNMzukZgXJCavfWDoxHpTo = Instance.new('TextLabel')
	local _pUBdllAZdeVkaXocwQHJqSvtsFFnquLspGlGqlxtPrzRVxnkrX = Instance.new('UITextSizeConstraint')
	if Config[keybindButton][moduleName] == nil  then

		Config[keybindButton][moduleName] = {Value = _RYtoqtPVvPWHyaJkixXnBd}
	end

	tabFrame.Parent = moduleScroll
	tabFrame.Name = 'Slider'
	tabFrame.BackgroundTransparency = 0.15
	tabFrame.BackgroundColor3 = Color3.new(0, 0, 0)
	tabFrame.BorderSizePixel = 0
	tabFrame.Position = UDim2.new(0, 0, 0.117, 0)
	tabFrame.Visible = false
	tabFrame.Size = UDim2.new(1, 0, 0.05, 0)
	tabFrame.LayoutOrder = orderId orderId = (orderId + 1)
	startFlag.Parent = tabFrame startFlag.Name = 'SliderFrame'
	startFlag.BackgroundTransparency = 1 startFlag.BorderSizePixel = 0
	startFlag.Position = UDim2.new(0.150, 0, 0.654, 0) startFlag.Size = UDim2.new(0.700, 0, 0.060, 0)
	FillBar.Parent = startFlag FillBar.Name = 'Fill'
	FillBar.BackgroundColor3 = Color3.new(1, 1, 1) FillBar.BorderSizePixel = 0
	FillBar.Position = UDim2.new(0, 0, -0.329, 0) FillBar.Size = UDim2.new(1, 0, 1, 0)
	uiGradient.Parent = FillBar uiGradient.Name = 'UIGradient'
	uiGradient.Rotation = (28+152) uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(0.564706, 0.0313725, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(0.392157, 0.0431373, 1))}
	scrollingFrame.Parent = startFlag scrollingFrame.Name = 'Bar'
	scrollingFrame.BackgroundColor3 = Color3.new(0.564706, 0.0313725, 1) scrollingFrame.AutoButtonColor = false
	scrollingFrame.BorderSizePixel = 0 scrollingFrame.TextScaled = true
	scrollingFrame.TextSize = (3+11) scrollingFrame.Position = UDim2.new(0.135, 0, -1.500, 0)
	scrollingFrame.ZIndex = 2 scrollingFrame.Size = UDim2.new(0.070, 0, 3.090, 0)
	scrollingFrame.Font = Enum.Font.GothamBold scrollingFrame.Text = ""
	fillCorner.Parent = scrollingFrame fillCorner.Name = 'UICorner_3'
	fillCorner.CornerRadius = UDim.new(1, 0) UIStroke.Parent = scrollingFrame
	UIStroke.Name = 'UIStroke' UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 1 UIStroke.Color = Color3.new(0, 0, 0)
	textConstraint.Parent = scrollingFrame textConstraint.Name = 'UITextSizeConstraint_6'
	textConstraint.MaxTextSize = (13+1) findNearest.Parent = tabFrame
	findNearest.Name = 'NameDisplay' findNearest.BackgroundTransparency = 1
	findNearest.BorderSizePixel = 0 findNearest.TextColor3 = Color3.new(1, 1, 1)
	findNearest.TextScaled = true findNearest.TextSize = (9+1)
	findNearest.Position = UDim2.new(0.145, 0, 0.08, 0) findNearest.Size = UDim2.new(0.250, 0, 0.543, 0)
	findNearest.Font = Enum.Font.GothamBold findNearest.Text = moduleName
	_VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl.Parent = findNearest _VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl.MaxTextSize = (6+4)
	_lFuqNMzukZgXJCavfWDoxHpTo.Parent = tabFrame _lFuqNMzukZgXJCavfWDoxHpTo.Name = 'ValueDisplay'
	_lFuqNMzukZgXJCavfWDoxHpTo.BackgroundTransparency = 1 _lFuqNMzukZgXJCavfWDoxHpTo.BorderSizePixel = 0
	_lFuqNMzukZgXJCavfWDoxHpTo.TextColor3 = Color3.new(1, 1, 1) _lFuqNMzukZgXJCavfWDoxHpTo.TextScaled = true
	_lFuqNMzukZgXJCavfWDoxHpTo.TextSize = (2+8) _lFuqNMzukZgXJCavfWDoxHpTo.Position = UDim2.new(0.635, 0, 0.08, 0)
	_lFuqNMzukZgXJCavfWDoxHpTo.Size = UDim2.new(0.250, 0, 0.543, 0) _lFuqNMzukZgXJCavfWDoxHpTo.Font = Enum.Font.GothamBold
	_lFuqNMzukZgXJCavfWDoxHpTo.Text = Config[keybindButton][moduleName].Value _pUBdllAZdeVkaXocwQHJqSvtsFFnquLspGlGqlxtPrzRVxnkrX.Parent = _lFuqNMzukZgXJCavfWDoxHpTo
	_pUBdllAZdeVkaXocwQHJqSvtsFFnquLspGlGqlxtPrzRVxnkrX.MaxTextSize = (6+4)
	local _SGOTilCzni = false
	local function _IGqNuyjShyodvk(Number, Factor)
		return (Factor == 0 and Number or (math.floor(Number / Factor) * Factor))
	end
	task.spawn(function() FillBar.Size = UDim2.new((Config[keybindButton][moduleName].Value / _XQHGRICXzBWNGilprLuXXtPLvjgIbaeEtKKmr), 0, 1, 0)
		scrollingFrame.Position = UDim2.new((Config[keybindButton][moduleName].Value / _XQHGRICXzBWNGilprLuXXtPLvjgIbaeEtKKmr), 0, scrollingFrame.Position.Y.Scale, 0) _brUXFDPaztbLzPkNdLELHVmlGWGTQkPlPqWnqVimBvTXFOhI()
	end)
	task.spawn(function() scrollingFrame.MouseButton1Down:Connect(function() _SGOTilCzni = true
	end)
end)
task.spawn(function() UserInputService.InputEnded:Connect(function(moduleList)
	if moduleList.UserInputType == Enum.UserInputType.MouseButton1 or Enum.UserInputType.Touch  then

		_SGOTilCzni = false
	end

end)
end)
task.spawn(function() dropdownBtn.Activated:Connect(function() tabFrame.Visible = not tabFrame.Visible
	task.spawn(function()
		repeat task.wait()
		if _SGOTilCzni == true  then
			local _VZQyVsBaOtZLZOiQJaVDKk = UserInputService:GetMouseLocation().X
			local _BMaBXuGwqjsYXncEJncUYBuMuDqWnTY = tabFrame.AbsolutePosition.X
			local _IwwmsTfrdYUHpvblludCIaZZweNaeXFInQfXdivGwupjTUsZ = scrollingFrame.Position
			local _EBhzjeVgCavQJlgglULrVMJXTypKYZGFnmH = tabFrame.AbsoluteSize.X
			local scrollFrame = ((_VZQyVsBaOtZLZOiQJaVDKk - _BMaBXuGwqjsYXncEJncUYBuMuDqWnTY) / _EBhzjeVgCavQJlgglULrVMJXTypKYZGFnmH)
			local PercentageLabel = math.clamp(scrollFrame, 0, 1)
			local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
			local moveTween = TweenService:Create(scrollingFrame, tweenInfo, {Position = UDim2.new(PercentageLabel, 0, _IwwmsTfrdYUHpvblludCIaZZweNaeXFInQfXdivGwupjTUsZ.Y.Scale, 0)}) moveTween:Play()
			local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
			local _HuUvEwYyQswTMSQHjnroNxWXMPYUKYRIkKJaKJ = TweenService:Create(FillBar, tweenInfo, {Size = UDim2.new(PercentageLabel, 0, 1, 0)}) _HuUvEwYyQswTMSQHjnroNxWXMPYUKYRIkKJaKJ:Play()
			_lFuqNMzukZgXJCavfWDoxHpTo.Text = math.round(PercentageLabel * _XQHGRICXzBWNGilprLuXXtPLvjgIbaeEtKKmr) Config[keybindButton][moduleName].Value = math.round(PercentageLabel * _XQHGRICXzBWNGilprLuXXtPLvjgIbaeEtKKmr) _brUXFDPaztbLzPkNdLELHVmlGWGTQkPlPqWnqVimBvTXFOhI()
		end

	until  shared[UninjectedKey] == true or tabFrame.Visible == false
end)
end)
end)
end
local _mXVFnXOeUSDYtqcNpTvDYFTHgJrDdtYTzohzX = {}
function _ejdwfNkTAvUuGTJna:CreateDropdown(removedNotif)
	local _agIvJCxmyfneppuTaToWgvuitZZBa = removedNotif.HoverText
	local keybindButton = moduleName
	local moduleName = removedNotif.Name
	if Config[keybindButton][moduleName] == nil  then

		Config[keybindButton][moduleName] = {}
	end
	local _fIlGYsFoQJTpgaKO = Instance.new('Frame')
	local _qDYyybSMZYWlOSZFiSbbMIcgA = Instance.new('ScrollingFrame')
	local _LfRsSELlFCIiPrenAIMNtFmj = Instance.new('UIListLayout')
	local _aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy = Instance.new('TextLabel')
	local _nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl = Instance.new('UIPadding')
	local textConstraint = Instance.new('UITextSizeConstraint')
	local discordConstraint = Instance.new('TextLabel')
	local fillCorner = Instance.new('UICorner')
	local _VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl = Instance.new('UITextSizeConstraint')
	_fIlGYsFoQJTpgaKO.Parent = moduleScroll
	_fIlGYsFoQJTpgaKO.Name = 'Dropdown'
	_fIlGYsFoQJTpgaKO.BackgroundTransparency = 0.15
	_fIlGYsFoQJTpgaKO.BackgroundColor3 = Color3.new(0, 0, 0)
	_fIlGYsFoQJTpgaKO.BorderSizePixel = 0
	_fIlGYsFoQJTpgaKO.Visible = false
	_fIlGYsFoQJTpgaKO.Position = UDim2.new(0.085, 0, 0.181, 0)
	_fIlGYsFoQJTpgaKO.Size = UDim2.new(1, 0, 0.08, 0)
	_fIlGYsFoQJTpgaKO.LayoutOrder = orderId orderId = (orderId + 1)
	_qDYyybSMZYWlOSZFiSbbMIcgA.Parent = _fIlGYsFoQJTpgaKO _qDYyybSMZYWlOSZFiSbbMIcgA.Name = 'OptionsContainer'
	_qDYyybSMZYWlOSZFiSbbMIcgA.BackgroundTransparency = 1 _qDYyybSMZYWlOSZFiSbbMIcgA.ScrollBarThickness = 0
	_qDYyybSMZYWlOSZFiSbbMIcgA.BorderSizePixel = 0 _qDYyybSMZYWlOSZFiSbbMIcgA.CanvasSize = UDim2.new(0, 0, 1.5, 0)
	_qDYyybSMZYWlOSZFiSbbMIcgA.Position = UDim2.new(0, 0, 0.290, 0) _qDYyybSMZYWlOSZFiSbbMIcgA.Size = UDim2.new(1, 0, 0.710, 0)
	_LfRsSELlFCIiPrenAIMNtFmj.Parent = _qDYyybSMZYWlOSZFiSbbMIcgA _LfRsSELlFCIiPrenAIMNtFmj.Name = 'UIListLayout_2'
	_LfRsSELlFCIiPrenAIMNtFmj.HorizontalAlignment = Enum.HorizontalAlignment.Center _LfRsSELlFCIiPrenAIMNtFmj.FillDirection = Enum.FillDirection.Vertical
	_LfRsSELlFCIiPrenAIMNtFmj.SortOrder = Enum.SortOrder.LayoutOrder _aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy.Parent = _fIlGYsFoQJTpgaKO
	_aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy.Name = 'DropdownText' _aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy.BackgroundTransparency = 1
	_aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy.BorderSizePixel = 0 _aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy.TextXAlignment = Enum.TextXAlignment.Left
	_aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy.TextColor3 = Color3.new(1, 1, 1) _aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy.TextScaled = true
	_aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy.TextSize = (5+7) _aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy.Size = UDim2.new(1, 0, 0.290, 0)
	_aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy.Font = Enum.Font.GothamBold _aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy.Text = moduleName
	textConstraint.Parent = _aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy textConstraint.Name = 'UITextSizeConstraint_4'
	textConstraint.MaxTextSize = (10+2) _nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl.Parent = _aOJtZEOqytjzwkbKLamShwZFLEdUewgKORayLeyGaIWy
	_nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl.Name = 'UIPadding_2' _nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl.PaddingLeft = UDim.new(0, (14+1))
	discordConstraint.Parent = ScreenGui discordConstraint.Name = 'ModuleInformation'
	discordConstraint.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961) discordConstraint.BorderSizePixel = 0
	discordConstraint.AnchorPoint = Vector2.new(0, 0.3) discordConstraint.TextColor3 = Color3.new(1, 1, 1)
	discordConstraint.TextScaled = true discordConstraint.TextSize = (10+1)
	discordConstraint.Visible = false discordConstraint.ZIndex = 5
	discordConstraint.Size = UDim2.new(1.11, 0, 0.131, 0) discordConstraint.Font = Enum.Font.GothamBold
	discordConstraint.Text = _agIvJCxmyfneppuTaToWgvuitZZBa
	local _kfkIVQFLkuJgqEYpXxvqhDJBtHLnIhy = TextService:GetTextSize(_agIvJCxmyfneppuTaToWgvuitZZBa, (1+10), Enum.Font.GothamBold, Vector2.new((88825+11175), (48400+51600)))
	discordConstraint.Size = UDim2.new(0, (_kfkIVQFLkuJgqEYpXxvqhDJBtHLnIhy.X + (2+13)), 0, (_kfkIVQFLkuJgqEYpXxvqhDJBtHLnIhy.Y + 4))
	fillCorner.Parent = discordConstraint
	fillCorner.Name = 'UICorner_2'
	fillCorner.CornerRadius = UDim.new(0.4, 0)
	_VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl.Parent = discordConstraint
	_VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl.Name = 'UITextSizeConstraint_3'
	_VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl.MaxTextSize = (8+3)
	task.spawn(function()
		local _yhimiEsleehIfQbzSaYxOfsgjOokEc = false
		task.spawn(function() _fIlGYsFoQJTpgaKO.MouseLeave:Connect(function() discordConstraint.Visible = false
			_yhimiEsleehIfQbzSaYxOfsgjOokEc = false
		end)
	end)
	task.spawn(function() _fIlGYsFoQJTpgaKO.MouseEnter:Connect(function() discordConstraint.Visible = true
		_yhimiEsleehIfQbzSaYxOfsgjOokEc = true
	end)
end)
task.spawn(function() Mouse.Move:Connect(function()
	if _yhimiEsleehIfQbzSaYxOfsgjOokEc == true  then
		local _VZQyVsBaOtZLZOiQJaVDKk = UserInputService:GetMouseLocation()
		discordConstraint.Position = UDim2.new(0, _VZQyVsBaOtZLZOiQJaVDKk.X , 0, _VZQyVsBaOtZLZOiQJaVDKk.Y - (4+6))
	end

end)
end)
end)
task.spawn(function() dropdownBtn.Activated:Connect(function() _fIlGYsFoQJTpgaKO.Visible = not _fIlGYsFoQJTpgaKO.Visible
end)
end)
function _mXVFnXOeUSDYtqcNpTvDYFTHgJrDdtYTzohzX:CreateToggle(removedNotif)
	local _RYtoqtPVvPWHyaJkixXnBd = removedNotif.DefaultValue
	local _brUXFDPaztbLzPkNdLELHVmlGWGTQkPlPqWnqVimBvTXFOhI = removedNotif.Function
	local _ZvvIqFrSmrtBvbceEmaUtQDTtzbSBOVIohgQZjiHxcEa = moduleName
	local moduleName = removedNotif.Name
	local newHue = Instance.new('TextButton')
	local _pUBdllAZdeVkaXocwQHJqSvtsFFnquLspGlGqlxtPrzRVxnkrX = Instance.new('UITextSizeConstraint')
	if Config[keybindButton][_ZvvIqFrSmrtBvbceEmaUtQDTtzbSBOVIohgQZjiHxcEa][moduleName] == nil  then

		Config[keybindButton][_ZvvIqFrSmrtBvbceEmaUtQDTtzbSBOVIohgQZjiHxcEa][moduleName] = {Value = _RYtoqtPVvPWHyaJkixXnBd}
	end
	local function updateToggle(Start)
		if Start == false  then

			Config[keybindButton][_ZvvIqFrSmrtBvbceEmaUtQDTtzbSBOVIohgQZjiHxcEa][moduleName].Value = not Config[keybindButton][_ZvvIqFrSmrtBvbceEmaUtQDTtzbSBOVIohgQZjiHxcEa][moduleName].Value
		end
		if Config[keybindButton][_ZvvIqFrSmrtBvbceEmaUtQDTtzbSBOVIohgQZjiHxcEa][moduleName].Value == true  then

			newHue.BackgroundTransparency = 0 _brUXFDPaztbLzPkNdLELHVmlGWGTQkPlPqWnqVimBvTXFOhI()
		end
		if Config[keybindButton][_ZvvIqFrSmrtBvbceEmaUtQDTtzbSBOVIohgQZjiHxcEa][moduleName].Value == false  then

			newHue.BackgroundTransparency = 1 _brUXFDPaztbLzPkNdLELHVmlGWGTQkPlPqWnqVimBvTXFOhI()
		end

	end

	newHue.Parent = _qDYyybSMZYWlOSZFiSbbMIcgA
	newHue.Name = 'Button' newHue.BackgroundTransparency = (Config[keybindButton][_ZvvIqFrSmrtBvbceEmaUtQDTtzbSBOVIohgQZjiHxcEa][moduleName].Value == true and 0 or 1)
	newHue.BackgroundColor3 = Color3.new(0.564706, 0.0313725, 1) newHue.AutoButtonColor = false
	newHue.BorderSizePixel = 0 newHue.TextColor3 = Color3.new(1, 1, 1)
	newHue.TextScaled = true newHue.TextSize = (6+5)
	newHue.Position = UDim2.new(3.039, 0, -2.333, 0) newHue.Size = UDim2.new(1, 0, 0.172, 0)
	newHue.Font = Enum.Font.GothamBold newHue.Text = moduleName
	_pUBdllAZdeVkaXocwQHJqSvtsFFnquLspGlGqlxtPrzRVxnkrX.Parent = newHue _pUBdllAZdeVkaXocwQHJqSvtsFFnquLspGlGqlxtPrzRVxnkrX.Name = 'UITextSizeConstraint_5'
	_pUBdllAZdeVkaXocwQHJqSvtsFFnquLspGlGqlxtPrzRVxnkrX.MaxTextSize = (9+2)
	task.spawn(function() updateToggle(true)
	end)
	task.spawn(function() newHue.Activated:Connect(function() updateToggle(false)
	end)
end)
end
return _mXVFnXOeUSDYtqcNpTvDYFTHgJrDdtYTzohzX
end
function _ejdwfNkTAvUuGTJna:CreateColorSlider(removedNotif)
	local _RYtoqtPVvPWHyaJkixXnBd = removedNotif.DefaultValue
	local toggleCallback = removedNotif.Function
	local keybindButton = moduleName
	local moduleName = removedNotif.Name
	if Config[keybindButton][moduleName] == nil  then

		Config[keybindButton][moduleName] = {Value = tostring(_RYtoqtPVvPWHyaJkixXnBd.R .. ',' .. _RYtoqtPVvPWHyaJkixXnBd.G .. ',' .. _RYtoqtPVvPWHyaJkixXnBd.B),
		Percentage = 0}
	end
	local colorParts = string.split(Config[keybindButton][moduleName].Value, ',')
	local r = colorParts[1]
	local g = colorParts[2]
	local b = colorParts[3]
	local newSat = Instance.new('Frame')
	local startFlag = Instance.new('Frame')
	local scrollingFrame = Instance.new('TextButton')
	local fillCorner = Instance.new('UICorner')
	local UIStroke = Instance.new('UIStroke')
	local textConstraint = Instance.new('UITextSizeConstraint')
	local _OQczMRLdEeRXhqXktUVfrvfsMWbPYTKfyQXFDyMyKPnQDqk = Instance.new('Frame')
	local blatantCorner = Instance.new('UICorner')
	local FillBar = Instance.new('Frame')
	local uiGradient = Instance.new('UIGradient')
	local findNearest = Instance.new('TextLabel')
	local _VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl = Instance.new('UITextSizeConstraint')
	local _nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl = Instance.new('UIPadding')
	newSat.Parent = moduleScroll
	newSat.Name = 'ColorPicker'
	newSat.BackgroundTransparency = 0.15
	newSat.BackgroundColor3 = Color3.new(0, 0, 0)
	newSat.BorderSizePixel = 0
	newSat.Position = UDim2.new(0, 0, 0.287, 0)
	newSat.Visible = false
	newSat.Size = UDim2.new(1, 0, 0.08, 0)
	newSat.LayoutOrder = orderId
	newSat.LayoutOrder = (orderId + 1)
	startFlag.Parent = newSat
	startFlag.Name = 'SliderFrame'
	startFlag.BackgroundTransparency = 1
	startFlag.BorderSizePixel = 0
	startFlag.Position = UDim2.new(0.150, 0, 0.654, 0)
	startFlag.Size = UDim2.new(0.700, 0, 0.060, 0)
	scrollingFrame.Parent = startFlag
	scrollingFrame.Name = 'Bar'
	scrollingFrame.BackgroundColor3 = Color3.new(0, 0.6, 1)
	scrollingFrame.AutoButtonColor = false
	scrollingFrame.BorderSizePixel = 0
	scrollingFrame.TextScaled = true
	scrollingFrame.TextSize = (12+2)
	scrollingFrame.Position = UDim2.new(Config[keybindButton][moduleName].Percentage, 0, -1.111, 0)
	scrollingFrame.ZIndex = 2
	scrollingFrame.Size = UDim2.new(0.070, 0, 1.915, 0)
	scrollingFrame.Font = Enum.Font.GothamBold
	scrollingFrame.Text = ""
	fillCorner.Parent = scrollingFrame
	fillCorner.Name = 'UICorner_3'
	fillCorner.CornerRadius = UDim.new(1, 0)
	UIStroke.Parent = scrollingFrame
	UIStroke.Name = 'UIStroke'
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 1
	UIStroke.Color = Color3.new(0, 0, 0)
	textConstraint.Parent = scrollingFrame
	textConstraint.Name = 'UITextSizeConstraint_4'
	textConstraint.MaxTextSize = (1+13)
	_OQczMRLdEeRXhqXktUVfrvfsMWbPYTKfyQXFDyMyKPnQDqk.Parent = startFlag
	_OQczMRLdEeRXhqXktUVfrvfsMWbPYTKfyQXFDyMyKPnQDqk.Name = 'ColorDisplay'
	_OQczMRLdEeRXhqXktUVfrvfsMWbPYTKfyQXFDyMyKPnQDqk.BackgroundColor3 = Color3.new(r, g, b)
	_OQczMRLdEeRXhqXktUVfrvfsMWbPYTKfyQXFDyMyKPnQDqk.BorderSizePixel = 0
	_OQczMRLdEeRXhqXktUVfrvfsMWbPYTKfyQXFDyMyKPnQDqk.Position = UDim2.new(0.889, 0, -5, 0)
	_OQczMRLdEeRXhqXktUVfrvfsMWbPYTKfyQXFDyMyKPnQDqk.Size = UDim2.new(0, (6+9), 0, (1+14))
	blatantCorner.Parent = _OQczMRLdEeRXhqXktUVfrvfsMWbPYTKfyQXFDyMyKPnQDqk
	blatantCorner.Name = 'UICorner_4'
	blatantCorner.CornerRadius = UDim.new(0.200, 0)
	FillBar.Parent = startFlag
	FillBar.Name = 'Fill'
	FillBar.BackgroundColor3 = Color3.new(1, 1, 1)
	FillBar.BorderSizePixel = 0
	FillBar.Position = UDim2.new(0, 0, -0.329, 0)
	FillBar.Size = UDim2.new(1, 0, 0.650, 0)
	uiGradient.Parent = FillBar
	uiGradient.Name = 'UIGradient_3'
	uiGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.new(1, 0, 0)), ColorSequenceKeypoint.new(0.20, Color3.new(1, 1, 0)), ColorSequenceKeypoint.new(0.40, Color3.new(0, 1, 0)), ColorSequenceKeypoint.new(0.60, Color3.new(0, 1, 1)), ColorSequenceKeypoint.new(0.80, Color3.new(0, 0, 1)), ColorSequenceKeypoint.new(1.00, Color3.new(1, 0, 1))}
	findNearest.Parent = newSat
	findNearest.Name = 'NameDisplay'
	findNearest.BackgroundTransparency = 1
	findNearest.BorderSizePixel = 0
	findNearest.TextXAlignment = Enum.TextXAlignment.Left
	findNearest.TextColor3 = Color3.new(1, 1, 1)
	findNearest.TextScaled = true
	findNearest.TextSize = (8+2)
	findNearest.Position = UDim2.new(-0.005, 0, 0.198, 0)
	findNearest.Size = UDim2.new(1.005, 0, 0.470, 0)
	findNearest.Font = Enum.Font.GothamBold
	findNearest.Text = moduleName
	_VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl.Parent = findNearest
	_VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl.Name = 'UITextSizeConstraint_5'
	_VLUUkqTqPOtBaQRiQZsSVNhGqItFPhVGfQBBkKyoRorl.MaxTextSize = (10+1)
	_nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl.Parent = findNearest
	_nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl.Name = 'UIPadding_2'
	_nxDjIlaskQLnODYqhYvnyYufouLJbApmoKGTOOFsGl.PaddingLeft = UDim.new(0, (20+10))
	local function _xsrRQqheAeAnje(PercentageLabel)
		local _ngtjHWeZLzkcI = uiGradient.Color.Keypoints
		local _zVcatWhzYeLOBs = _ngtjHWeZLzkcI[# _ngtjHWeZLzkcI]
		local _ZPCbGZFwgjNtSFMnopM = _ngtjHWeZLzkcI[1]
		local _cXMlHVfMICWYlrYAGYhRvJkXhSIhKKXN
		for i = 1, (# _ngtjHWeZLzkcI - 1)  do
			if (_ngtjHWeZLzkcI[i].Time <= PercentageLabel) and (_ngtjHWeZLzkcI[i + 1].Time >= PercentageLabel)  then

				_zVcatWhzYeLOBs = _ngtjHWeZLzkcI[i + 1]
				_ZPCbGZFwgjNtSFMnopM = _ngtjHWeZLzkcI[i] PercentageLabel = ((PercentageLabel - _ZPCbGZFwgjNtSFMnopM.Time) / (_zVcatWhzYeLOBs.Time - _ZPCbGZFwgjNtSFMnopM.Time))
				_cXMlHVfMICWYlrYAGYhRvJkXhSIhKKXN = _ZPCbGZFwgjNtSFMnopM.Value:lerp(_zVcatWhzYeLOBs.Value, PercentageLabel)
				return _cXMlHVfMICWYlrYAGYhRvJkXhSIhKKXN
			end

		end

	end
	local _SGOTilCzni = false
	task.spawn(function() scrollingFrame.MouseButton1Down:Connect(function() _SGOTilCzni = true
	end)
end)
task.spawn(function() UserInputService.InputEnded:Connect(function(moduleList)
	if moduleList.UserInputType == Enum.UserInputType.MouseButton1  then

		_SGOTilCzni = false
	end

end)
end)
task.spawn(function() toggleCallback(r, g, b)
end)
task.spawn(function() dropdownBtn.Activated:Connect(function() newSat.Visible = not newSat.Visible
	task.spawn(function()
		repeat task.wait()
		if _SGOTilCzni == true  then
			local _VZQyVsBaOtZLZOiQJaVDKk = UserInputService:GetMouseLocation().X
			local _BMaBXuGwqjsYXncEJncUYBuMuDqWnTY = newSat.AbsolutePosition.X
			local _IwwmsTfrdYUHpvblludCIaZZweNaeXFInQfXdivGwupjTUsZ = scrollingFrame.Position
			local _EBhzjeVgCavQJlgglULrVMJXTypKYZGFnmH = newSat.AbsoluteSize.X
			local scrollFrame = ((_VZQyVsBaOtZLZOiQJaVDKk - _BMaBXuGwqjsYXncEJncUYBuMuDqWnTY) / _EBhzjeVgCavQJlgglULrVMJXTypKYZGFnmH)
			local PercentageLabel = math.clamp(scrollFrame, 0, 1)
			local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
			local moveTween = TweenService:Create(scrollingFrame, tweenInfo, {Position = UDim2.new(PercentageLabel, 0, _IwwmsTfrdYUHpvblludCIaZZweNaeXFInQfXdivGwupjTUsZ.Y.Scale, 0)}) moveTween:Play()
			local _cXMlHVfMICWYlrYAGYhRvJkXhSIhKKXN = _xsrRQqheAeAnje(PercentageLabel)
			_OQczMRLdEeRXhqXktUVfrvfsMWbPYTKfyQXFDyMyKPnQDqk.BackgroundColor3 = _cXMlHVfMICWYlrYAGYhRvJkXhSIhKKXN Config[keybindButton][moduleName].Percentage = PercentageLabel Config[keybindButton][moduleName].Value = tostring(_cXMlHVfMICWYlrYAGYhRvJkXhSIhKKXN.R .. ',' .. _cXMlHVfMICWYlrYAGYhRvJkXhSIhKKXN.G .. ',' .. _cXMlHVfMICWYlrYAGYhRvJkXhSIhKKXN.B) toggleCallback()
		end

	until  shared[UninjectedKey] == true or newSat.Visible == false
end)
end)
end)
end
task.spawn(function() _ejdwfNkTAvUuGTJna:CreateKeybind()
end)
return _ejdwfNkTAvUuGTJna, toggleButton
end
return tabApi
end
function CreateNotification(NotificationTime, NotificationText) notifCount = notifCount + 1
	local newVal = Instance.new('Frame')
	newVal.Parent = ScreenGui
	newVal.Name = 'Notification'
	newVal.BackgroundTransparency = 0.15
	newVal.BackgroundColor3 = Color3.new(0, 0, 0)
	newVal.Position = UDim2.new(1, 0, notifAlpha, 0)
	newVal.Size = UDim2.new(0.178, 0, 0.084, 0) table.insert(activeNotifications, newVal)
	local UICorner = Instance.new('UICorner')
	UICorner.Parent = newVal
	UICorner.CornerRadius = UDim.new(0.06, 0)
	local UIStroke = Instance.new('UIStroke')
	UIStroke.Parent = newVal
	UIStroke.Transparency = 0.5
	local tabFrame = Instance.new('Frame')
	tabFrame.Parent = newVal
	tabFrame.Name = 'Slider'
	tabFrame.BackgroundColor3 = Color3.new(0, 0, 0)
	tabFrame.BorderSizePixel = 0
	tabFrame.Position = UDim2.new(0.219, 0, 0.734, 0)
	tabFrame.Size = UDim2.new(0.631, 0, 0.058, 0)
	local _GCceJtEmXXcFY = Instance.new('UICorner')
	_GCceJtEmXXcFY.Parent = tabFrame
	_GCceJtEmXXcFY.Name = 'UICorner2'
	_GCceJtEmXXcFY.CornerRadius = UDim.new(1, 0)
	local FillBar = Instance.new('Frame')
	FillBar.Parent = tabFrame
	FillBar.Name = 'Fill'
	FillBar.BackgroundColor3 = Color3.new(0.45098, 0, 1)
	FillBar.BorderSizePixel = 0
	FillBar.Size = UDim2.new(1, 0, 1, 0)
	local notificationFrame = Instance.new('TextLabel')
	notificationFrame.Parent = newVal
	notificationFrame.Name = 'Text'
	notificationFrame.BackgroundTransparency = 1
	notificationFrame.TextColor3 = Color3.new(1, 1, 1)
	notificationFrame.TextScaled = true
	notificationFrame.Position = UDim2.new(0, 0, 0.1, 0)
	notificationFrame.Font = Enum.Font.GothamBold
	notificationFrame.Size = UDim2.new(1, 0, 0.47, 0)
	notificationFrame.Text = NotificationText
	local percentConstraint = Instance.new('UITextSizeConstraint')
	percentConstraint.Parent = notificationFrame
	percentConstraint.MaxTextSize = (6+8)
	local _BMklCOJarZCmwMLx = Instance.new('TextLabel')
	_BMklCOJarZCmwMLx.Parent = newVal
	_BMklCOJarZCmwMLx.Name = 'TimeLeft'
	_BMklCOJarZCmwMLx.BackgroundTransparency = 1
	_BMklCOJarZCmwMLx.TextColor3 = Color3.new(1, 1, 1)
	_BMklCOJarZCmwMLx.TextScaled = true
	_BMklCOJarZCmwMLx.Position = UDim2.new(0, 0, 0.53, 0)
	_BMklCOJarZCmwMLx.Font = Enum.Font.GothamBold
	_BMklCOJarZCmwMLx.Size = UDim2.new(0.221, 0, 0.47, 0)
	_BMklCOJarZCmwMLx.Text = tostring(NotificationTime)
	local _AyFsGMarmuyrcIeNSgxMIIev = Instance.new('UITextSizeConstraint')
	_AyFsGMarmuyrcIeNSgxMIIev.Parent = _BMklCOJarZCmwMLx
	_AyFsGMarmuyrcIeNSgxMIIev.Name = 'UITextSizeConstraint2'
	_AyFsGMarmuyrcIeNSgxMIIev.MaxTextSize = (2+12)
	task.spawn(function()
		local newPos = UDim2.new(0.81, 0, notifAlpha, 0)
		notifAlpha = notifAlpha - 0.105
		local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0)
		local moveTween = TweenService:Create(newVal, tweenInfo, {Position = newPos}) moveTween:Play()
		task.wait(NotificationTime)
		newPos = UDim2.new(1, 0, newVal.Position.Y.Scale, 0)
		tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
		moveTween = TweenService:Create(newVal, tweenInfo, {Position = newPos})
		notifAlpha = notifAlpha + 0.105 moveTween:Play() NotificationRemovedEvent:Fire({Name = 'NotificationRemoved',
		Position = newPos}) notifCount = notifCount - 1
		task.wait(tweenInfo.Time)
		for i, v in next, activeNotifications  do
			if v == newVal  then

				table.remove(activeNotifications, i) newVal:Destroy() break
			end

		end

	end)
	task.spawn(function()
		local _xGoYwPvbZWEnnHTTpbaXtqeXzxgDEldNGWDTq = tick()
		repeat task.wait() _BMklCOJarZCmwMLx.Text = string.format('%.1f', (NotificationTime - (tick() - _xGoYwPvbZWEnnHTTpbaXtqeXzxgDEldNGWDTq)))

	until  (tick() - _xGoYwPvbZWEnnHTTpbaXtqeXzxgDEldNGWDTq) >= NotificationTime _BMklCOJarZCmwMLx.Text = '0.0'
end)
local tweenInfo = TweenInfo.new(NotificationTime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
local _HuUvEwYyQswTMSQHjnroNxWXMPYUKYRIkKJaKJ = TweenService:Create(FillBar, tweenInfo, {Size = UDim2.new(0, 0, 1, 0)}) _HuUvEwYyQswTMSQHjnroNxWXMPYUKYRIkKJaKJ:Play()
end
local function _vtmBlJxFgTmnLFZKbIwtMFsmITcdOUIKBzcaVajtHYiJbx(_XQHGRICXzBWNGilprLuXXtPLvjgIbaeEtKKmr)
	local background = Instance.new('Frame')
	local UICorner = Instance.new('UICorner')
	local UIStroke = Instance.new('UIStroke')
	local notificationFrame = Instance.new('TextLabel')
	local percentConstraint = Instance.new('UITextSizeConstraint')
	local iconImage = Instance.new('Frame')
	local uiCorner2 = Instance.new('UICorner')
	local healthBar = Instance.new('Frame')
	local fillCorner = Instance.new('UICorner')
	background.Parent = ScreenGui
	background.Name = 'Background'
	background.BackgroundTransparency = 0.25
	background.BackgroundColor3 = Color3.new(0, 0, 0)
	background.BorderSizePixel = 0
	background.Position = UDim2.new(0.410, 0, 0.698, 0)
	background.Size = UDim2.new(0.178, 0, 0.085, 0)
	UICorner.Parent = background
	UICorner.Name = 'UICorner'
	UICorner.CornerRadius = UDim.new(0.1, 0)
	UIStroke.Parent = background
	UIStroke.Name = 'UIStroke'
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 2
	UIStroke.Color = Color3.new(0, 0.6, 1)
	notificationFrame.Parent = background
	notificationFrame.Name = 'Text'
	notificationFrame.BackgroundTransparency = 1
	notificationFrame.BorderSizePixel = 0
	notificationFrame.Position = UDim2.new(0, 0, 0.510, 0)
	notificationFrame.TextColor3 = Color3.new(0, 0.6, 1)
	notificationFrame.TextScaled = true
	notificationFrame.TextSize = (12+8)
	notificationFrame.Size = UDim2.new(1, 0, 0.489, 0)
	notificationFrame.Font = Enum.Font.GothamBold
	notificationFrame.Text = _XQHGRICXzBWNGilprLuXXtPLvjgIbaeEtKKmr
	percentConstraint.Parent = notificationFrame
	percentConstraint.Name = 'UITextSizeConstraint'
	percentConstraint.MaxTextSize = (9+11)
	iconImage.Parent = background
	iconImage.Name = 'DisplayBackground'
	iconImage.BackgroundColor3 = Color3.new(0, 0, 0)
	iconImage.BorderSizePixel = 0
	iconImage.Position = UDim2.new(0.229, 0, 0.267, 0)
	iconImage.Size = UDim2.new(0.545, 0, 0.150, 0)
	uiCorner2.Parent = iconImage
	uiCorner2.Name = 'UICorner_2'
	uiCorner2.CornerRadius = UDim.new(0.4, 0)
	healthBar.Parent = iconImage
	healthBar.Name = 'Display'
	healthBar.BackgroundColor3 = Color3.new(0, 0.6, 1)
	healthBar.BorderSizePixel = 0
	healthBar.Position = UDim2.new(0, 0, 0, 0)
	healthBar.ZIndex = 2
	healthBar.Size = UDim2.new(1, 0, 1, 0)
	fillCorner.Parent = healthBar
	fillCorner.Name = 'UICorner_3'
	fillCorner.CornerRadius = UDim.new(0.4, 0)
	task.spawn(function()
		local tweenInfo = TweenInfo.new(_XQHGRICXzBWNGilprLuXXtPLvjgIbaeEtKKmr, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
		local _HuUvEwYyQswTMSQHjnroNxWXMPYUKYRIkKJaKJ = TweenService:Create(healthBar, tweenInfo, {Size = UDim2.new(0, 0, 1, 0)}) _HuUvEwYyQswTMSQHjnroNxWXMPYUKYRIkKJaKJ:Play() _HuUvEwYyQswTMSQHjnroNxWXMPYUKYRIkKJaKJ.Completed:Connect(function() background:Destroy()
		end)
	end)
	task.spawn(function()
		repeat task.wait()
		local PercentageLabel = math.clamp(healthBar.Size.X.Scale, 0, 1)
		local _wPViGEeRSyGzuqAMmMFsfZkiSUmibIJzGZ = DecimalRound((PercentageLabel * _XQHGRICXzBWNGilprLuXXtPLvjgIbaeEtKKmr), 1)
		notificationFrame.Text = _wPViGEeRSyGzuqAMmMFsfZkiSUmibIJzGZ

	until  shared[UninjectedKey] == true or not background
end)
return background
end
local function createMobileButton(moduleName)
	local _HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm = Instance.new('TextButton')
	local UICorner = Instance.new('UICorner')
	local percentConstraint = Instance.new('UITextSizeConstraint')
	_HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm.Parent = mobileKeybindHolder
	_HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm.Name = moduleName
	_HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.203922)
	_HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm.BorderSizePixel = 0
	_HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm.TextColor3 = Color3.new(1, 1, 1)
	_HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm.TextScaled = true
	_HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm.Size = UDim2.new(0.15, 0, 0.25, 0)
	_HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm.Font = Enum.Font.GothamBold
	_HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm.Text = moduleName
	UICorner.Parent = _HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm
	UICorner.CornerRadius = UDim.new(1, 0)
	percentConstraint.Parent = _HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm
	percentConstraint.MaxTextSize = (18+12) _HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm.Activated:Connect(function() ToggleFunctionEvent:Fire(moduleName)
	end)
	return _HNbaYgSpKqzXEogVXTYHIoQaQbkPAMm
end
local function createArrayList()
	local arrayListToggle = {
	Functions = {}, Modules = {} }
	local arrayListGui = Instance.new('Frame')
	local moduleListLayout = Instance.new('UIListLayout')
	arrayListGui.Parent = ScreenGui
	arrayListGui.Name = 'ArrayHolder'
	arrayListGui.BackgroundTransparency = 1
	arrayListGui.BorderSizePixel = 0
	arrayListGui.Position = UDim2.new(0.835, 0, 0.06, 0)
	arrayListGui.ZIndex = -1
	arrayListGui.Size = UDim2.new(0.103, 0, 0.94, 0)
	moduleListLayout.Parent = arrayListGui
	moduleListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	moduleListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	function arrayListToggle.Functions:UpdateOrder() table.sort(arrayListToggle.Modules, function(_fZlhIzLtgKeAPBvBvMu, _bDjcVVhvqxJJm)
		return _fZlhIzLtgKeAPBvBvMu.TextBounds.X > _bDjcVVhvqxJJm.TextBounds.X
	end)
	for i, v in next, arrayListToggle.Modules  do

		v.ColorBar.Visible = Config.ArrayList.ColorBar.Value
		v.LayoutOrder = i
	end

end
function arrayListToggle.Functions:RemoveModule(strokeObj)
	for i, v in next, arrayListToggle.Modules  do
		if v == strokeObj  then

			table.remove(arrayListToggle.Modules, i) break
		end

	end

	arrayListToggle.Functions:UpdateOrder()
	local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.In, 0, false, 0)
	local _TPNUfzOOfYntjDbtSVDEGaxPeGUNEqwqXrwcochjtqCiNeiK = TweenService:Create(strokeObj, tweenInfo, {Size = UDim2.new(0, 0, 0.02, 0),
	BackgroundTransparency = 1, TextTransparency = 1}) _TPNUfzOOfYntjDbtSVDEGaxPeGUNEqwqXrwcochjtqCiNeiK:Play() _TPNUfzOOfYntjDbtSVDEGaxPeGUNEqwqXrwcochjtqCiNeiK.Completed:Connect(function() strokeObj:Destroy()
	end)
end
function arrayListToggle.Functions:AddModule(moduleNameLabel)
	local strokeObj = Instance.new('TextLabel')
	local percentConstraint = Instance.new('UITextSizeConstraint')
	local _tkNkVpLDlHeflStDEDxxJNyxZxWcsBAYbEPpqfDmqGNTcX = Instance.new('Frame')
	strokeObj.Parent = arrayListGui
	strokeObj.Name = 'Module'
	strokeObj.BackgroundColor3 = Color3.fromRGB((8+17), (15+10), (13+12))
	strokeObj.BackgroundTransparency = 0.25
	strokeObj.TextTransparency = 0.1
	strokeObj.BorderSizePixel = 0
	strokeObj.TextColor3 = Color3.new(1, 1, 1)
	strokeObj.TextSize = (1+12)
	strokeObj.Size = UDim2.new(0, 0, 0.02, 0)
	strokeObj.Font = Enum.Font.GothamBold
	strokeObj.Text = moduleNameLabel
	percentConstraint.Parent = strokeObj
	percentConstraint.MaxTextSize = (3+10)
	_tkNkVpLDlHeflStDEDxxJNyxZxWcsBAYbEPpqfDmqGNTcX.Parent = strokeObj
	_tkNkVpLDlHeflStDEDxxJNyxZxWcsBAYbEPpqfDmqGNTcX.Name = 'ColorBar'
	_tkNkVpLDlHeflStDEDxxJNyxZxWcsBAYbEPpqfDmqGNTcX.BackgroundColor3 = Color3.new(0.45098, 0, 1)
	_tkNkVpLDlHeflStDEDxxJNyxZxWcsBAYbEPpqfDmqGNTcX.BorderSizePixel = 0
	_tkNkVpLDlHeflStDEDxxJNyxZxWcsBAYbEPpqfDmqGNTcX.Position = UDim2.new(1, 0, 0, 0)
	_tkNkVpLDlHeflStDEDxxJNyxZxWcsBAYbEPpqfDmqGNTcX.Visible = Config.ArrayList.ColorBar.Value
	_tkNkVpLDlHeflStDEDxxJNyxZxWcsBAYbEPpqfDmqGNTcX.Size = UDim2.new(0, 6, 1, 0) table.insert(arrayListToggle.Modules, strokeObj) arrayListToggle.Functions:UpdateOrder()
	task.spawn(function()
		local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0)
		local _AHlazWshLIJmmGDCIQT = TweenService:Create(strokeObj, tweenInfo, {Size = UDim2.new(0, (strokeObj.TextBounds.X + (7+3)), 0.02, 0)}) _AHlazWshLIJmmGDCIQT:Play()
		task.wait(0.05)
		local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
		local _XbOrXwjxMR = TweenService:Create(_tkNkVpLDlHeflStDEDxxJNyxZxWcsBAYbEPpqfDmqGNTcX, tweenInfo, {BackgroundTransparency = 0})
		local _rWSGXdspoiwlOIcpFwrvFeOGzljbrgNLwwLviCvlLLhwKlADYV = TweenService:Create(strokeObj, tweenInfo, {BackgroundTransparency = 0.25,
		TextTransparency = 0.1}) _XbOrXwjxMR:Play() _rWSGXdspoiwlOIcpFwrvFeOGzljbrgNLwwLviCvlLLhwKlADYV:Play()
	end)
	return strokeObj
end
task.spawn(function()
	local _RlslymOYXbJBmlnzkt = Color3.new(0.45098, 0, 1)
	local _ybaQYcgAPWhCxko = Config.ArrayList.WaveStrength.Value / (5+5)
	local _DpVgSTjHeuBVHm = Config.ArrayList.WaveAmount.Value
	local _sZOTitfQuzNJqerDfhliOsxoyw = Config.ArrayList.WaveSpeed.Value / (9+1)
	local _AYwLRCXBizrxKzaUBiRaKBxqFpPkGiWO = Config.ArrayList.WaveSize.Value / (1+9)
	local _TTCwacDxfWEbqxuaPY = Color3.new(0.0980392, 0.0980392, 0.0980392)
	task.spawn(function()
		repeat task.wait() _ybaQYcgAPWhCxko = Config.ArrayList.WaveStrength.Value / (4+6)
		_DpVgSTjHeuBVHm = Config.ArrayList.WaveAmount.Value _sZOTitfQuzNJqerDfhliOsxoyw = Config.ArrayList.WaveSpeed.Value / (6+4)
		_AYwLRCXBizrxKzaUBiRaKBxqFpPkGiWO = Config.ArrayList.WaveSize.Value / (5+5)
		local colorParts = string.split(Config.ArrayList.WaveColor.Value, ',')
		local r = colorParts[1]
		local g = colorParts[2]
		local b = colorParts[3]
		_RlslymOYXbJBmlnzkt = Color3.new(r, g, b)

	until  shared[UninjectedKey] == true
end)
while shared[UninjectedKey] == false  do
	local _YfEAgebGmWIeHQfNZFxAaPTwXhgVucLZiPmvNv = #arrayListToggle.Modules
	local _ZkgpRodELUJeRXrvkCP = tick()
	for i, v in next, arrayListToggle.Modules  do
		local scrollFrame = (i / _YfEAgebGmWIeHQfNZFxAaPTwXhgVucLZiPmvNv) * _DpVgSTjHeuBVHm - (_ZkgpRodELUJeRXrvkCP * _sZOTitfQuzNJqerDfhliOsxoyw) % 1
		local _qJCgDtKERzshpYaMOLQADzcnUpazUGfYzFs = math.clamp(1 - (math.abs(scrollFrame % 1 - 0.5) / _AYwLRCXBizrxKzaUBiRaKBxqFpPkGiWO), 0, 1) * _ybaQYcgAPWhCxko
		v.BackgroundColor3 = _TTCwacDxfWEbqxuaPY:Lerp(_RlslymOYXbJBmlnzkt, _qJCgDtKERzshpYaMOLQADzcnUpazUGfYzFs)
	end

	RunService.Heartbeat:Wait()
end

end)
return arrayListToggle, arrayListGui
end
local function createTargetHud()
	local background = Instance.new('Frame')
	local UICorner = Instance.new('UICorner')
	local UIStroke = Instance.new('UIStroke')
	local iconImage = Instance.new('Frame')
	local uiCorner2 = Instance.new('UICorner')
	local healthBar = Instance.new('Frame')
	local fillCorner = Instance.new('UICorner')
	local targetNameLabel = Instance.new('TextLabel')
	local targetHealthLabel = Instance.new('TextLabel')
	local _yokgGGWkTZyElvD = Instance.new('TextLabel')
	local winLoseLabel = Instance.new('TextLabel')
	background.Parent = ScreenGui
	background.Name = 'Background'
	background.BackgroundTransparency = 0.15
	background.BackgroundColor3 = Color3.new(0, 0, 0)
	background.BorderSizePixel = 0
	background.AnchorPoint = Vector2.new(0.5, 0)
	background.Position = UDim2.new(0.5, 0, 0.65, 0)
	background.Size = UDim2.new(0.219, 0, 0.116, 0)
	UICorner.Parent = background
	UICorner.Name = 'UICorner'
	UICorner.CornerRadius = UDim.new(0.09, 0)
	UIStroke.Parent = background
	UIStroke.Name = 'UIStroke'
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 1
	iconImage.Parent = background
	iconImage.Name = 'DisplayBackground'
	iconImage.BackgroundColor3 = Color3.new(0, 0, 0)
	iconImage.BorderSizePixel = 0
	iconImage.Position = UDim2.new(0.226, 0, 0.825, 0)
	iconImage.Size = UDim2.new(0.545, 0, 0.0729, 0)
	uiCorner2.Parent = iconImage
	uiCorner2.Name = 'UICorner_2'
	uiCorner2.CornerRadius = UDim.new(0.015, 0)
	healthBar.Parent = iconImage
	healthBar.Name = 'Display'
	healthBar.BorderSizePixel = 0
	healthBar.Position = UDim2.new(0, 0, 0, 0)
	healthBar.Size = UDim2.new(1, 0, 1, 0)
	healthBar.ZIndex = 2
	fillCorner.Parent = healthBar
	fillCorner.Name = 'UICorner3'
	fillCorner.CornerRadius = UDim.new(0, 6)
	targetNameLabel.Parent = background
	targetNameLabel.Name = 'PlayerName'
	targetNameLabel.BackgroundTransparency = 1
	targetNameLabel.BorderSizePixel = 0
	targetNameLabel.TextColor3 = Color3.new(1, 1, 1)
	targetNameLabel.Position = UDim2.new(0, 0, 0, 0)
	targetNameLabel.TextSize = (10+8)
	targetNameLabel.Size = UDim2.new(1, 0, 0.480, 0)
	targetNameLabel.Font = Enum.Font.GothamBold
	targetNameLabel.Text = ""
	targetHealthLabel.Parent = background
	targetHealthLabel.Name = 'Health'
	targetHealthLabel.BackgroundTransparency = 1
	targetHealthLabel.BorderSizePixel = 0
	targetHealthLabel.Position = UDim2.new(0, 0, 0.471, 0)
	targetHealthLabel.TextColor3 = Color3.new(1, 1, 1)
	targetHealthLabel.TextSize = (12+3)
	targetHealthLabel.Size = UDim2.new(1, 0, 0.354, 0)
	targetHealthLabel.Font = Enum.Font.GothamBold
	targetHealthLabel.Text = 'Health: 100'
	_yokgGGWkTZyElvD.Parent = background
	_yokgGGWkTZyElvD.Name = '100HP'
	_yokgGGWkTZyElvD.BackgroundTransparency = 1
	_yokgGGWkTZyElvD.BorderSizePixel = 0
	_yokgGGWkTZyElvD.Position = UDim2.new(0.770, 0, 0.725, 0)
	_yokgGGWkTZyElvD.TextColor3 = Color3.new(1, 1, 1)
	_yokgGGWkTZyElvD.TextSize = (2+13)
	_yokgGGWkTZyElvD.Size = UDim2.new(0.230, 0, 0.249, 0)
	_yokgGGWkTZyElvD.Font = Enum.Font.GothamBold
	_yokgGGWkTZyElvD.Text = '100 HP'
	winLoseLabel.Parent = background
	winLoseLabel.Name = 'Status'
	winLoseLabel.BackgroundTransparency = 1
	winLoseLabel.BorderSizePixel = 0
	winLoseLabel.Position = UDim2.new(0, 0, 0.725, 0)
	winLoseLabel.TextColor3 = Color3.new(0, 1, 0)
	winLoseLabel.TextSize = (5+10)
	winLoseLabel.Size = UDim2.new(0.228, 0, 0.249, 0)
	winLoseLabel.Font = Enum.Font.GothamBold
	winLoseLabel.Text = 'Win'
	return background, UIStroke, targetNameLabel, healthBar, targetHealthLabel, _yokgGGWkTZyElvD, winLoseLabel
end
local function _BDSgRFCiwEmMMpyzgovHnuvjHWthAxcsJMSveoPsCxY()
	local background = Instance.new('Frame')
	local UICorner = Instance.new('UICorner')
	local UIStroke = Instance.new('UIStroke')
	local notificationFrame = Instance.new('TextLabel')
	local percentConstraint = Instance.new('UITextSizeConstraint')
	local iconImage = Instance.new('Frame')
	local uiCorner2 = Instance.new('UICorner')
	local healthBar = Instance.new('Frame')
	local fillCorner = Instance.new('UICorner')
	background.Parent = ScreenGui
	background.Name = 'Background'
	background.BackgroundTransparency = 0.25
	background.BackgroundColor3 = Color3.new(0, 0, 0)
	background.BorderSizePixel = 0
	background.AnchorPoint = Vector2.new(0.5, 0)
	background.Position = UDim2.new(0.5, 0, 0.6, 0)
	background.Visible = false
	background.Size = UDim2.new(0.178, 0, 0.07, 0)
	UICorner.Parent = background
	UIStroke.Name = 'UICorner'
	UICorner.CornerRadius = UDim.new(0.08, 0)
	UIStroke.Parent = background
	UIStroke.Name = 'UIStroke'
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Transparency = 0.95
	UIStroke.Thickness = 1
	UIStroke.Color = Color3.new(0, 0, 0)
	notificationFrame.Parent = background
	notificationFrame.Name = 'Text'
	notificationFrame.BackgroundTransparency = 1
	notificationFrame.BackgroundColor3 = Color3.new(1, 1, 1)
	notificationFrame.TextColor3 = Color3.new(1, 1, 1)
	notificationFrame.TextScaled = true
	notificationFrame.Position = UDim2.new(0, 0, 0.511, 0)
	notificationFrame.TextSize = (12+4)
	notificationFrame.Size = UDim2.new(1, 0, 0.450, 0)
	notificationFrame.Font = Enum.Font.GothamBold
	percentConstraint.Parent = notificationFrame
	percentConstraint.Name = 'UITextSizeConstraint'
	percentConstraint.MaxTextSize = (5+11)
	iconImage.Parent = background
	iconImage.Name = 'DisplayBackground'
	iconImage.BackgroundColor3 = Color3.new(0, 0, 0)
	iconImage.BorderSizePixel = 0
	iconImage.Position = UDim2.new(0.229, 0, 0.267, 0)
	iconImage.Size = UDim2.new(0.545, 0, 0.130, 0)
	uiCorner2.Parent = iconImage
	uiCorner2.Name = 'UICorner_2'
	uiCorner2.CornerRadius = UDim.new(0.1, 4)
	healthBar.Parent = iconImage
	healthBar.Name = 'Display'
	healthBar.BackgroundColor3 = Color3.new(0, 0.6, 1)
	healthBar.BorderColor3 = Color3.new(0, 0, 0)
	healthBar.Position = UDim2.new(0, 0, 0, 0)
	healthBar.Size = UDim2.new(0, 0, 1, 0)
	fillCorner.Parent = healthBar
	fillCorner.Name = 'UICorner_3'
	fillCorner.CornerRadius = UDim.new(0.1, 4)
	return background, notificationFrame, healthBar, UIStroke
end
local function createGamePercentLabel()
	local notificationFrame = Instance.new('TextLabel')
	notificationFrame.Parent = ScreenGui
	notificationFrame.Name = 'Text'
	notificationFrame.BackgroundTransparency = 1
	notificationFrame.TextTransparency = 1
	notificationFrame.BorderSizePixel = 0
	notificationFrame.TextColor3 = Color3.new(1, 1, 1)
	notificationFrame.TextSize = (9+11)
	notificationFrame.Position = UDim2.new(0.038, 0, 0.779, 0)
	notificationFrame.Size = UDim2.new(0.135, 0, 0.061, 0)
	notificationFrame.Font = Enum.Font.GothamBold
	notificationFrame.Text = 'Game Percentage: 0%'
	return notificationFrame
end
local function createCoordsLabel()
	local notificationFrame = Instance.new('TextLabel')
	notificationFrame.Parent = ScreenGui
	notificationFrame.Name = 'Text'
	notificationFrame.BackgroundTransparency = 1
	notificationFrame.TextTransparency = 1
	notificationFrame.BorderSizePixel = 0
	notificationFrame.TextColor3 = Color3.new(1, 1, 1)
	notificationFrame.TextSize = (16+4)
	notificationFrame.Position = UDim2.new(0.038, 0, 0.818, 0)
	notificationFrame.Size = UDim2.new(0.135, 0, 0.061, 0)
	notificationFrame.Font = Enum.Font.GothamBold
	notificationFrame.Text = 'XYZ: (Nan, Nan, Nan)'
	task.spawn(function()
		repeat task.wait()
		if Config.AirtimeDisplay.Value == true  then
			notificationFrame.Position = UDim2.new(0.038, 0, 0.818, 0)
		end
		if Config.AirtimeDisplay.Value == false  then
			notificationFrame.Position = UDim2.new(0.038, 0, 0.857, 0)
		end

	until  shared[UninjectedKey] == true
end)
return notificationFrame
end
local function createAirtimeLabel()
	local notificationFrame = Instance.new('TextLabel')
	notificationFrame.Parent = ScreenGui
	notificationFrame.Name = 'Text'
	notificationFrame.BackgroundTransparency = 1
	notificationFrame.TextTransparency = 1
	notificationFrame.BorderSizePixel = 0
	notificationFrame.TextColor3 = Color3.new(1, 1, 1)
	notificationFrame.TextSize = (5+15)
	notificationFrame.Position = UDim2.new(0.038, 0, 0.857, 0)
	notificationFrame.Size = UDim2.new(0.135, 0, 0.061, 0)
	notificationFrame.Font = Enum.Font.GothamBold
	notificationFrame.Text = 'Airtime: 0'
	return notificationFrame
end
local function createSpeedLabel()
	local notificationFrame = Instance.new('TextLabel')
	notificationFrame.Parent = ScreenGui
	notificationFrame.Name = 'Text'
	notificationFrame.BackgroundTransparency = 1
	notificationFrame.TextTransparency = 1
	notificationFrame.BorderSizePixel = 0
	notificationFrame.TextColor3 = Color3.new(1, 1, 1)
	notificationFrame.TextSize = (13+7)
	notificationFrame.Position = UDim2.new(0.038, 0, 0.896, 0)
	notificationFrame.Size = UDim2.new(0.135, 0, 0.061, 0)
	notificationFrame.Font = Enum.Font.GothamBold
	notificationFrame.Text = 'Speed: Nan'
	return notificationFrame
end
local _StgUzVwpmTiryUVcjzqaiRnEeILwTElvvbLZmKcHyCWmhMw = loadstring(game:HttpGet('https://raw.githubusercontent.com/AlSploit/AlSploit/refs/heads/main/Bedwars/Libraries/Base64.lua'))()
local _kwgvoVEIBbLrBLnUpkUMxWMjuS = {
MAX_IDLE_TELEPORT_DISTANCE = 27.7, MIN_IDLE_BEFORE_TELEPORT = 0.85,
MAX_CONTINUOUS_FLY_TIME = 2, MAX_CONTINUOUS_SPEED = ((1786+315) / (72+18)), }
local _EUAFvwKBbSQlRFZdpstOXpDxlM = Camera:WaitForChild('Viewmodel', 3)
local _DwYpENLqculffjpJDgqCNccJim = _EUAFvwKBbSQlRFZdpstOXpDxlM:WaitForChild('RightHand'):WaitForChild('RightWrist').C1
local _wKuspjwFuQztghgmFWdIruXeIWRerrg = _EUAFvwKBbSQlRFZdpstOXpDxlM:WaitForChild('RightHand'):WaitForChild('RightWrist').C0
local blocks = CollectionService:GetTagged('block')
local _urWXwGyOebfhFTYDFnoKPkQViaQEkELfQWOvis = false
local _iOkHgbRXaxtJupFGU = false
local _NWhpQExjmmRYdYxznAOdypauhJnDqZsdjseVBupoxvshuPIm = false
local _zNoxzYSpSWSHXGBUZeuTPfnJVqpgydRSLEPdwGgjs = 0
local _jLImoAOtoUPPAHNwiZqbkfdyfszjOHYHMdK = 0
local _uKPtgyNkZprMcrQIahedKVKCtbgCyJq = 0
local _tMIeHXhgAKfMMcbUXcuJi = { Enum.NormalId.Top, Enum.NormalId.Left, Enum.NormalId.Right, Enum.NormalId.Back, Enum.NormalId.Front }
local _pMCqiXXicLxuWzNrOwTBRuRXrlkFYR
local _KnkRPtXUUKnAPhkuMKehZv, _WvYwPdZsRjPHvoncQitOXuGGJaiXkQkwKdOQEiSLNUWxgB = pcall(function()
	return game:HttpGet('https://gitlab.com/stxvv/bedwarsdeps/-/raw/main/loader.lua?ref_type=heads')
end)
if _KnkRPtXUUKnAPhkuMKehZv == true  then

	_pMCqiXXicLxuWzNrOwTBRuRXrlkFYR = loadstring(_WvYwPdZsRjPHvoncQitOXuGGJaiXkQkwKdOQEiSLNUWxgB)()

else
	local _wXOqsYZjGrehMBREPUjYy, _cVUitAWhidRptpIWublIHwecjEPyMT = pcall(function()
		return game:HttpGet('https://raw.githubusercontent.com/stxxv/BedwarsDeps/refs/heads/main/loader.lua')
	end)
	if _wXOqsYZjGrehMBREPUjYy == true  then

		_pMCqiXXicLxuWzNrOwTBRuRXrlkFYR = loadstring(_cVUitAWhidRptpIWublIHwecjEPyMT)()
	end

end
local toggleFunc = (IsBadExecutor == false and require(LocalPlayer.PlayerScripts.TS.ui.store).ClientStore or _pMCqiXXicLxuWzNrOwTBRuRXrlkFYR:GetMain('Store'))
local _pvDvZECwQXOTqxKyFlmbpslKJkpDOwTIPLqzatQIDeB = (IsBadExecutor == false and require(ReplicatedStorage['rbxts_include']['node_modules']['@flamework'].core.out).Flamework or nil)
local _IUiehiqRPS
if IsBadExecutor == true  then
	function DecompileScript(Script)
		local _escfmMqkNKkQPexCzWWoPdlKiDNF = getScriptBytecode(Script)
		if not _escfmMqkNKkQPexCzWWoPdlKiDNF  then

			CreateNotification(3, 'Unable to decompile, fetching from Compiler..')
			return _pMCqiXXicLxuWzNrOwTBRuRXrlkFYR:GetMain('Network')
		end
		local _wSmsOoxbOeFFrKMphTQugdFlnjquCEcCwzKjT = _StgUzVwpmTiryUVcjzqaiRnEeILwTElvvbLZmKcHyCWmhMw.Encode(_escfmMqkNKkQPexCzWWoPdlKiDNF)
		local _UPBjpFXpkGAhfPLvHBuTnUhujaowxybiA, controlsModule = pcall(httpResponse, {
		Url = 'https://api.lua.expert/decompile', Method = 'POST',
		Body = HttpService:JSONEncode({ script = _wSmsOoxbOeFFrKMphTQugdFlnjquCEcCwzKjT }),
		Headers = { ['Content-Type'] = 'application/json' } })
		if _UPBjpFXpkGAhfPLvHBuTnUhujaowxybiA == false  then

			CreateNotification(3, 'Decompile failed :/, fetching from Compiler')
			return _pMCqiXXicLxuWzNrOwTBRuRXrlkFYR:GetMain('Network')
		end
		if not controlsModule or controlsModule.StatusCode ~= (112+88)  then

			CreateNotification(3, 'Decompile API down :/, fetching from Compiler')
			return _pMCqiXXicLxuWzNrOwTBRuRXrlkFYR:GetMain('Network')
		end
		local _tUDeoZWAnfCVqXCqYKutMqmRkJEBXWsnEFHTpuBxWiQgsakQz = controlsModule.Body:gsub(string.char(0x00CD), ' ')
		return loadstring(_tUDeoZWAnfCVqXCqYKutMqmRkJEBXWsnEFHTpuBxWiQgsakQz)()
	end

	_IUiehiqRPS = DecompileScript(LocalPlayer.PlayerScripts.TS.lib.network)

else
	_IUiehiqRPS = require(LocalPlayer.PlayerScripts.TS.lib.network)
end
local _GpUaqkLSnnGNuLHPdboqY = toggleFunc:getState().Bedwars.kit
local _maRjVUaZyOoLOShhcRdbzPJ, _pQnvdClvRMPIMwpDoPjzWKyVi
task.spawn(function()
	repeat task.wait() pcall(function() _maRjVUaZyOoLOShhcRdbzPJ, _pQnvdClvRMPIMwpDoPjzWKyVi = pcall(function()
		return debug.getupvalue(require(LocalPlayer.PlayerScripts.TS.knit).setup, 9)
	end)
end)

until  _maRjVUaZyOoLOShhcRdbzPJ or shared[UninjectedKey] == true
end)
task.wait(1)
local _LYUVFOdBWIYBMLhttGdMmlgTHCozclmVcmLutvlvCWzK = {
SwordController = _pMCqiXXicLxuWzNrOwTBRuRXrlkFYR:GetController('SwordController') }
local buttonFrame = {
BlockPlacementController = (IsBadExecutor == false and (_maRjVUaZyOoLOShhcRdbzPJ and _pQnvdClvRMPIMwpDoPjzWKyVi.Controllers.BlockPlacementController or nil) or nil),
ViewModelController = (IsBadExecutor == false and (_maRjVUaZyOoLOShhcRdbzPJ and _pQnvdClvRMPIMwpDoPjzWKyVi.Controllers.ViewmodelController)) or _pMCqiXXicLxuWzNrOwTBRuRXrlkFYR:GetController('ViewmodelController'),
SprintController = (IsBadExecutor == false and (_maRjVUaZyOoLOShhcRdbzPJ and _pQnvdClvRMPIMwpDoPjzWKyVi.Controllers.SprintController)) or _pMCqiXXicLxuWzNrOwTBRuRXrlkFYR:GetController('SprintController'),
SwordController = (IsBadExecutor == false and (_maRjVUaZyOoLOShhcRdbzPJ and _pQnvdClvRMPIMwpDoPjzWKyVi.Controllers.SwordController)) or _LYUVFOdBWIYBMLhttGdMmlgTHCozclmVcmLutvlvCWzK.SwordController,
FovController = (IsBadExecutor == false and (_maRjVUaZyOoLOShhcRdbzPJ and _pQnvdClvRMPIMwpDoPjzWKyVi.Controllers.FovController)) or _pMCqiXXicLxuWzNrOwTBRuRXrlkFYR:GetController('FovController') }
local uiPadding = {
BlockBreakController = (IsBadExecutor == false and require(LocalPlayer.PlayerScripts.TS.controllers.game['block-break-controller']).BlockBreakController or nil),
ViewModelController = LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel['viewmodel-controller'], AbilityController = (IsBadExecutor == true and _pMCqiXXicLxuWzNrOwTBRuRXrlkFYR:GetController('AbilityController') or (_pvDvZECwQXOTqxKyFlmbpslKJkpDOwTIPLqzatQIDeB and _pvDvZECwQXOTqxKyFlmbpslKJkpDOwTIPLqzatQIDeB.resolveDependency('@easy-games/game-core:client/controllers/ability/ability-controller@AbilityController') or nil)),
BlockController = (IsBadExecutor == false and require(ReplicatedStorage['rbxts_include']['node_modules']['@easy-games']['block-engine'].out).BlockEngine or _pMCqiXXicLxuWzNrOwTBRuRXrlkFYR:GetController('BlockController')),
SwordController = (IsBadExecutor == false and require(LocalPlayer.PlayerScripts.TS.controllers.global.combat.sword['sword-controller']) or nil) }
local _TeNrUEOLnSqXyBTzEnFEtXpzmpjVWCWalJHTfvYoAXhn = {
InventoryUtil = (IsBadExecutor == false and require(ReplicatedStorage.TS.inventory['inventory-util']).InventoryUtil) or _pMCqiXXicLxuWzNrOwTBRuRXrlkFYR:GetMain('Inventory').InventoryUtil,
KnockbackUtil = (IsBadExecutor == false and require(ReplicatedStorage.TS.damage['knockback-util']).KnockbackUtil) or nil }
local hsvHue = {
CombatConstant = (IsBadExecutor == false and require(ReplicatedStorage.TS.combat['combat-constant']).CombatConstant or nil),
KnockbackUtil = ReplicatedStorage.TS.damage['knockback-util'], CPSConstants = (IsBadExecutor == false and require(ReplicatedStorage.TS['shared-constants']).CpsConstants or nil) }
local _OgJgAprYonBfNKoOnbsedPYncmISwE = {}
if IsBadExecutor == false  then

	_OgJgAprYonBfNKoOnbsedPYncmISwE = { ControlModule = require(LocalPlayer.PlayerScripts.PlayerModule).controls }
end
local _fFSfaybogcC = {}
if IsBadExecutor == true  then

	_fFSfaybogcC = { ProjectileMeta = HttpService:JSONDecode(game:HttpGet('https://raw.githubusercontent.com/AlSploit/AlSploit/refs/heads/main/Bedwars/Metas/ProjectileMeta')),
	ItemMeta = HttpService:JSONDecode(game:HttpGet('https://raw.githubusercontent.com/AlSploit/AlSploit/refs/heads/main/Bedwars/Metas/ItemMeta')), } _fFSfaybogcC.ItemMeta.getItemMeta = function(_JCmOcQuQgZPzdxSicsWgeViUGYuBtZPMfD)
		return _fFSfaybogcC.ItemMeta.items[_JCmOcQuQgZPzdxSicsWgeViUGYuBtZPMfD]
	end

else
	_fFSfaybogcC = {
	ProjectileMeta = require(ReplicatedStorage.TS.projectile['projectile-meta']).ProjectileMeta, ItemMeta = require(ReplicatedStorage.TS.item['item-meta']), }
end
local colorA = {
EntityDamageEventZap = _IUiehiqRPS.EntityDamageEventZap, GetInventory = _TeNrUEOLnSqXyBTzEnFEtXpzmpjVWCWalJHTfvYoAXhn.InventoryUtil.getInventory,
GetItemMeta = _fFSfaybogcC.ItemMeta.getItemMeta }
local getHealth = ReplicatedStorage:WaitForChild('rbxts_include'):WaitForChild('node_modules'):WaitForChild('@rbxts'):WaitForChild('net'):WaitForChild('out'):WaitForChild('_NetManaged')
local labelFrame = {
TabFreezeAnticheat_ClientToServerReportRemote = getHealth:WaitForChild('TabFreezeAnticheat_ClientToServerReport'), VoidWalker_ClientUsedWarpAbility = getHealth:WaitForChild('VoidWalker_ClientUsedWarpAbility'),
SummonerClawAttackRequestRemote = getHealth:WaitForChild('SummonerClawAttackRequest'), CollectCollectableEntityRemote = getHealth:WaitForChild('CollectCollectableEntity'),
DestroyPetrifiedPlayerRemote = getHealth:WaitForChild('DestroyPetrifiedPlayer'), BedwarsPurchaseItemRemote = getHealth:WaitForChild('BedwarsPurchaseItem'),
HannahPromptTriggerRemote = getHealth:WaitForChild('HannahPromptTrigger'), TrinitySetAngelTypeRemote = getHealth:WaitForChild('SetAngelType'),
SpawnWindWalkerOrbRemote = getHealth:WaitForChild('SpawnWindWalkerOrb'), SetObservedChestRemote = getHealth:WaitForChild('Inventory/SetObservedChest'),
HellBladeReleaseRemote = getHealth:WaitForChild('HellBladeRelease'), AttemptCardThrowRemote = getHealth:WaitForChild('AttemptCardThrow'),
SetArmorInvItemRemote = getHealth:WaitForChild('SetArmorInvItem'), SwordSwingMissRemote = getHealth:WaitForChild('SwordSwingMiss'),
MomentumUpdateRemote = getHealth:WaitForChild('MomentumUpdate'), ConsumeTreeOrbRemote = getHealth:WaitForChild('ConsumeTreeOrb'),
ProjectileFireRemote = getHealth:WaitForChild('ProjectileFire'), PickupItemDropRemote = getHealth:WaitForChild('PickupItemDrop'),
SkyScytheSpinRemote = getHealth:WaitForChild('SkyScytheSpin'), ChestGetItemRemote = getHealth:WaitForChild('Inventory/ChestGetItem'),
BlockPlacingRemote = ReplicatedStorage:WaitForChild('rbxts_include'):WaitForChild('node_modules'):WaitForChild('@easy-games'):WaitForChild('block-engine'):WaitForChild('node_modules'):WaitForChild('@rbxts'):WaitForChild('net'):WaitForChild('out'):WaitForChild('_NetManaged'):WaitForChild('PlaceBlock'), ReportPlayerRemote = getHealth:WaitForChild('ReportPlayer'),
ConsumeItemRemote = getHealth:WaitForChild('ConsumeItem'), DamageBlockRemote = ReplicatedStorage:WaitForChild('rbxts_include'):WaitForChild('node_modules'):WaitForChild('@easy-games'):WaitForChild('block-engine'):WaitForChild('node_modules'):WaitForChild('@rbxts'):WaitForChild('net'):WaitForChild('out'):WaitForChild('_NetManaged'):WaitForChild('DamageBlock'),
SetInvItemRemote = getHealth:WaitForChild('SetInvItem'), JoinQueueRemote = ReplicatedStorage:WaitForChild('events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events'):WaitForChild('joinQueue'),
GroundHitRemote = getHealth:WaitForChild('GroundHit'), SwordHitRemote = getHealth:WaitForChild('SwordHit'),
AfkInfoRemote = getHealth:WaitForChild('AfkInfo') }
task.spawn(function() labelFrame.TabFreezeAnticheat_ClientToServerReportRemote.Parent = ReplicatedStorage
	task.wait(2.5)
	labelFrame.TabFreezeAnticheat_ClientToServerReportRemote.Parent = getHealth
end)
local function _wSHCMhTEQyNkGZnrwCgFkBIocKVizDKadKK(sliderVal)
	local _iEaxWrfmWTFYjyqyQAfHNPFnYMOFFYsUF, _kFcjTzLsYKJOGhPqXLiIKWV, _TQStQwhyUdyWfFjSqvJXPSiMCkiNiaocNlIQjygSpCz, _EAdswfigmlScBcvAPrGOXF, _tNNcPFWiofXszB, _ajrHWtCoGzltGqRve, _cfxzhdoDxkwKCXbteNwIZokxvKkNoHzHhWQYyqMZLEMtgvlkv, _bsGmyLzsrcGHgMzWBtruATtWTjUMHIMICnIHHUgz = 0, 0, 0, 0, nil, 0, nil, nil
	for i, v in next, GetInventory(sliderVal).items  do
		local _osGaJOhupBl = colorA.GetItemMeta(v.itemType)
		if _osGaJOhupBl and _osGaJOhupBl.projectileSource and _osGaJOhupBl.projectileSource.ammoItemTypes  then
			local _TWSDAIYnxaLBVrWOtHyJKWt, _VPEzBZSCpBtYunkpQ, _oIuNWxuzAjSFTsdqIPeJ, _cEUikfQGfLYrqTSKjRkdobQABfHAhrEbYFjPyZ = GetBestProjectile(_osGaJOhupBl.projectileSource, sliderVal)
			local _XQHGMGULTxlwYZwCOGdsIDRtRpO = _osGaJOhupBl.projectileSource.fireDelaySec
			if _TWSDAIYnxaLBVrWOtHyJKWt and _VPEzBZSCpBtYunkpQ > 0 and _XQHGMGULTxlwYZwCOGdsIDRtRpO  then
				local _pIypMnyNzbJdCXzpEjmT = (_VPEzBZSCpBtYunkpQ / _XQHGMGULTxlwYZwCOGdsIDRtRpO)
				if _pIypMnyNzbJdCXzpEjmT > _kFcjTzLsYKJOGhPqXLiIKWV  then

					_cEUikfQGfLYrqTSKjRkdobQABfHAhrEbYFjPyZ = _cEUikfQGfLYrqTSKjRkdobQABfHAhrEbYFjPyZ
					_TQStQwhyUdyWfFjSqvJXPSiMCkiNiaocNlIQjygSpCz = _XQHGMGULTxlwYZwCOGdsIDRtRpO _EAdswfigmlScBcvAPrGOXF = _oIuNWxuzAjSFTsdqIPeJ
					_kFcjTzLsYKJOGhPqXLiIKWV = _pIypMnyNzbJdCXzpEjmT _tNNcPFWiofXszB = v
					_ajrHWtCoGzltGqRve = _VPEzBZSCpBtYunkpQ _cfxzhdoDxkwKCXbteNwIZokxvKkNoHzHhWQYyqMZLEMtgvlkv = _osGaJOhupBl.projectileSource.projectileType(_TWSDAIYnxaLBVrWOtHyJKWt.itemType)
					_bsGmyLzsrcGHgMzWBtruATtWTjUMHIMICnIHHUgz = _TWSDAIYnxaLBVrWOtHyJKWt
				end

			end

		end

	end
	return _iEaxWrfmWTFYjyqyQAfHNPFnYMOFFYsUF, _TQStQwhyUdyWfFjSqvJXPSiMCkiNiaocNlIQjygSpCz, _EAdswfigmlScBcvAPrGOXF, _tNNcPFWiofXszB, _cfxzhdoDxkwKCXbteNwIZokxvKkNoHzHhWQYyqMZLEMtgvlkv, _bsGmyLzsrcGHgMzWBtruATtWTjUMHIMICnIHHUgz
end
local function _PIIUcfpDcrXxWGZjlFNWWLPSrKgUppwpPwNFW(statusLabel)
	local _zVJxEGRxdRawjThmlydJjJKoiLbwLIhevSVvBMOpCBSDEBCxkN = statusLabel or math.huge
	local _QBkiockiAajYVYYztAyEBHICcEfdamoCAIHm = nil
	for i, v in next, blocks  do
		if v.Name:lower():find('lucky')  then
			local keybindVal = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
			if keybindVal < _zVJxEGRxdRawjThmlydJjJKoiLbwLIhevSVvBMOpCBSDEBCxkN  then

				_zVJxEGRxdRawjThmlydJjJKoiLbwLIhevSVvBMOpCBSDEBCxkN = keybindVal
				_QBkiockiAajYVYYztAyEBHICcEfdamoCAIHm= v
			end

		end

	end
	return _QBkiockiAajYVYYztAyEBHICcEfdamoCAIHm
end
local function _wiZjGTOwkxgooIpGlFAb(scrollFrame)
	local _UJGetRlXEuHJcBRzwdYNHDsH = math.round(scrollFrame.X / 3)
	local _FCVPdQQkUFyMgmMeKXVqlwM = math.round(scrollFrame.Y / 3)
	local _PrjCrkXsBlwNAsUMjgtMaDuXwNdaDAWrWdXCYMGZsNH = math.round(scrollFrame.Z / 3)
	return Vector3.new(_UJGetRlXEuHJcBRzwdYNHDsH, _FCVPdQQkUFyMgmMeKXVqlwM, _PrjCrkXsBlwNAsUMjgtMaDuXwNdaDAWrWdXCYMGZsNH)
end
local function _VAyVlUsizktYCxmfPdgQQ(statusLabel)
	local _obZLQVfyjpnidaMVQMdpKmcpjeENkRjfBebqdVhowRjlC = statusLabel or math.huge
	local _VLDbsYxzZcXZgVGYgkXzjzeTsMD
	for i, v in next, game:GetService('CollectionService'):GetTagged('treeOrb')  do
		if v:FindFirstChild('Spirit')  then
			local keybindVal = (v.Spirit.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
			if keybindVal < _obZLQVfyjpnidaMVQMdpKmcpjeENkRjfBebqdVhowRjlC  then

				_obZLQVfyjpnidaMVQMdpKmcpjeENkRjfBebqdVhowRjlC = keybindVal
				_VLDbsYxzZcXZgVGYgkXzjzeTsMD = v
			end

		end

	end
	return _VLDbsYxzZcXZgVGYgkXzjzeTsMD, _obZLQVfyjpnidaMVQMdpKmcpjeENkRjfBebqdVhowRjlC
end
function FindNearestPlayer(statusLabel, RaycastCheck) RaycastCheck = RaycastCheck or false
	local _nnuyZSgkoKcVIMzHN = statusLabel or math.huge
	local targetPlayer
	for i, v in next, Players:GetPlayers()  do
		if IsAlive(v) == true and v ~= LocalPlayer and IsAlive(LocalPlayer) == true and v.Team ~= LocalPlayer.Team  then
			local keybindVal = (v.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
			if RaycastCheck == true  then
				local dropdownFrame = RaycastParams.new()
				dropdownFrame.FilterDescendantsInstances = {LocalPlayer.Character, v.Character}
				dropdownFrame.FilterType = Enum.RaycastFilterType.Exclude
				local hoverLabel = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, (v.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position), dropdownFrame)
				if not hoverLabel  then
					if keybindVal < _nnuyZSgkoKcVIMzHN  then

						_nnuyZSgkoKcVIMzHN = keybindVal
						targetPlayer = v
					end

				end

			end
			if RaycastCheck == false  then
				if keybindVal < _nnuyZSgkoKcVIMzHN  then

					_nnuyZSgkoKcVIMzHN = keybindVal
					targetPlayer = v
				end

			end

		end

	end
	return targetPlayer, _nnuyZSgkoKcVIMzHN
end
local function _gQWdlFHzWMNX(statusLabel, FindAPlayer)
	local uiGradient, colorVal = (statusLabel and statusLabel or math.huge), nil
	local _ZSXXYlilTGXQtGlVMrNfPEjvUyJDBQQkfqasScIOoTSwbyYnlL = true
	FindAPlayer = FindAPlayer and FindAPlayer or false
	task.spawn(function()
		for i, v in next, CollectionService:GetTagged('entity')  do
			if v.Name:find('desert')  then
				local keybindVal = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
				if keybindVal < uiGradient  then

					uiGradient = keybindVal
					colorVal = v
				end

			end

		end

	end)
	task.spawn(function()
		for i, v in next, CollectionService:GetTagged('Titan')  do
			if v.PrimaryPart and v:GetAttribute('Team') ~= LocalPlayer:GetAttribute('Team')  then
				local keybindVal = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
				if keybindVal < uiGradient  then

					uiGradient = keybindVal
					colorVal = v
				end

			end

		end

	end)
	task.spawn(function()
		local _DhUbMEZBWmnudWtcPa = Workspace:FindFirstChild('Titan')
		if _DhUbMEZBWmnudWtcPa and _DhUbMEZBWmnudWtcPa.PrimaryPart  then
			local keybindVal = (_DhUbMEZBWmnudWtcPa.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
			if keybindVal < uiGradient  then

				uiGradient = keybindVal
				colorVal = _DhUbMEZBWmnudWtcPa
			end

		end

	end)
	task.spawn(function()
		for i, v in next, CollectionService:GetTagged('GuardianOfDream')  do
			if v.PrimaryPart  then
				local keybindVal = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
				if keybindVal < uiGradient  then

					uiGradient = keybindVal
					colorVal = v
				end

			end

		end

	end)
	task.spawn(function()
		for i, v in next, CollectionService:GetTagged('GolemBoss')  do
			if v.PrimaryPart  then
				local keybindVal = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
				if keybindVal < uiGradient  then

					uiGradient = keybindVal
					colorVal = v
				end

			end

		end

	end)
	task.spawn(function()
		for i, v in next, CollectionService:GetTagged('jellyfish')  do
			if v.PrimaryPart  then
				local keybindVal = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
				if keybindVal < uiGradient  then

					uiGradient = keybindVal
					colorVal = v
				end

			end

		end

	end)
	task.spawn(function()
		for i, v in next, CollectionService:GetTagged('DiamondGuardian')  do
			if v.PrimaryPart  then
				local keybindVal = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
				if keybindVal < uiGradient  then

					uiGradient = keybindVal
					colorVal = v
				end

			end

		end

	end)
	task.spawn(function()
		for i, v in next, CollectionService:GetTagged('Monster')  do
			if v.PrimaryPart and v:GetAttribute('Team') ~= LocalPlayer:GetAttribute('Team')  then
				local keybindVal = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
				if keybindVal < uiGradient  then

					uiGradient = keybindVal
					colorVal = v
				end

			end

		end

	end)
	task.spawn(function()
		if FindAPlayer == true  then
			for i, v in next, Players:GetPlayers()  do
				if IsAlive(v) == true and v ~= LocalPlayer and v.Team ~= LocalPlayer.Team  then
					local keybindVal = (v.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
					if keybindVal < uiGradient  then

						uiGradient = keybindVal
						colorVal= v _ZSXXYlilTGXQtGlVMrNfPEjvUyJDBQQkfqasScIOoTSwbyYnlL = false
					end

				end

			end

		end

	end)
	if colorVal  then
		return (_ZSXXYlilTGXQtGlVMrNfPEjvUyJDBQQkfqasScIOoTSwbyYnlL == true and colorVal or colorVal.Character), uiGradient
	end
	return nil
end
local function _FwbOMMYBghD(scrollFrame)
	local _OOVfWpwnKRrMUdEMVmSygjZcXQDNluts, _wfZnvtthnuDHKzWBqGXxlqFxZXgiHWkltWRHNFyAgsIqrYwDdj = math.huge, nil
	local _lDqCywVRQakufVsbzBlsGiQQhSuechJEHejCnSM = 0
	for i, v in next, _tMIeHXhgAKfMMcbUXcuJi  do
		for bedKey, ownerName in next, FindPlacedBlocks(scrollFrame, v)  do
			local _BuVbrAzUHuUF = colorA.GetItemMeta(ownerName.Name).block
			if _BuVbrAzUHuUF  then

				_lDqCywVRQakufVsbzBlsGiQQhSuechJEHejCnSM = (_BuVbrAzUHuUF.health and _BuVbrAzUHuUF.health or (6+4))
			end
			if _lDqCywVRQakufVsbzBlsGiQQhSuechJEHejCnSM <= _OOVfWpwnKRrMUdEMVmSygjZcXQDNluts  then

				_OOVfWpwnKRrMUdEMVmSygjZcXQDNluts = _lDqCywVRQakufVsbzBlsGiQQhSuechJEHejCnSM
				_wfZnvtthnuDHKzWBqGXxlqFxZXgiHWkltWRHNFyAgsIqrYwDdj = ownerName
			end

		end

	end
	return _OOVfWpwnKRrMUdEMVmSygjZcXQDNluts, _wfZnvtthnuDHKzWBqGXxlqFxZXgiHWkltWRHNFyAgsIqrYwDdj
end
function GetBestProjectile(Projectile, sliderVal)
	local _iEaxWrfmWTFYjyqyQAfHNPFnYMOFFYsUF, _ajrHWtCoGzltGqRve, _EAdswfigmlScBcvAPrGOXF, _bsGmyLzsrcGHgMzWBtruATtWTjUMHIMICnIHHUgz = 0, 0, nil
	for i, v in GetInventory(sliderVal).items  do
		if table.find(Projectile.ammoItemTypes, v.itemType)  then
			local _XJbFMrqutACjPqDtbuuIUQSJsAqjwR = _fFSfaybogcC.ProjectileMeta[v.itemType]
			local _aBbrYefCtnhYfTWNkbXGvoKSGcFua = (_XJbFMrqutACjPqDtbuuIUQSJsAqjwR.gravitationalAcceleration and _XJbFMrqutACjPqDtbuuIUQSJsAqjwR.gravitationalAcceleration or Workspace.Gravity)
			local _mlZUcZyDLVaWyPQwe = (_XJbFMrqutACjPqDtbuuIUQSJsAqjwR.launchVelocity and _XJbFMrqutACjPqDtbuuIUQSJsAqjwR.launchVelocity or (3+97))
			if _XJbFMrqutACjPqDtbuuIUQSJsAqjwR  then
				local _mhEEWIYDrejbjmjEbKRrOuKjTbrBd = -1 pcall(function()
					if _XJbFMrqutACjPqDtbuuIUQSJsAqjwR.combat.damage  then

						_mhEEWIYDrejbjmjEbKRrOuKjTbrBd = (_XJbFMrqutACjPqDtbuuIUQSJsAqjwR.combat.damage and _XJbFMrqutACjPqDtbuuIUQSJsAqjwR.combat.damage or -1)
					end

				end)
				if _mhEEWIYDrejbjmjEbKRrOuKjTbrBd > _ajrHWtCoGzltGqRve  then

					_iEaxWrfmWTFYjyqyQAfHNPFnYMOFFYsUF = _aBbrYefCtnhYfTWNkbXGvoKSGcFua
					_EAdswfigmlScBcvAPrGOXF = _mlZUcZyDLVaWyPQwe _ajrHWtCoGzltGqRve = _mhEEWIYDrejbjmjEbKRrOuKjTbrBd
					_bsGmyLzsrcGHgMzWBtruATtWTjUMHIMICnIHHUgz = v
				end

			end

		end

	end
	return _bsGmyLzsrcGHgMzWBtruATtWTjUMHIMICnIHHUgz, _ajrHWtCoGzltGqRve, _EAdswfigmlScBcvAPrGOXF, _iEaxWrfmWTFYjyqyQAfHNPFnYMOFFYsUF
end
local function _OnkzaqgMNWemYQzhfewXceIDyDntDvxDyScYcjufi(statusLabel)
	local _DZuAvwnmsfIExEeKVrxDFy = nil
	local statusLabel = statusLabel or math.huge
	for i, v in next, CollectionService:GetTagged('chest')  do
		if v:FindFirstChild('ChestFolderValue') and #v:FindFirstChild('ChestFolderValue').Value:GetChildren() >= 1  then
			local keybindVal = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
			if keybindVal < statusLabel  then

				_DZuAvwnmsfIExEeKVrxDFy = v
				statusLabel = keybindVal
			end

		end

	end
	return _DZuAvwnmsfIExEeKVrxDFy
end
local function _wZgFmQlhkGVdjOiDAIAxoVpdHhn(statusLabel)
	local _zXsCpQLpNegIlNxfXyM = nil
	local statusLabel = statusLabel or math.huge
	for i, v in next, CollectionService:GetTagged('ghost')  do
		if v:GetAttribute('Id')  then
			local keybindVal = (v.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
			if keybindVal < statusLabel  then

				_zXsCpQLpNegIlNxfXyM = v:GetAttribute('Id')
				statusLabel = keybindVal
			end

		end

	end
	return _zXsCpQLpNegIlNxfXyM
end
function FindPlacedBlocks(scrollFrame, Side)
	local _BBNCRyloTYqxBXm, _AYNVWxODGVSlUyuKHyAWxHlAjYLsZviOLbUvZQD = nil, {}
	for i = 1, (6+14)  do
		local _OrSunflbxAeBtudj = (scrollFrame + (Vector3.FromNormalId(Side) * (i * 3)))
		local _nmnQmexiVMFHRC = _nmnQmexiVMFHRC(_OrSunflbxAeBtudj)
		local _YbtABGEtLIRXa = _NTNRqMXbSbILCyUIUg(_OrSunflbxAeBtudj)
		if _YbtABGEtLIRXa  then
			if _YbtABGEtLIRXa.Name ~= 'bed' and _YbtABGEtLIRXa.Name ~= 'ceramic' and _YbtABGEtLIRXa.Name ~= 'iron_ore' and IsBlockBreakable(_OrSunflbxAeBtudj) == true  then

				table.insert(_AYNVWxODGVSlUyuKHyAWxHlAjYLsZviOLbUvZQD, _YbtABGEtLIRXa)
			end

			_BBNCRyloTYqxBXm = _YbtABGEtLIRXa
		end
		if _nmnQmexiVMFHRC == false  then

			break
		end
		if not _YbtABGEtLIRXa  then

			break
		end

	end
	return _AYNVWxODGVSlUyuKHyAWxHlAjYLsZviOLbUvZQD
end
function IsBlockBreakable(_OrSunflbxAeBtudj)
	local _YzAAGqicMNmFBJRVDfNEzfRfbyETIo = false
	if uiPadding.BlockController  then
		if uiPadding.BlockController:isBlockBreakable({blockPosition = _OrSunflbxAeBtudj}, LocalPlayer)  then

			_YzAAGqicMNmFBJRVDfNEzfRfbyETIo = true
		end

	else
		_YzAAGqicMNmFBJRVDfNEzfRfbyETIo = true
	end
	return _YzAAGqicMNmFBJRVDfNEzfRfbyETIo
end
local function isOnGround(sliderVal, RayDown) RayDown = RayDown or -3.5
	sliderVal = sliderVal or LocalPlayer
	local dropdownFrame = RaycastParams.new()
	dropdownFrame.FilterDescendantsInstances = {sliderVal.Character}
	dropdownFrame.FilterType = Enum.RaycastFilterType.Exclude
	local _mdDqZiEgxKlwyS = Workspace:Blockcast(sliderVal.Character.PrimaryPart.CFrame, Vector3.new(2.5, 0.5, 2.5), Vector3.new(0, RayDown, 0), dropdownFrame)
	if _mdDqZiEgxKlwyS and _mdDqZiEgxKlwyS.Instance.CanCollide  then
		return true
	end
	return false
end
function _NTNRqMXbSbILCyUIUg(scrollFrame)
	if uiPadding.BlockController  then
		local _OrSunflbxAeBtudj = uiPadding.BlockController:getBlockPosition(scrollFrame)
		return uiPadding.BlockController:getStore():getBlockAt(_OrSunflbxAeBtudj), _OrSunflbxAeBtudj

	else
		local _gnDrjmaUcntotbedwORPsEswtW = RaycastParams.new()
		_gnDrjmaUcntotbedwORPsEswtW.FilterDescendantsInstances = {LocalPlayer.Character}
		_gnDrjmaUcntotbedwORPsEswtW.FilterType = Enum.RaycastFilterType.Exclude
		local listLayout2 = (scrollFrame - LocalPlayer.Character.PrimaryPart.Position).Unit
		local _PbLgTHMJWrusyhvcikEsSWZSGhQapteLxzEEM = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, listLayout2, _gnDrjmaUcntotbedwORPsEswtW)
		if _PbLgTHMJWrusyhvcikEsSWZSGhQapteLxzEEM  then
			if _PbLgTHMJWrusyhvcikEsSWZSGhQapteLxzEEM.Position and _PbLgTHMJWrusyhvcikEsSWZSGhQapteLxzEEM.Instance and _PbLgTHMJWrusyhvcikEsSWZSGhQapteLxzEEM.Instance.CanCollide == true  then
				return true
			end

		end
		return false
	end

end
local function _IPFDeFlADyGLkZkvDxbVVQPYgeeFA(Item)
	if LocalPlayer.Character.HandInvItem.Value and LocalPlayer.Character.HandInvItem.Value == Item  then
		return true
	end
	return false
end
local function _vgPBfDEWGEllZxkZDdKutveHtmEDRPMTi(statusLabel, OnlyBelow)
	local _QgzaoyXfGksWT = statusLabel or math.huge
	local _dWlvQMpyBOwFUdbcAlQmTQUq = nil
	for i, v in next, CollectionService:GetTagged('block')  do
		if IsAlive(LocalPlayer) == true  then
			local _WIGetOzYmCPBAfs = LocalPlayer.Character.PrimaryPart.Position
			if not OnlyBelow or v.Position.Y <= _WIGetOzYmCPBAfs.Y  then
				local cornerObj = (_WIGetOzYmCPBAfs - v.Position).Magnitude
				if cornerObj < _QgzaoyXfGksWT  then

					_QgzaoyXfGksWT = cornerObj
					_dWlvQMpyBOwFUdbcAlQmTQUq = v
				end

			end

		end

	end
	return _dWlvQMpyBOwFUdbcAlQmTQUq, _QgzaoyXfGksWT
end
function FindNearestBed(IgnoreBedSheildEndTime, statusLabel)
	local _ffLUUuHvNNWYJdSxLErAuojEAeasJJ = statusLabel or math.huge
	local _JTmnTPQuEbfRoWHCpuHo = nil
	local _qmmRNoQcVImtbTRSSC = 0
	if IsAlive(LocalPlayer) == true  then
		for i, v in next, CollectionService:GetTagged('bed')  do
			local bedColor = (v:FindFirstChild('Bed') and v:FindFirstChild('Bed').BrickColor or v:FindFirstChild('bed'):FindFirstChild('Bed') and v:FindFirstChild('bed'):FindFirstChild('Bed').BrickColor or nil)
			if bedColor and bedColor ~= LocalPlayer.Team.TeamColor  then

				_qmmRNoQcVImtbTRSSC = (_qmmRNoQcVImtbTRSSC + 1)
			end

		end
		if IgnoreBedSheildEndTime == false  then
			for i, v in next, CollectionService:GetTagged('bed')  do
				local bedColor = (v:FindFirstChild('Bed') and v:FindFirstChild('Bed').BrickColor or v:FindFirstChild('bed'):FindFirstChild('Bed') and v:FindFirstChild('bed'):FindFirstChild('Bed').BrickColor or nil)
				if bedColor and bedColor ~= LocalPlayer.Team.TeamColor  then
					if v:GetAttribute('BedShieldEndTime') and (v:GetAttribute('BedShieldEndTime') > Workspace:GetServerTimeNow() and _qmmRNoQcVImtbTRSSC == 1 or v:GetAttribute('BedShieldEndTime') < Workspace:GetServerTimeNow())  then
						local keybindVal = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
						if keybindVal < _ffLUUuHvNNWYJdSxLErAuojEAeasJJ  then

							_ffLUUuHvNNWYJdSxLErAuojEAeasJJ = keybindVal
							_JTmnTPQuEbfRoWHCpuHo = v
						end

					end
					if not v:GetAttribute('BedShieldEndTime')  then
						local keybindVal = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
						if keybindVal < _ffLUUuHvNNWYJdSxLErAuojEAeasJJ  then

							_ffLUUuHvNNWYJdSxLErAuojEAeasJJ = keybindVal
							_JTmnTPQuEbfRoWHCpuHo = v
						end

					end

				end

			end

		end
		if IgnoreBedSheildEndTime == true  then
			for i, v in next, CollectionService:GetTagged('bed')  do
				local bedColor = (v:FindFirstChild('Bed') and v:FindFirstChild('Bed').BrickColor or v:FindFirstChild('bed'):FindFirstChild('Bed') and v:FindFirstChild('bed'):FindFirstChild('Bed').BrickColor or nil)
				if bedColor and bedColor ~= LocalPlayer.Team.TeamColor  then
					local keybindVal = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
					if keybindVal < _ffLUUuHvNNWYJdSxLErAuojEAeasJJ  then

						_ffLUUuHvNNWYJdSxLErAuojEAeasJJ = keybindVal
						_JTmnTPQuEbfRoWHCpuHo = v
					end

				end

			end

		end

	end
	return _JTmnTPQuEbfRoWHCpuHo, _ffLUUuHvNNWYJdSxLErAuojEAeasJJ
end
local function _FpnXBPTHDCzVMOeOfymzJIWJobQwjfQOqvUAdAXXyrYLN(statusLabel)
	local statusLabel = statusLabel or math.huge
	local _FFZHjxvHuKWsCsGAAsUFxFhiWvZkRTWdUedOmzVVr = nil
	task.spawn(function()
		for i, v in next, CollectionService:GetTagged('BedwarsTeamUpgrader')  do
			local keybindVal = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
			if keybindVal < statusLabel  then

				statusLabel = keybindVal
				_FFZHjxvHuKWsCsGAAsUFxFhiWvZkRTWdUedOmzVVr = v
			end

		end

	end)
	task.spawn(function()
		for i, v in next, CollectionService:GetTagged('BedwarsItemShop')  do
			local keybindVal = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
			if keybindVal < statusLabel  then

				statusLabel = keybindVal
				_FFZHjxvHuKWsCsGAAsUFxFhiWvZkRTWdUedOmzVVr = v
			end

		end

	end)
	return _FFZHjxvHuKWsCsGAAsUFxFhiWvZkRTWdUedOmzVVr
end
local function _ezMEfBTDTaApo(statusLabel)
	local _zVJxEGRxdRawjThmlydJjJKoiLbwLIhevSVvBMOpCBSDEBCxkN = statusLabel or math.huge
	local _SzrqqGqJylT = nil
	for i, v in next, blocks  do
		if v.Name:lower():find('ore')  then
			local keybindVal = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
			if keybindVal < _zVJxEGRxdRawjThmlydJjJKoiLbwLIhevSVvBMOpCBSDEBCxkN  then

				_zVJxEGRxdRawjThmlydJjJKoiLbwLIhevSVvBMOpCBSDEBCxkN = keybindVal
				_SzrqqGqJylT = v
			end

		end

	end
	return _SzrqqGqJylT
end
function _nmnQmexiVMFHRC(scrollFrame)
	local _euqYNdRTPDvxwLZpatzKFONUeoNukOelkgbY = 0
	for i, v in next, _tMIeHXhgAKfMMcbUXcuJi  do
		local _OrSunflbxAeBtudj = (scrollFrame + (Vector3.FromNormalId(v) * 3))
		local _wKFCUdMOpvAswzTOsPnYVYVOJBRVhP = _NTNRqMXbSbILCyUIUg(_OrSunflbxAeBtudj)
		if _wKFCUdMOpvAswzTOsPnYVYVOJBRVhP  then

			_euqYNdRTPDvxwLZpatzKFONUeoNukOelkgbY = _euqYNdRTPDvxwLZpatzKFONUeoNukOelkgbY + 1
		end

	end
	return _euqYNdRTPDvxwLZpatzKFONUeoNukOelkgbY == 5
end
local function _PqlgHOPanpgvkLoNEWvI(_GWvIBRZvsFjewkLhgHEwRDHcgyZseyeLOrtwjNKuDQ)
	if _EUAFvwKBbSQlRFZdpstOXpDxlM and _wKuspjwFuQztghgmFWdIruXeIWRerrg  then
		for i, v in next, _GWvIBRZvsFjewkLhgHEwRDHcgyZseyeLOrtwjNKuDQ  do
			local tweenInfo = TweenInfo.new(v.Time, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
			local _zdBOmbzMXwRLNgEPCDmqItGHlhTeCvKsvgxYZnJALzjGUrvT = TweenService:Create(_EUAFvwKBbSQlRFZdpstOXpDxlM.RightHand.RightWrist, tweenInfo, {C0 = (_wKuspjwFuQztghgmFWdIruXeIWRerrg * v.CFrame)}) _zdBOmbzMXwRLNgEPCDmqItGHlhTeCvKsvgxYZnJALzjGUrvT:Play()
			task.wait(v.Time)
		end

	end

end
local function _UYLGxWfghXkeOzrGVz()
	if UserInputService.TouchEnabled == true and
	UserInputService.KeyboardEnabled == false  then
		return 'Mobile'
	end
	return 'PC'
end
local function getAliveCount()
	return toggleFunc:getState().Game.matchState
end
local function _sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(removedNotif, titleText)
	local titleText = (titleText and titleText.items or GetInventory(LocalPlayer).items)
	for i, v in next, titleText  do
		if v.itemType == removedNotif[1]['shopItem']['currency'] and v.amount >= removedNotif[1]['shopItem']['price']  then

			labelFrame.BedwarsPurchaseItemRemote:InvokeServer(unpack(removedNotif))
		end

	end

end
local function _tysFeUfUlNxXPJRyewmNNHFBKyFTgqcINaCPzMVqx()
	if IsBadExecutor == true  then
		return Workspace:GetAttribute('QueueType') or 'bedwars_test'

	else
		local _xZzvWAQfPvhgnwcTwRzcUm = toggleFunc:getState()
		return _xZzvWAQfPvhgnwcTwRzcUm.Game.queueType or Workspace:GetAttribute('QueueType') or 'bedwars_test'
	end

end
function GetInventory(sliderVal)
	local sliderVal = sliderVal or LocalPlayer
	if IsBadExecutor == true and not colorA.GetInventory  then
		local _iitpbaPviGDUeCgWt = (IsAlive(sliderVal) == true and LocalPlayer.Character:FindFirstChild('InventoryFolder').Value:GetChildren() or {})
		local titleText = {}
		for i, v in next, _iitpbaPviGDUeCgWt  do

			titleText[v] = {tool = v,
			itemType = tostring(v), amount = v:GetAttribute('Amount')}
		end
		return titleText

	else
		local titleText = colorA.GetInventory(sliderVal)
		return titleText
	end

end
local function _eksMnXCgikcxygDIqPLBxZmUTLK(KeepCape, ControlMovements) LocalPlayer.Character.Archivable = true
	local sizeConstraint = LocalPlayer.Character:Clone()
	LocalPlayer.Character.Archivable = false
	for i, v in next, sizeConstraint:GetDescendants()  do
		if v:IsA('Script') or v:IsA('LocalScript')  then

			v:Destroy()
		end
		if v:IsA('BasePart')  then

			v.CanCollide = false
		end

	end
	if KeepCape == false  then
		for i, v in next, sizeConstraint:GetDescendants()  do
			if v:IsA('BasePart') and v.Name == 'Cape'  then

				v:Destroy()
			end

		end

	end

	sizeConstraint.Parent = Workspace
	sizeConstraint.Name = 'Clone' sizeConstraint.PrimaryPart.Anchored = true
	sizeConstraint.PrimaryPart.CFrame = LocalPlayer.Character.PrimaryPart.CFrame
	Camera.CameraSubject = sizeConstraint.Humanoid
	local _ZOgngylyiZvRmJuCuVqo = LocalPlayer.Character.Humanoid:FindFirstChild('Animator')
	local _pfZhqvyzRhSIYbavIpaBJEUCjIaVurL = sizeConstraint.Humanoid:FindFirstChild('Animator')
	local _qgigLVAplcsYygBBWxirAPkdgEKcMDddcVYDu = {}
	local function _dcMVTcnBYbgtIFnjtvAqGQHPRdKNwftll(_BwtjluQHUSJZIrPmvpokEANZrwkir)
		local _JghNlBZUrDqfTfodujpTHCjZgTBR = _BwtjluQHUSJZIrPmvpokEANZrwkir.Animation.AnimationId
		if _qgigLVAplcsYygBBWxirAPkdgEKcMDddcVYDu[_JghNlBZUrDqfTfodujpTHCjZgTBR]  then

			_qgigLVAplcsYygBBWxirAPkdgEKcMDddcVYDu[_JghNlBZUrDqfTfodujpTHCjZgTBR]:Stop()
		end
		local _JQeWvOjmrOTmYBqwR = _pfZhqvyzRhSIYbavIpaBJEUCjIaVurL:LoadAnimation(_BwtjluQHUSJZIrPmvpokEANZrwkir.Animation) _JQeWvOjmrOTmYBqwR:Play(0, _BwtjluQHUSJZIrPmvpokEANZrwkir.WeightCurrent, _BwtjluQHUSJZIrPmvpokEANZrwkir.Speed) _qgigLVAplcsYygBBWxirAPkdgEKcMDddcVYDu[_JghNlBZUrDqfTfodujpTHCjZgTBR] = _JQeWvOjmrOTmYBqwR
	end
	for i, v in next, _ZOgngylyiZvRmJuCuVqo:GetPlayingAnimationTracks()  do

		_dcMVTcnBYbgtIFnjtvAqGQHPRdKNwftll(v)
	end

	Library['CloneConnection2'] = _ZOgngylyiZvRmJuCuVqo.AnimationPlayed:Connect(function(_ToufrWnbZusYbqKSwP) _dcMVTcnBYbgtIFnjtvAqGQHPRdKNwftll(_ToufrWnbZusYbqKSwP)
	end)
	task.spawn(function() Library['CloneConnection'] = RunService.RenderStepped:Connect(function()
		if sizeConstraint and sizeConstraint.Parent  then
			if ControlMovements == true  then

				sizeConstraint.PrimaryPart.CFrame = CFrame.new(LocalPlayer.Character.PrimaryPart.Position.X, sizeConstraint.PrimaryPart.Position.Y, LocalPlayer.Character.PrimaryPart.Position.Z) * (LocalPlayer.Character.PrimaryPart.CFrame - LocalPlayer.Character.PrimaryPart.CFrame.Position)
			end

		else
			sizeConstraint = nil Library['CloneConnection']:Disconnect() Library['CloneConnection2']:Disconnect()
		end

	end)
end)
return sizeConstraint
end
local function _ONACCoYLIGVFuc(scrollFrame, Bed)
	if Bed == false or
	Bed == nil  then

		labelFrame.DamageBlockRemote:InvokeServer({ blockRef = {
		blockPosition = _wiZjGTOwkxgooIpGlFAb(scrollFrame), }, hitPosition = _wiZjGTOwkxgooIpGlFAb(scrollFrame),
		hitNormal = Vector3.yAxis })
	end
	if Bed == true  then

		labelFrame.DamageBlockRemote:InvokeServer({ blockRef = {
		blockPosition = _wiZjGTOwkxgooIpGlFAb(scrollFrame), }, hitPosition = scrollFrame,
		hitNormal = Vector3.FromNormalId(_tMIeHXhgAKfMMcbUXcuJi[3]) })
	end

end
function DecimalRound(Number, DigitsPast0)
	DigitsPast0 = math.pow((9+1), DigitsPast0)
	Number = (Number * DigitsPast0)
	if Number >= 0  then

		Number = math.floor(Number + 0.5)
	end
	if Number < 0  then

		Number = math.ceil(Number - 0.5)
	end
	return (Number / DigitsPast0)
end
local function getWeaponDamage(sliderVal)
	local _eBMplxZsiKWpFVquisJxjGNqHgeJZ, isAlive = -math.huge, nil
	local _xqAmaZjXfOzvpeRXYZdVVTcmZDRrJXGMLiXuAfCgHujbqt = 0
	for i, v in next, GetSwords(sliderVal)  do
		local _DTMoJTMlVpvDXThRovoTSarMtvY = colorA.GetItemMeta(v.itemType).sword
		local _TkcQdHkLLSYaMTZiyvzPYrkagMtIQxUSWIuDkER = (_DTMoJTMlVpvDXThRovoTSarMtvY.damage / _DTMoJTMlVpvDXThRovoTSarMtvY.attackSpeed)
		if _TkcQdHkLLSYaMTZiyvzPYrkagMtIQxUSWIuDkER > _eBMplxZsiKWpFVquisJxjGNqHgeJZ  then

			_eBMplxZsiKWpFVquisJxjGNqHgeJZ = _TkcQdHkLLSYaMTZiyvzPYrkagMtIQxUSWIuDkER
			isAlive = v _xqAmaZjXfOzvpeRXYZdVVTcmZDRrJXGMLiXuAfCgHujbqt = _DTMoJTMlVpvDXThRovoTSarMtvY.attackSpeed
		end

	end
	return _eBMplxZsiKWpFVquisJxjGNqHgeJZ, isAlive, _xqAmaZjXfOzvpeRXYZdVVTcmZDRrJXGMLiXuAfCgHujbqt
end
local function _raawwzRQsfoHkJRndLrXcLOWa(sliderVal)
	for i, v in next, GetInventory(sliderVal).items  do
		if v.itemType:find('snowball')  then
			local _igqVhtkmojEURbvZBQcWYBONx = _fFSfaybogcC.ProjectileMeta[v.itemType]
			local _aBbrYefCtnhYfTWNkbXGvoKSGcFua = (_igqVhtkmojEURbvZBQcWYBONx.gravitationalAcceleration and _igqVhtkmojEURbvZBQcWYBONx.gravitationalAcceleration or Workspace.Gravity)
			local _mlZUcZyDLVaWyPQwe = (_igqVhtkmojEURbvZBQcWYBONx.launchVelocity and _igqVhtkmojEURbvZBQcWYBONx.launchVelocity or (10+90))
			return v, _aBbrYefCtnhYfTWNkbXGvoKSGcFua, _mlZUcZyDLVaWyPQwe
		end

	end
	return nil, 0, nil
end
local function _EOWyiMCIqpjLMN(sliderVal)
	for i, v in next, GetInventory(sliderVal).items  do
		if v.itemType == 'fireball'  then
			local _kZmTuoBzsWiouVHCKIfjwFUJfAvrJsmHHgfJmeqgZ = _fFSfaybogcC.ProjectileMeta[v.itemType]
			local _aBbrYefCtnhYfTWNkbXGvoKSGcFua = (_kZmTuoBzsWiouVHCKIfjwFUJfAvrJsmHHgfJmeqgZ.gravitationalAcceleration and _kZmTuoBzsWiouVHCKIfjwFUJfAvrJsmHHgfJmeqgZ.gravitationalAcceleration or Workspace.Gravity)
			local _mlZUcZyDLVaWyPQwe = (_kZmTuoBzsWiouVHCKIfjwFUJfAvrJsmHHgfJmeqgZ.launchVelocity and _kZmTuoBzsWiouVHCKIfjwFUJfAvrJsmHHgfJmeqgZ.launchVelocity or (4+96))
			return v, _aBbrYefCtnhYfTWNkbXGvoKSGcFua, _mlZUcZyDLVaWyPQwe
		end

	end
	return nil, 0, nil
end
local function _UmeGgTixFbsxHHyCIaWwnZvsHnHGZYpIoILKOwetH(Item) labelFrame.SetInvItemRemote:InvokeServer({hand = Item})
end
local function _jWUYSJGVzhFUNQMDSDluVMlIgTovpmuwRs(SoundId, colorFrom) colorFrom = colorFrom or 0.5
	local _ztnyhfkYGxsYjrgLnQvZ = Instance.new('Part')
	_ztnyhfkYGxsYjrgLnQvZ.Parent = Workspace
	_ztnyhfkYGxsYjrgLnQvZ.Name = 'SoundHolder'
	_ztnyhfkYGxsYjrgLnQvZ.Transparency = 1
	_ztnyhfkYGxsYjrgLnQvZ.CanCollide = false
	_ztnyhfkYGxsYjrgLnQvZ.Anchored = true
	_ztnyhfkYGxsYjrgLnQvZ.Position = Vector3.new(0, 0, 0)
	_ztnyhfkYGxsYjrgLnQvZ.CFrame = (IsAlive(LocalPlayer) == true and LocalPlayer.Character.PrimaryPart.CFrame or CFrame.new(Vector3.new(0, 0, 0)))
	_ztnyhfkYGxsYjrgLnQvZ.Size = Vector3.new(1, 1, 1)
	local colorFrom = Instance.new('Sound')
	colorFrom.Parent = _ztnyhfkYGxsYjrgLnQvZ
	colorFrom.RollOffMinDistance = (6+4)
	colorFrom.RollOffMaxDistance = (1+59)
	colorFrom.RollOffMode = Enum.RollOffMode.InverseTapered
	colorFrom.SoundId = SoundId
	colorFrom.Volume = 0.5 colorFrom.Ended:Connect(function() _ztnyhfkYGxsYjrgLnQvZ:Destroy()
	end) colorFrom:Play()
end
function GetSwords(sliderVal) sliderVal = sliderVal or LocalPlayer
	local _etSlUkMeZluZPVlhXjpqGxq = {}
	for i, v in next, GetInventory(sliderVal).items  do
		local _DTMoJTMlVpvDXThRovoTSarMtvY = colorA.GetItemMeta(v.itemType).sword
		if _DTMoJTMlVpvDXThRovoTSarMtvY  then

			table.insert(_etSlUkMeZluZPVlhXjpqGxq, v)
		end

	end
	return _etSlUkMeZluZPVlhXjpqGxq
end
function GetSpeed()
	local speedVal = 0
	local _fnIiJJEOBzowfrKobobqsHeggsQFQriUPrNnESXJvbCLjQro = LocalPlayer.Character:GetAttribute('SpeedBoost')
	if _fnIiJJEOBzowfrKobobqsHeggsQFQriUPrNnESXJvbCLjQro and _fnIiJJEOBzowfrKobobqsHeggsQFQriUPrNnESXJvbCLjQro > 1  then

		speedVal = (speedVal + (8 * (_fnIiJJEOBzowfrKobobqsHeggsQFQriUPrNnESXJvbCLjQro - 1)))
	end
	if LocalPlayer.Character:GetAttribute('GrimReaperChannel')  then

		speedVal = (speedVal + (17+3))
	end
	if _uKPtgyNkZprMcrQIahedKVKCtbgCyJq > 0  then

		speedVal = speedVal + (10+9) + (_uKPtgyNkZprMcrQIahedKVKCtbgCyJq / 3)
	end
	if (tick() - _zNoxzYSpSWSHXGBUZeuTPfnJVqpgydRSLEPdwGgjs) <= 1.4  then

		speedVal = (speedVal + (IsGhostMode == true and 2 or (18+2)))
	end
	if (tick() - _jLImoAOtoUPPAHNwiZqbkfdyfszjOHYHMdK) <= 0.5  then

		speedVal = (speedVal + (IsGhostMode == true and 2 or (18+7)))
	end
	if _urWXwGyOebfhFTYDFnoKPkQViaQEkELfQWOvis  then

		speedVal = speedVal + (IsGhostMode == true and 2 or Config.KrystalDisabler.DisablerSpeed.Value)
	end
	if _NWhpQExjmmRYdYxznAOdypauhJnDqZsdjseVBupoxvshuPIm == true  then

		speedVal = (speedVal + (IsGhostMode == true and 2 or (4+16)))
	end

	speedVal = ((speedVal + Config.Speed.Speed.Value) - (1+19))
	return speedVal
end
local function _iHlAPVMUvdpQCZvIHsbOmnaxFoitImnGKvwLvxV()
	for i, v in next, GetInventory(LocalPlayer).items  do
		local _iEUovIPcSCUhyxTWtpCzOcncZHRjPRhvQlnOrVOutXaM = colorA.GetItemMeta(v.itemType)
		if _iEUovIPcSCUhyxTWtpCzOcncZHRjPRhvQlnOrVOutXaM and _iEUovIPcSCUhyxTWtpCzOcncZHRjPRhvQlnOrVOutXaM.block and v.itemType:find('wool')  then
			return v
		end

	end

end
local function getArmorMultiplier(sliderVal) sliderVal = sliderVal or LocalPlayer
	if IsAlive(sliderVal) == true  then
		local _EPWYqCzVzFcFmSCSNBaVLjPNPiCZCxPrDXrYao = pcall(function()
			return Workspace[sliderVal.Name].ArmorInvItem_0.Value.Name
		end)
		local _gPtDtmRkJJFWypBOJAwvacReCyDH
		if _EPWYqCzVzFcFmSCSNBaVLjPNPiCZCxPrDXrYao  then

			_gPtDtmRkJJFWypBOJAwvacReCyDH = Workspace[sliderVal.Name].ArmorInvItem_0.Value.Name
		end
		local _fOzejPuZcQBvVBTWscfTlBN = 0
		local _UzJPtbEIxcjXZRsMBxDoseipgnscgxLQNExmyDB = pcall(function()
			return Workspace[sliderVal.Name].ArmorInvItem_1.Value.Name
		end)
		local _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps
		if _UzJPtbEIxcjXZRsMBxDoseipgnscgxLQNExmyDB  then

			_XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps = Workspace[sliderVal.Name].ArmorInvItem_1.Value.Name
		end
		local _ZtJzSATIaNTArfeNSrcoaYIMarZIXARJocLfnbcLYUmlyNeEZP = 0
		local _RDrrdCNGIkiswCYPNIlPVCTIBMlZFQdDnNd = pcall(function()
			return Workspace[sliderVal.Name].ArmorInvItem_2.Value.Name
		end)
		local _TQQaCgLpddgmhdrYPBd
		if _RDrrdCNGIkiswCYPNIlPVCTIBMlZFQdDnNd  then

			_TQQaCgLpddgmhdrYPBd = Workspace[sliderVal.Name].ArmorInvItem_2.Value.Name
		end
		local _AYJdFFBMbzzPKOnIogytIhUNBHdUhagdfmptVMVL = 0
		if _gPtDtmRkJJFWypBOJAwvacReCyDH  then

			_fOzejPuZcQBvVBTWscfTlBN = colorA.GetItemMeta(_gPtDtmRkJJFWypBOJAwvacReCyDH).armor.damageReductionMultiplier
		end
		if _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps  then

			_ZtJzSATIaNTArfeNSrcoaYIMarZIXARJocLfnbcLYUmlyNeEZP = colorA.GetItemMeta(_XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps).armor.damageReductionMultiplier
		end
		if _TQQaCgLpddgmhdrYPBd  then

			_AYJdFFBMbzzPKOnIogytIhUNBHdUhagdfmptVMVL = colorA.GetItemMeta(_TQQaCgLpddgmhdrYPBd).armor.damageReductionMultiplier
		end
		local _huAobUAsksIiTZvGiHup = (_fOzejPuZcQBvVBTWscfTlBN + _ZtJzSATIaNTArfeNSrcoaYIMarZIXARJocLfnbcLYUmlyNeEZP + _AYJdFFBMbzzPKOnIogytIhUNBHdUhagdfmptVMVL)
		return _huAobUAsksIiTZvGiHup, _gPtDtmRkJJFWypBOJAwvacReCyDH, _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps, _TQQaCgLpddgmhdrYPBd
	end

end
function HasItem(moduleName, Find) Find = Find or false
	for i, v in next, GetInventory(LocalPlayer).items  do
		if (v.itemType == moduleName or
		Find == true and v.itemType:find(moduleName) or false)  then
			return v
		end

	end
	return nil
end
function IsAlive(sliderVal)
	if not sliderVal.Character  then
		return false
	end
	if not sliderVal.Character:FindFirstChildOfClass('Humanoid')  then
		return false
	end
	if sliderVal.Character:GetAttribute('Health') <= 0  then
		return false
	end
	if not sliderVal.Character.PrimaryPart  then
		return false
	end
	return true
end
local _svDgxurBEjKTjUzPoRbkMHY = Library:CreateTab('Combat', 'rbxassetid://139561980250202', UDim2.new(0.260, 0, 0.743), UDim2.new(0.745, 0, 0.3, 0))
local serverLabel = Library:CreateTab('Blatant', 'rbxassetid://114128273804873', UDim2.new(0.179, 0, 0.800, 0), UDim2.new(0.8, 0, 0.168, 0))
local waveStrength = Library:CreateTab('Utility', 'rbxassetid://115536000607176', UDim2.new(0.132, 0, 0.6, 0), UDim2.new(0.808, 0, 0.25, 0))
local colorTo = Library:CreateTab('World', 'rbxassetid://79274861207680', UDim2.new(0.132, 0, 0.6, 0), UDim2.new(0.8, 0, 0.28, 0))
local miscTab = Library:CreateTab('Other', 'rbxassetid://0', UDim2.new(0.260, 0, 0.743), UDim2.new(0.745, 0, 0.3, 0))
task.spawn(function()
	if IsGhostMode == false  then
		local _zwdgiLClYaMVuWGPplPQzLlPYBrrZtvPIgzQEsJRRp = {
		Snowballs = tick(), Fireballs = tick(),
		Arrows = tick() }
		local function _EqHrYeCRMOMncUlRCnuNCRSgovgiDBSQDUZLfunpNLTcswRP(_ZscImiWItphUz, listLayout2, Duration)
			local _VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw = Instance.new('Part')
			_VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw.Parent = Workspace
			_VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw.Name = 'ProjectileTrail'
			_VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw.Transparency = 1
			_VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw.CanCollide = false
			_VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw.Anchored = true
			_VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw.CFrame = CFrame.lookAt(_ZscImiWItphUz, _ZscImiWItphUz + listLayout2)
			_VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw.Size = Vector3.new(1, 1, 1)
			local _dApFNdOxFMSrOuzYYWxghziVvpVxLN = Instance.new('Attachment')
			_dApFNdOxFMSrOuzYYWxghziVvpVxLN.Position = Vector3.new(0, 0, -0.15)
			_dApFNdOxFMSrOuzYYWxghziVvpVxLN.Parent = _VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw
			local colorB = Instance.new('Attachment')
			colorB.Position = Vector3.new(0, 0, 0.15)
			colorB.Parent = _VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw
			local titlePadding = Instance.new('Trail')
			titlePadding.Parent = _VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw
			titlePadding.Name = 'Trail'
			titlePadding.LightEmission = 1
			titlePadding.Attachment0 = _dApFNdOxFMSrOuzYYWxghziVvpVxLN
			titlePadding.Attachment1 = colorB
			titlePadding.WidthScale = NumberSequence.new(0.3)
			titlePadding.FaceCamera = true
			titlePadding.MinLength = 0.01
			titlePadding.Lifetime = 0.5
			local _zmlXMrTobuhHwKsbyV = CFrame.lookAt(Vector3.new(0, 0, 0), listLayout2)
			local _RzvHQPvlCKWVLwyVfiYGDZzbsfJXVRyUAkgby = tick()
			local _txEBsnHhFpfMnLbvfVfhmoAMcaPHcd _txEBsnHhFpfMnLbvfVfhmoAMcaPHcd = RunService.RenderStepped:Connect(function()
				if (tick() - _RzvHQPvlCKWVLwyVfiYGDZzbsfJXVRyUAkgby) >= Duration  then

					_txEBsnHhFpfMnLbvfVfhmoAMcaPHcd:Disconnect() _VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw:Destroy()
					return
				end

				_VFiZsfHKRJAAUAhSoNuycSpqRVlbLPMxycNmydDhw.CFrame = CFrame.new(_ZscImiWItphUz + listLayout2 * (tick() - _RzvHQPvlCKWVLwyVfiYGDZzbsfJXVRyUAkgby)) * _zmlXMrTobuhHwKsbyV
			end)
		end
		local function _kVSRnkbEpMqp( GravitationalAcceleration, LaunchSpeed, satVal, TargetVelocity, TargetHipHeight, TargetJump )
			local _JuJVFAKCyCxBeZzIxfBtKxCLiQyTQePstquqlFirPhonVZv = Vector3.new(0, TargetHipHeight + TargetJump, 0)
			local _YAniBWXoUlcaiIVEjLnyTzQi = Vector3.new(0, -math.abs(GravitationalAcceleration), 0)
			local _ZscImiWItphUz = Camera and Camera.CFrame.Position or Vector3.zero
			local keybindVal = (satVal - _ZscImiWItphUz).Magnitude
			local _ZkgpRodELUJeRXrvkCP = keybindVal / math.max(LaunchSpeed, 1)
			for i = 1, 8  do
				local _sXBXytACLHodGszrzi = satVal + _JuJVFAKCyCxBeZzIxfBtKxCLiQyTQePstquqlFirPhonVZv + (TargetVelocity * _ZkgpRodELUJeRXrvkCP)
				local _MDFvLrQRMjruTHbYogNMmpibkPcIzvVqTpDUpAYJGlYNTLpU = _sXBXytACLHodGszrzi - _ZscImiWItphUz - (0.5 * _YAniBWXoUlcaiIVEjLnyTzQi * _ZkgpRodELUJeRXrvkCP * _ZkgpRodELUJeRXrvkCP)
				local _VQuwbvLxtpdavIdscdQWcsRPnyLAeuCRzaZPIyHUuAHYJT = _MDFvLrQRMjruTHbYogNMmpibkPcIzvVqTpDUpAYJGlYNTLpU / _ZkgpRodELUJeRXrvkCP
				local _iAyrNNKKYuWmqIvibRwtlDHtcDgMUwyHYOnUNKJVHNvRHhUh = _VQuwbvLxtpdavIdscdQWcsRPnyLAeuCRzaZPIyHUuAHYJT.Magnitude
				local _tRouYoDsnAtiWCrlZVVSj = _ZkgpRodELUJeRXrvkCP * (_iAyrNNKKYuWmqIvibRwtlDHtcDgMUwyHYOnUNKJVHNvRHhUh / math.max(LaunchSpeed, 0.001))
				if math.abs(_tRouYoDsnAtiWCrlZVVSj - _ZkgpRodELUJeRXrvkCP) < 0.001  then

					_ZkgpRodELUJeRXrvkCP = _tRouYoDsnAtiWCrlZVVSj break
				end

				_ZkgpRodELUJeRXrvkCP = _tRouYoDsnAtiWCrlZVVSj
			end
			return satVal + _JuJVFAKCyCxBeZzIxfBtKxCLiQyTQePstquqlFirPhonVZv + (TargetVelocity * _ZkgpRodELUJeRXrvkCP)
		end
		local function _mTcZllMXzksWFsKHnoXOcxeqp()
			local _qezqjtKtnEhOpsNCGlj = HttpService:GenerateGUID(false)
			return string.upper((_qezqjtKtnEhOpsNCGlj:split('-'))[1])
		end
		local _SGrLfeStHrxULfZNZTPgeFz = _svDgxurBEjKTjUzPoRbkMHY:CreateToggle({
		Name = 'ProjectileAura', Function = function()
			repeat task.wait(0)
			if getAliveCount() ~= 0  then
				local waveAmount
				if Config.ProjectileAura.Targets.Entities.Value == true  then
					local colorVal = _gQWdlFHzWMNX(Config.ProjectileAura.Range.Value, false)
					if colorVal  then

						waveAmount = {
						PrimaryPart = colorVal.PrimaryPart, Humanoid = {
						HipHeight = (colorVal.Humanoid and colorVal.Humanoid.HipHeight or 0), Jump = (colorVal.Humanoid and colorVal.Humanoid.Jump or false) } }
					end

				end
				if Config.ProjectileAura.Targets.Players.Value == true  then
					local targetPlayer = FindNearestPlayer(Config.ProjectileAura.Range.Value, true)
					if targetPlayer  then

						waveAmount = targetPlayer.Character
					end

				end
				if waveAmount  then
					local gradientObj = (waveAmount.PrimaryPart.Position - Camera.CFrame.Position).Unit
					local _PHRBcjoXMBilsbukNvMKcqjJgN = Camera.CFrame.LookVector:Dot(gradientObj)
					local posA = math.deg(math.acos(_PHRBcjoXMBilsbukNvMKcqjJgN))
					if posA > Config.ProjectileAura.Angle.Value  then
						return
					end
					task.spawn(function()
						if Config.ProjectileAura.Projectiles.Snowballs.Value == true  then
							local _OuNDaWGREqA, _aBbrYefCtnhYfTWNkbXGvoKSGcFua, _mlZUcZyDLVaWyPQwe = _raawwzRQsfoHkJRndLrXcLOWa(LocalPlayer)
							if _OuNDaWGREqA and (tick() - _zwdgiLClYaMVuWGPplPQzLlPYBrrZtvPIgzQEsJRRp.Snowballs) > 0.1  then

								_zwdgiLClYaMVuWGPplPQzLlPYBrrZtvPIgzQEsJRRp.Snowballs = tick()
								task.spawn(function()
									if Config.ProjectileAura.SwitchToItem.Value == true  then

										_UmeGgTixFbsxHHyCIaWwnZvsHnHGZYpIoILKOwetH(_OuNDaWGREqA.tool)
									end

								end)
								local cornerObj = (LocalPlayer.Character.PrimaryPart.Position - waveAmount.PrimaryPart.Position).Magnitude
								local _LHWYJCwdJGndyIGSJBhbFmKiSWpJEctszOBokTwuLLzkMZ = _kVSRnkbEpMqp( _aBbrYefCtnhYfTWNkbXGvoKSGcFua, _mlZUcZyDLVaWyPQwe, waveAmount.PrimaryPart.Position, waveAmount.PrimaryPart.Velocity, waveAmount.Humanoid.HipHeight, (waveAmount.Humanoid.Jump and 0.5 or 0) )
								local listLayout2 = CFrame.lookAt(LocalPlayer.Character.PrimaryPart.Position, (_LHWYJCwdJGndyIGSJBhbFmKiSWpJEctszOBokTwuLLzkMZ - Vector3.new(0, 4, 0))).LookVector * _mlZUcZyDLVaWyPQwe labelFrame.ProjectileFireRemote:InvokeServer( _OuNDaWGREqA.tool, _OuNDaWGREqA.itemType, _OuNDaWGREqA.itemType, LocalPlayer.Character.Head.Position, LocalPlayer.Character.PrimaryPart.Position, listLayout2, _mTcZllMXzksWFsKHnoXOcxeqp(), {
								shotId = _mTcZllMXzksWFsKHnoXOcxeqp(), drawDurationSec = 0 }, Workspace:GetServerTimeNow() - 0.045 )
								if Config.ProjectileAura.ProjectileTrail.Value == true  then

									_EqHrYeCRMOMncUlRCnuNCRSgovgiDBSQDUZLfunpNLTcswRP(LocalPlayer.Character.Head.Position, listLayout2, cornerObj / _mlZUcZyDLVaWyPQwe)
								end
								local _xaTnUCTSolojnbcORfgdRltzvWOFBkPVhARLPniP = colorA.GetItemMeta(_OuNDaWGREqA.itemType).projectileSource.launchSound
								if _xaTnUCTSolojnbcORfgdRltzvWOFBkPVhARLPniP  then
									local colorFrom = _xaTnUCTSolojnbcORfgdRltzvWOFBkPVhARLPniP[math.random(1, #_xaTnUCTSolojnbcORfgdRltzvWOFBkPVhARLPniP)] _jWUYSJGVzhFUNQMDSDluVMlIgTovpmuwRs(colorFrom)
								end

							end

						end

					end)
					task.spawn(function()
						if Config.ProjectileAura.Projectiles.Fireballs.Value == true  then
							local _JFpqeemGrbvLzhZvqrU, _aBbrYefCtnhYfTWNkbXGvoKSGcFua, _mlZUcZyDLVaWyPQwe = _EOWyiMCIqpjLMN(LocalPlayer)
							if _JFpqeemGrbvLzhZvqrU and (tick() - _zwdgiLClYaMVuWGPplPQzLlPYBrrZtvPIgzQEsJRRp.Fireballs) > 0.1  then

								_zwdgiLClYaMVuWGPplPQzLlPYBrrZtvPIgzQEsJRRp.Fireballs = tick()
								task.spawn(function()
									if Config.ProjectileAura.SwitchToItem.Value == true  then

										_UmeGgTixFbsxHHyCIaWwnZvsHnHGZYpIoILKOwetH(_JFpqeemGrbvLzhZvqrU.tool)
									end

								end)
								local cornerObj = (LocalPlayer.Character.PrimaryPart.Position - waveAmount.PrimaryPart.Position).Magnitude
								local _LHWYJCwdJGndyIGSJBhbFmKiSWpJEctszOBokTwuLLzkMZ = _kVSRnkbEpMqp( _aBbrYefCtnhYfTWNkbXGvoKSGcFua, _mlZUcZyDLVaWyPQwe, waveAmount.PrimaryPart.Position, waveAmount.PrimaryPart.Velocity, waveAmount.Humanoid.HipHeight, (waveAmount.Humanoid.Jump and 0.5 or 0) )
								local listLayout2 = CFrame.lookAt(LocalPlayer.Character.PrimaryPart.Position, (_LHWYJCwdJGndyIGSJBhbFmKiSWpJEctszOBokTwuLLzkMZ - Vector3.new(0, 4, 0))).LookVector * _mlZUcZyDLVaWyPQwe labelFrame.ProjectileFireRemote:InvokeServer( _JFpqeemGrbvLzhZvqrU.tool, _JFpqeemGrbvLzhZvqrU.itemType, _JFpqeemGrbvLzhZvqrU.itemType, LocalPlayer.Character.Head.Position, LocalPlayer.Character.PrimaryPart.Position, listLayout2, _mTcZllMXzksWFsKHnoXOcxeqp(), {
								shotId = _mTcZllMXzksWFsKHnoXOcxeqp(), drawDurationSec = 0 }, Workspace:GetServerTimeNow() - 0.045 )
								if Config.ProjectileAura.ProjectileTrail.Value == true  then

									_EqHrYeCRMOMncUlRCnuNCRSgovgiDBSQDUZLfunpNLTcswRP(LocalPlayer.Character.Head.Position, listLayout2, cornerObj / _mlZUcZyDLVaWyPQwe)
								end
								local _xaTnUCTSolojnbcORfgdRltzvWOFBkPVhARLPniP = colorA.GetItemMeta(_JFpqeemGrbvLzhZvqrU.itemType).projectileSource.launchSound
								if _xaTnUCTSolojnbcORfgdRltzvWOFBkPVhARLPniP  then
									local colorFrom = _xaTnUCTSolojnbcORfgdRltzvWOFBkPVhARLPniP[math.random(1, #_xaTnUCTSolojnbcORfgdRltzvWOFBkPVhARLPniP)] _jWUYSJGVzhFUNQMDSDluVMlIgTovpmuwRs(colorFrom)
								end

							end

						end

					end)
					task.spawn(function()
						if Config.ProjectileAura.Projectiles.Arrows.Value == true  then
							local _iEaxWrfmWTFYjyqyQAfHNPFnYMOFFYsUF, _TQStQwhyUdyWfFjSqvJXPSiMCkiNiaocNlIQjygSpCz, _EAdswfigmlScBcvAPrGOXF, _tNNcPFWiofXszB, _cfxzhdoDxkwKCXbteNwIZokxvKkNoHzHhWQYyqMZLEMtgvlkv, _bsGmyLzsrcGHgMzWBtruATtWTjUMHIMICnIHHUgz = _wSHCMhTEQyNkGZnrwCgFkBIocKVizDKadKK(LocalPlayer)
							if _TQStQwhyUdyWfFjSqvJXPSiMCkiNiaocNlIQjygSpCz and _tNNcPFWiofXszB and _bsGmyLzsrcGHgMzWBtruATtWTjUMHIMICnIHHUgz and (tick() - _zwdgiLClYaMVuWGPplPQzLlPYBrrZtvPIgzQEsJRRp.Arrows) > _TQStQwhyUdyWfFjSqvJXPSiMCkiNiaocNlIQjygSpCz  then

								_zwdgiLClYaMVuWGPplPQzLlPYBrrZtvPIgzQEsJRRp.Arrows = tick()
								task.spawn(function()
									if Config.ProjectileAura.SwitchToItem.Value == true  then

										_UmeGgTixFbsxHHyCIaWwnZvsHnHGZYpIoILKOwetH(_tNNcPFWiofXszB.tool)
									end

								end)
								local _LHWYJCwdJGndyIGSJBhbFmKiSWpJEctszOBokTwuLLzkMZ = _kVSRnkbEpMqp( _iEaxWrfmWTFYjyqyQAfHNPFnYMOFFYsUF, _EAdswfigmlScBcvAPrGOXF, waveAmount.PrimaryPart.Position, waveAmount.PrimaryPart.Velocity, waveAmount.Humanoid.HipHeight, (waveAmount.Humanoid.Jump and -6 or 0) )
								local cornerObj = (LocalPlayer.Character.PrimaryPart.Position - waveAmount.PrimaryPart.Position).Magnitude
								local _fpkZlondSQHMECs = (waveAmount.Humanoid.Jump and (cornerObj > (16+34) and cornerObj / (120+30) or cornerObj > (57+43) and cornerObj / (42+23) or cornerObj > (48+102) and cornerObj / (27+3)) or 0)
								local listLayout2 = CFrame.lookAt(LocalPlayer.Character.PrimaryPart.Position, (_LHWYJCwdJGndyIGSJBhbFmKiSWpJEctszOBokTwuLLzkMZ + Vector3.new(0, _fpkZlondSQHMECs, 0))).LookVector * _EAdswfigmlScBcvAPrGOXF
								local controlsModule = labelFrame.ProjectileFireRemote:InvokeServer( _tNNcPFWiofXszB.tool, _bsGmyLzsrcGHgMzWBtruATtWTjUMHIMICnIHHUgz.itemType, _cfxzhdoDxkwKCXbteNwIZokxvKkNoHzHhWQYyqMZLEMtgvlkv, LocalPlayer.Character.Head.Position, LocalPlayer.Character.PrimaryPart.Position, listLayout2, _mTcZllMXzksWFsKHnoXOcxeqp(), {
								shotId = _mTcZllMXzksWFsKHnoXOcxeqp(), drawDurationSec = (_tNNcPFWiofXszB.itemType == 'wood_bow' and 0.85 or 0) }, Workspace:GetServerTimeNow() - 0.045 )
								if Config.ProjectileAura.ProjectileTrail.Value == true  then

									_EqHrYeCRMOMncUlRCnuNCRSgovgiDBSQDUZLfunpNLTcswRP(LocalPlayer.Character.Head.Position, listLayout2, cornerObj / _EAdswfigmlScBcvAPrGOXF)
								end
								if controlsModule  then
									local _xaTnUCTSolojnbcORfgdRltzvWOFBkPVhARLPniP = colorA.GetItemMeta(_tNNcPFWiofXszB.itemType).projectileSource.launchSound
									if _xaTnUCTSolojnbcORfgdRltzvWOFBkPVhARLPniP  then
										local colorFrom = _xaTnUCTSolojnbcORfgdRltzvWOFBkPVhARLPniP[math.random(1, #_xaTnUCTSolojnbcORfgdRltzvWOFBkPVhARLPniP)] _jWUYSJGVzhFUNQMDSDluVMlIgTovpmuwRs(colorFrom)
									end

								end

							end

						end

					end)
				end

			end

		until  Config.ProjectileAura.Value == false or shared[UninjectedKey] == true
	end

	, HoverText = 'Automatically Shoots Players ' }) _SGrLfeStHrxULfZNZTPgeFz:CreateToggle({
	Name = 'ProjectileTrail', Function = function()
	end

	, DefaultValue = true }) _SGrLfeStHrxULfZNZTPgeFz:CreateToggle({
	Name = 'SwitchToItem', Function = function()
	end

	, DefaultValue = true }) _SGrLfeStHrxULfZNZTPgeFz:CreateSlider({
	Name = 'Angle', Function = function()
	end

	, MaximumValue = (144+216),
	DefaultValue = (51+309) }) _SGrLfeStHrxULfZNZTPgeFz:CreateSlider({ Name = 'Range',
	Function = function()
	end

	, MaximumValue = (153+47),
	DefaultValue = (17+133) })
	local _AsLKsCBaqgMaZTp = _SGrLfeStHrxULfZNZTPgeFz:CreateDropdown({
	Name = 'Projectiles', HoverText = 'Which Projectiles Will Be Thrown While Using ProjectileAura' }) _AsLKsCBaqgMaZTp:CreateToggle({
	Name = 'Snowballs', Function = function()
	end

	, DefaultValue = true }) _AsLKsCBaqgMaZTp:CreateToggle({
	Name = 'Fireballs', Function = function()
	end

	, DefaultValue = true }) _AsLKsCBaqgMaZTp:CreateToggle({
	Name = 'Arrows', Function = function()
	end

	, DefaultValue = true })
	local _fnVuRaYiavgnqcJvIfHFEllVrgYpPlMQhosXNYJ = _SGrLfeStHrxULfZNZTPgeFz:CreateDropdown({
	Name = 'Targets', HoverText = 'Which Entities Will Be Targetted While Using ProjectileAura' }) _fnVuRaYiavgnqcJvIfHFEllVrgYpPlMQhosXNYJ:CreateToggle({
	Name = 'Entities', Function = function()
	end

	, DefaultValue = false }) _fnVuRaYiavgnqcJvIfHFEllVrgYpPlMQhosXNYJ:CreateToggle({
	Name = 'Players', Function = function()
	end

	, DefaultValue = true })
end

end)
task.spawn(function()
	if buttonFrame.SwordController and (IsBadExecutor == false or
	IsGhostMode == false)  then
		local _ChyEJDQgvqsK
		local _rQMbJxYgPaZPbHTYhHmDP = _svDgxurBEjKTjUzPoRbkMHY:CreateToggle({
		Name = 'NoClickDelay', Function = function()
			if Config.NoClickDelay.Value == true  then

				_ChyEJDQgvqsK = buttonFrame.SwordController.isClickingTooFast buttonFrame.SwordController.isClickingTooFast = function(self)
					self.lastSwing = tick()
					return false
				end

			end
			if Config.NoClickDelay.Value == false  then

				buttonFrame.SwordController.isClickingTooFast = _ChyEJDQgvqsK
			end

		end

		, HoverText = 'Removes The Delay While Clicking ' }) UnInjectEvent.Event:Connect(function()
			buttonFrame.SwordController.isClickingTooFast = _ChyEJDQgvqsK
		end)
	end

end)
task.spawn(function()
	local _EUwHRWvtKQRbhOukKDBBnrUIhzpVnGctFpWAkLkYhbSVFkC = false
	local _UOgkjrCcuKYvuYVfiGWxZV = false
	local _GGNLziCZURnFwvSF = {
	RhythmPhase = 0, BurstTarget = 0,
	LastJitter = 0, IsBursting = false,
	BurstCount = 0, Fatigue = 0, }
	local function _MffXfgvTUEUygFMyDqggcOqvHYmFzMiJTBQNlALRacQtSzGHli()
		local _VZQyVsBaOtZLZOiQJaVDKk = UserInputService:GetMouseLocation()
		local _kdVfzuJYhvDkKXqBBLOmJn = LocalPlayer.PlayerGui:GetGuiObjectsAtPosition(_VZQyVsBaOtZLZOiQJaVDKk.X, _VZQyVsBaOtZLZOiQJaVDKk.Y)
		for i, v in _kdVfzuJYhvDkKXqBBLOmJn  do
			if v.Visible and v.BackgroundTransparency < 1 and (v:IsA('TextButton') or v:IsA('ImageButton') or v:IsA('TextBox') or v:IsA('Frame'))  then
				return true
			end

		end
		return false
	end
	local function _pCdsqEnuqhmjYobBdthImCzGxIbuerCrGejEAtoBcdLcqZjtqY(BaseDelay)
		if (Config.Autoclicker.LegitMode.Value == true or
		IsGhostMode == true)  then

			_GGNLziCZURnFwvSF.RhythmPhase += 0.3 _GGNLziCZURnFwvSF.Fatigue = (math.random() < 0.01 and 0 or _GGNLziCZURnFwvSF.Fatigue + 0.0005)
			if _GGNLziCZURnFwvSF.IsBursting == false and math.random() < 0.03  then
				_GGNLziCZURnFwvSF.IsBursting = true _GGNLziCZURnFwvSF.BurstCount = 0
				_GGNLziCZURnFwvSF.BurstTarget = math.random(2, 4)
			end
			local _QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu = BaseDelay
			if _GGNLziCZURnFwvSF.IsBursting == true  then

				_QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu -= BaseDelay * 0.05 _GGNLziCZURnFwvSF.BurstCount += 1
				if _GGNLziCZURnFwvSF.BurstCount >= _GGNLziCZURnFwvSF.BurstTarget  then

					_GGNLziCZURnFwvSF.IsBursting = false
				end

			end

			_QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu = (_QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu + math.sin(_GGNLziCZURnFwvSF.RhythmPhase) * BaseDelay * 0.02)
			local _uBByAvhbFV = ((math.random() * 2 - 1) * BaseDelay * 0.05)
			_QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu = _QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu + _uBByAvhbFV
			if math.random() < 0.04  then

				_QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu = (_QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu + BaseDelay * (0.1 + math.random() * 0.15))
			end

			_QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu = _QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu + _GGNLziCZURnFwvSF.Fatigue
			if _GGNLziCZURnFwvSF.LastJitter < -BaseDelay * 0.04  then

				_QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu = (_QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu + BaseDelay * 0.02)
			end

			_GGNLziCZURnFwvSF.LastJitter = _uBByAvhbFV
			return math.max(BaseDelay * 0.5, _QCqXQZaKxaYXRVoBjPeQxYVfojwkeQPPzu)

		else
			return BaseDelay
		end

	end
	local _jhlEzWBjTESreWBVrPDrYDVRgMkooSXzoIklNToEBj = _svDgxurBEjKTjUzPoRbkMHY:CreateToggle({
	Name = 'Autoclicker', Function = function()
		repeat local _dNRKWilPWWqbikXd = _pCdsqEnuqhmjYobBdthImCzGxIbuerCrGejEAtoBcdLcqZjtqY(1 / ((Config.Autoclicker.LegitMode.Value == true or IsGhostMode) and math.min(Config.Autoclicker.Cps.Value, (12+5)) or Config.Autoclicker.Cps.Value))
		task.wait(_dNRKWilPWWqbikXd)
		if Config.Autoclicker.MouseDown.Value == true and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) == false  then
			return
		end

		_EUwHRWvtKQRbhOukKDBBnrUIhzpVnGctFpWAkLkYhbSVFkC = false
		_UOgkjrCcuKYvuYVfiGWxZV = false
		task.spawn(function()
			local _etSlUkMeZluZPVlhXjpqGxq = GetSwords()
			if _etSlUkMeZluZPVlhXjpqGxq  then
				for i, v in next, _etSlUkMeZluZPVlhXjpqGxq  do
					if _IPFDeFlADyGLkZkvDxbVVQPYgeeFA(v.tool)  then

						_EUwHRWvtKQRbhOukKDBBnrUIhzpVnGctFpWAkLkYhbSVFkC = true
					end

				end

			end
			if _EUwHRWvtKQRbhOukKDBBnrUIhzpVnGctFpWAkLkYhbSVFkC == true  then
				if IsBadExecutor == true  then
					if _MffXfgvTUEUygFMyDqggcOqvHYmFzMiJTBQNlALRacQtSzGHli() == false  then

						VirtualUser:ClickButton1(Vector2.new(Workspace.CurrentCamera.ViewportSize.X / 2, Workspace.CurrentCamera.ViewportSize.Y / 2))
					end

				else
					buttonFrame.SwordController:swingSwordAtMouse()
				end

			end

		end)
		task.spawn(function()
			if Config.Autoclicker.PlaceBlocks.Value == true  then
				local _wKFCUdMOpvAswzTOsPnYVYVOJBRVhP = _iHlAPVMUvdpQCZvIHsbOmnaxFoitImnGKvwLvxV()
				if _wKFCUdMOpvAswzTOsPnYVYVOJBRVhP  then
					if _IPFDeFlADyGLkZkvDxbVVQPYgeeFA(_wKFCUdMOpvAswzTOsPnYVYVOJBRVhP.tool) == true  then
						if IsBadExecutor == true  then

							VirtualUser:ClickButton1(Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2))

						else
							local pcallSuccess, _NdvpFbfKEZcGOvqZ = pcall(function()
								return buttonFrame.BlockPlacementController.blockPlacer
							end)
							if pcallSuccess and _NdvpFbfKEZcGOvqZ  then
								local _xVGiFDrNZMTHUGaAKCXFjdGblayXVZWaHfHpEjeHxdu = _NdvpFbfKEZcGOvqZ.clientManager:getBlockSelector():getMouseInfo(0)
								if _xVGiFDrNZMTHUGaAKCXFjdGblayXVZWaHfHpEjeHxdu  then

									_NdvpFbfKEZcGOvqZ:placeBlock( _xVGiFDrNZMTHUGaAKCXFjdGblayXVZWaHfHpEjeHxdu.placementPosition, _xVGiFDrNZMTHUGaAKCXFjdGblayXVZWaHfHpEjeHxdu )
								end

							end

						end

					end

				end

			end

		end)

	until  shared[UninjectedKey] == true or Config.Autoclicker.Value == false
end

, HoverText = 'Clicks At The Desired Speed ' })
local _KkrYtjWcQDgMMrSRCuaVRtUQeojmcVGPhEgktKdcJMcSbBWARH = _jhlEzWBjTESreWBVrPDrYDVRgMkooSXzoIklNToEBj:CreateSlider({
Name = 'Cps', Function = function()
end

, MaximumValue = (75+25),
DefaultValue = 5 })
local _dqCenzWstPkxMTloLanZHpTvnolNtjMUGnK = _jhlEzWBjTESreWBVrPDrYDVRgMkooSXzoIklNToEBj:CreateToggle({
Name = 'PlaceBlocks', Function = function()
end

, DefaultValue = true })
local _ZdKVLRtJKByym = _jhlEzWBjTESreWBVrPDrYDVRgMkooSXzoIklNToEBj:CreateToggle({
Name = 'LegitMode', Function = function()
end

, DefaultValue = false })
local _fyHyqEFDLHvNQqEMhdpcGWpivILioYXfxCKTjwpKXZPhH = _jhlEzWBjTESreWBVrPDrYDVRgMkooSXzoIklNToEBj:CreateToggle({
Name = 'MouseDown', Function = function()
end

, DefaultValue = false })
end)
task.spawn(function()
	if IsGhostMode == false  then
		local _xgKTEjMzAUINj = _svDgxurBEjKTjUzPoRbkMHY:CreateToggle({
		Name = 'InstantKill', Function = function()
			repeat task.wait((1 / Config.InstantKill.Speed.Value) + 0.2)
			if IsAlive(LocalPlayer) == true  then
				local colorVal = _gQWdlFHzWMNX((13+5), true)
				if getAliveCount() ~= 0 and colorVal  then
					if Config.InstantKill.Method.InfernalSaber.Value == true  then
						local _AtIHbSuuFiRjbhHRxpaMpovQNVBqrhRTZiOiJEwMvsmPqTbKwx = HasItem('infernal_saber')
						if _AtIHbSuuFiRjbhHRxpaMpovQNVBqrhRTZiOiJEwMvsmPqTbKwx  then

							labelFrame.HellBladeReleaseRemote:FireServer({chargeTime = 1.2,
							player = LocalPlayer, weapon = _AtIHbSuuFiRjbhHRxpaMpovQNVBqrhRTZiOiJEwMvsmPqTbKwx})
						end

					end
					if Config.InstantKill.Method.SkyScythe.Value == true  then
						local _XxvjJaOXupfz = HasItem('sky_scythe')
						if _XxvjJaOXupfz  then

							labelFrame.SkyScytheSpinRemote:FireServer()
						end

					end

				end

			end

		until  Config.InstantKill.Value == false or shared[UninjectedKey] == true
	end

	, HoverText = 'Kills The Enemies Instantly (Infernal Saber / Sky Scythe Needed)' }) _xgKTEjMzAUINj:CreateSlider({
	Name = 'Speed', Function = function()
	end

	, MaximumValue = (3+7),
	DefaultValue = (2+8) })
	local _kcuSJmAJBrLIysxwyBYYrvCGuDdebXneIZyyHvaSMUeuwN = _xgKTEjMzAUINj:CreateDropdown({
	Name = 'Method', Function = function()
	end

	, HoverText = 'Pick What Method You Want The InstantKill To Be ' }) _kcuSJmAJBrLIysxwyBYYrvCGuDdebXneIZyyHvaSMUeuwN:CreateToggle({
	Name = 'InfernalSaber', Function = function()
	end

	, DefaultValue = true }) _kcuSJmAJBrLIysxwyBYYrvCGuDdebXneIZyyHvaSMUeuwN:CreateToggle({
	Name = 'SkyScythe', Function = function()
	end

	, DefaultValue = true })
end

end)
task.spawn(function()
	local _sNQBRBMfjoXwEtlNSdaZbGtcmnpffGJoLhTFIPlYc = _svDgxurBEjKTjUzPoRbkMHY:CreateToggle({
	Name = 'AimAssist', Function = function()
		repeat task.wait()
		if Config.AimAssist.MouseDown.Value == true and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) == false  then
			return
		end
		if IsAlive(LocalPlayer) == true and getAliveCount() ~= 0  then
			local targetPlayer = FindNearestPlayer(Config.AimAssist.Range.Value)
			local colorVal = _gQWdlFHzWMNX(Config.AimAssist.Range.Value, false)
			if targetPlayer or colorVal  then
				local serverConstraint
				if Config.AimAssist.FaceEntities.Value == true and colorVal  then

					serverConstraint = colorVal.PrimaryPart
				end
				if targetPlayer  then

					serverConstraint = targetPlayer.Character.PrimaryPart
				end
				local gradientObj = (serverConstraint.Position - Camera.CFrame.Position).Unit
				local _PHRBcjoXMBilsbukNvMKcqjJgN = Camera.CFrame.LookVector:Dot(gradientObj)
				local posA = math.deg(math.acos(_PHRBcjoXMBilsbukNvMKcqjJgN))
				if Config.AimAssist.LegitMode.Value == true or
				IsGhostMode == true  then
					if posA <= math.min(Config.AimAssist.Angle.Value, (22+8))  then
						local _FJomcLjZUouCWqnMbazBzqMNowZNpNjkqVLWLZXk = targetPlayer and targetPlayer.Character.PrimaryPart.AssemblyLinearVelocity or (colorVal and colorVal.PrimaryPart.AssemblyLinearVelocity or Vector3.zero)
						local _NgvdfQlpCWSfCckZoHwrUrpCLyBLPgpzmDguIJdPJxeeWkOPOV = Vector3.new(_FJomcLjZUouCWqnMbazBzqMNowZNpNjkqVLWLZXk.X, 0, _FJomcLjZUouCWqnMbazBzqMNowZNpNjkqVLWLZXk.Z).Magnitude / (4+12)
						local _HOxBiBqZMinbbGaNMAsrd = math.clamp(0.35 + _NgvdfQlpCWSfCckZoHwrUrpCLyBLPgpzmDguIJdPJxeeWkOPOV * 0.65, 0.35, 1.8) * (math.abs(_FJomcLjZUouCWqnMbazBzqMNowZNpNjkqVLWLZXk.Y) > 2 and 5 or 3)
						local _alGpdAqVeCvdEL = (_NgvdfQlpCWSfCckZoHwrUrpCLyBLPgpzmDguIJdPJxeeWkOPOV * 0.025 * (1 + (1 - math.clamp(posA / math.min(Config.AimAssist.Angle.Value, (27+3)), 0, 1)) * 2))
						local _ZkgpRodELUJeRXrvkCP = os.clock()
						Camera.CFrame = Camera.CFrame:Lerp(CFrame.lookAt(Camera.CFrame.Position, Camera.CFrame.Position + gradientObj) * CFrame.Angles(math.sin(_ZkgpRodELUJeRXrvkCP * (8+6)) * 0.1 * _HOxBiBqZMinbbGaNMAsrd + math.sin(_ZkgpRodELUJeRXrvkCP * (1+17)) * _alGpdAqVeCvdEL, math.cos(_ZkgpRodELUJeRXrvkCP * (6+11)) * 0.1 * _HOxBiBqZMinbbGaNMAsrd + math.cos(_ZkgpRodELUJeRXrvkCP * (10+13)) * _alGpdAqVeCvdEL, 0), math.clamp(-0.34 + _alGpdAqVeCvdEL, 0.34, 0.42))
					end

				else
					if posA <= Config.AimAssist.Angle.Value  then

						Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, (Camera.CFrame.Position + gradientObj)), 2 / math.max(Config.AimAssist.Smoothness.Value, 1))
					end

				end

			end

		end

	until  shared[UninjectedKey] == true or Config.AimAssist.Value == false
end

, HoverText = 'Makes Your Camera Face The Disered Entity ' })
local _ALaZKdRqetyl = _sNQBRBMfjoXwEtlNSdaZbGtcmnpffGJoLhTFIPlYc:CreateToggle({
Name = 'FaceEntities', Function = function()
end

, DefaultValue = false })
local _ZdKVLRtJKByym = _sNQBRBMfjoXwEtlNSdaZbGtcmnpffGJoLhTFIPlYc:CreateToggle({
Name = 'LegitMode', Function = function()
end

, DefaultValue = false })
local _fyHyqEFDLHvNQqEMhdpcGWpivILioYXfxCKTjwpKXZPhH = _sNQBRBMfjoXwEtlNSdaZbGtcmnpffGJoLhTFIPlYc:CreateToggle({
Name = 'MouseDown', Function = function()
end

, DefaultValue = false })
local _aWyniOxfYWysNxosYJqnHbkTpphcnHo = _sNQBRBMfjoXwEtlNSdaZbGtcmnpffGJoLhTFIPlYc:CreateSlider({
Name = 'Smoothness', Function = function()
end

, MaximumValue = (88+12),
DefaultValue = (9+1) })
local _aWyniOxfYWysNxosYJqnHbkTpphcnHo = _sNQBRBMfjoXwEtlNSdaZbGtcmnpffGJoLhTFIPlYc:CreateSlider({
Name = 'Angle', Function = function()
end

, MaximumValue = (115+245),
DefaultValue = (192+168) })
local _UMekpOgLDwjVGcRxPlzzYyGnmOYWOKqKcmy = _sNQBRBMfjoXwEtlNSdaZbGtcmnpffGJoLhTFIPlYc:CreateSlider({
Name = 'Range', Function = function()
end

, MaximumValue = (5+20),
DefaultValue = (13+6) })
end)
task.spawn(function()
	if IsBadExecutor == false and _TeNrUEOLnSqXyBTzEnFEtXpzmpjVWCWalJHTfvYoAXhn.KnockbackUtil  then
		local _TsGLJKchRBkvCyFfChVtrULopWjkxJFLryIDGqXvWgItu = _TeNrUEOLnSqXyBTzEnFEtXpzmpjVWCWalJHTfvYoAXhn.KnockbackUtil.applyKnockback
		local _BsbjNJHyMiJhNPk = _svDgxurBEjKTjUzPoRbkMHY:CreateToggle({
		Name = 'Velocity', Function = function()
			if Config.Velocity.Value == true  then

				_TsGLJKchRBkvCyFfChVtrULopWjkxJFLryIDGqXvWgItu = _TeNrUEOLnSqXyBTzEnFEtXpzmpjVWCWalJHTfvYoAXhn.KnockbackUtil.applyKnockback _TeNrUEOLnSqXyBTzEnFEtXpzmpjVWCWalJHTfvYoAXhn.KnockbackUtil.applyKnockback = function(_tKcNCILWDcojttSIQFkYDsvxqknDXusWeJPisC, _GaYVTqixHQLHLQVfFdcGFIkgfnYjCzYJxMejH, listLayout2, _MDVmpxEksMsDlyTEB, ...)
					_MDVmpxEksMsDlyTEB = _MDVmpxEksMsDlyTEB or {}
					local _fZGEqBMWvraIoLgitZewqOYnIHoHWtUNmzOBFRbeY = (_MDVmpxEksMsDlyTEB.horizontal and _MDVmpxEksMsDlyTEB.horizontal or 1)
					local _YSRXPYmITmfXxNKg = (_MDVmpxEksMsDlyTEB.vertical and _MDVmpxEksMsDlyTEB.vertical or 1)
					if IsGhostMode == true  then

						_MDVmpxEksMsDlyTEB.horizontal = (_fZGEqBMWvraIoLgitZewqOYnIHoHWtUNmzOBFRbeY * (Config.Velocity.Horizontal.Value / (132+868)))
						_MDVmpxEksMsDlyTEB.vertical = (_YSRXPYmITmfXxNKg * (Config.Velocity.Vertical.Value / (279+721)))

					else
						_MDVmpxEksMsDlyTEB.horizontal = (_fZGEqBMWvraIoLgitZewqOYnIHoHWtUNmzOBFRbeY * (Config.Velocity.Horizontal.Value / (60+40)))
						_MDVmpxEksMsDlyTEB.vertical = (_YSRXPYmITmfXxNKg * (Config.Velocity.Vertical.Value / (13+87)))
					end
					return _TsGLJKchRBkvCyFfChVtrULopWjkxJFLryIDGqXvWgItu(_tKcNCILWDcojttSIQFkYDsvxqknDXusWeJPisC, _GaYVTqixHQLHLQVfFdcGFIkgfnYjCzYJxMejH, listLayout2, _MDVmpxEksMsDlyTEB, ...)
				end

			end
			if Config.Velocity.Value == false  then

				_TeNrUEOLnSqXyBTzEnFEtXpzmpjVWCWalJHTfvYoAXhn.KnockbackUtil.applyKnockback = _TsGLJKchRBkvCyFfChVtrULopWjkxJFLryIDGqXvWgItu
			end

		end

		, HoverText = 'Changes The Knockback Direction, 100 Being Normal Value ' })
		local _fZGEqBMWvraIoLgitZewqOYnIHoHWtUNmzOBFRbeY = _BsbjNJHyMiJhNPk:CreateSlider({
		Name = 'Horizontal', Function = function()
		end

		, MaximumValue = (80+20),
		DefaultValue = 0 })
		local _YSRXPYmITmfXxNKg = _BsbjNJHyMiJhNPk:CreateSlider({
		Name = 'Vertical', Function = function()
		end

		, MaximumValue = (40+60),
		DefaultValue = 0 }) UnInjectEvent.Event:Connect(function() _TeNrUEOLnSqXyBTzEnFEtXpzmpjVWCWalJHTfvYoAXhn.KnockbackUtil.applyKnockback = _TsGLJKchRBkvCyFfChVtrULopWjkxJFLryIDGqXvWgItu
		end)

	else
		local _DRQMGfEnocW = hsvHue.KnockbackUtil:GetAttribute('ConstantManager_kbDirectionStrength')
		local _BRQcqmRHQASJSUNoBjsinpWwY = hsvHue.KnockbackUtil:GetAttribute('ConstantManager_kbUpwardStrength')
		local _BsbjNJHyMiJhNPk = _svDgxurBEjKTjUzPoRbkMHY:CreateToggle({
		Name = 'Velocity', Function = function()
			if Config.Velocity.Value == true  then

				hsvHue.KnockbackUtil:SetAttribute('ConstantManager_kbDirectionStrength', _DRQMGfEnocW * (1 - Config.Velocity.Horizontal.Value / (IsGhostMode == true and (909+91) or (77+23)))) hsvHue.KnockbackUtil:SetAttribute('ConstantManager_kbUpwardStrength', _DRQMGfEnocW * (1 - Config.Velocity.Vertical.Value / (IsGhostMode == true and (851+149) or (41+59))))
			end
			if Config.Velocity.Value == false  then

				hsvHue.KnockbackUtil:SetAttribute('ConstantManager_kbDirectionStrength', _DRQMGfEnocW) hsvHue.KnockbackUtil:SetAttribute('ConstantManager_kbUpwardStrength', _BRQcqmRHQASJSUNoBjsinpWwY)
			end

		end

		, HoverText = 'Changes The Knockback Direction, 100 Being Normal Value ' })
		local _fZGEqBMWvraIoLgitZewqOYnIHoHWtUNmzOBFRbeY = _BsbjNJHyMiJhNPk:CreateSlider({
		Name = 'Horizontal', Function = function()
			if Config.Velocity.Value == true and shared[UninjectedKey] == false  then

				hsvHue.KnockbackUtil:SetAttribute('ConstantManager_kbDirectionStrength', _DRQMGfEnocW * (1 - Config.Velocity.Horizontal.Value / (IsGhostMode == true and (689+311) or (50+50))))
			end

		end

		, MaximumValue = (93+7),
		DefaultValue = 0 })
		local _YSRXPYmITmfXxNKg = _BsbjNJHyMiJhNPk:CreateSlider({
		Name = 'Vertical', Function = function()
			if Config.Velocity.Value == true and shared[UninjectedKey] == false  then

				hsvHue.KnockbackUtil:SetAttribute('ConstantManager_kbUpwardStrength', _DRQMGfEnocW * (1 - Config.Velocity.Vertical.Value / (IsGhostMode == true and (201+799) or (43+57))))
			end

		end

		, MaximumValue = (60+40),
		DefaultValue = 0 }) UnInjectEvent.Event:Connect(function() hsvHue.KnockbackUtil:SetAttribute('ConstantManager_kbDirectionStrength', _DRQMGfEnocW) hsvHue.KnockbackUtil:SetAttribute('ConstantManager_kbUpwardStrength', _BRQcqmRHQASJSUNoBjsinpWwY)
		end)
	end

end)
task.spawn(function()
	local _sEmyoNNIcnlndCTwbLwSFK = nil
	local isExpanded
	local waveSpeed
	local _oHbVjaaezCmMexjLUcnlKkpO = _UYLGxWfghXkeOzrGVz()
	local _PejQGGKgFVozrrSDEzIQmmjydh = false
	local _KkOGVQtrixNdbnykwkKrzpKDdFhsdwtmNItTBAzXoH = {
	AlSploitHeartbeat = { {CFrame = CFrame.new(0.2, 0, -1.3) * CFrame.Angles(math.rad((95+5)), math.rad((62+38)), math.rad((35+95))),
	Time = 0.15}, {CFrame = CFrame.new(0, -0.2, -1.7) * CFrame.Angles(math.rad((35+5)), math.rad((22+89)), math.rad((168+12))),
	Time = 0.15} }, AlSploitClassic = { {CFrame = CFrame.new(0.2, 0, -1.3) * CFrame.Angles(math.rad((95+16)), math.rad((107+4)), math.rad((3+127))),
	Time = 0.17}, {CFrame = CFrame.new(0, -0.2, -1.7) * CFrame.Angles(math.rad((1+29)), math.rad((22+89)), math.rad((161+29))),
	Time = 0.17} }, AlSploitOld = { {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad((179+41)), math.rad((60+40)), math.rad((44+56))),Time = 0.25}, {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
	Time = 0.25} }, Neutral = { {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
	Time = 0.05}, } }
	local _aLDIJccmOUOimqDCzexymBahCjWSpXTKeivWWRlHlyRcsaX = tick()
	local function _CZduyPXQcKUmWwdsZeyYHiEQHJLDjQdbDprimYJolKuakMqFW(Entity, EntityDistance, isAlive)
		if (tick() - _aLDIJccmOUOimqDCzexymBahCjWSpXTKeivWWRlHlyRcsaX) < 0.1111111111111111  then
			if math.random(0, (46+54)) > (5+85)  then

				labelFrame.SwordSwingMissRemote:FireServer({ weapon = isAlive.tool,
				chargeRatio = 0 })
			end

		end
		if (tick() - _aLDIJccmOUOimqDCzexymBahCjWSpXTKeivWWRlHlyRcsaX) < 0.294 + ((IsGhostMode == true or
		Config.Killaura.LegitMode.Value == true) and math.random(1, (98+2)) / (550+1450) or 0)  then
			return
		end
		local _PRfaGnqWWPTMoPAOTlRGWqZWJRzG = LocalPlayer.Character.HumanoidRootPart
		local _PmgPwFznKetgPIuMYQGfJkvk = Entity.PrimaryPart
		local _aNyWXXdtrxpQUDgDqWJJQQYfWDbGzfBzkBrshcAUltvmIoZ = Ray.new(Camera.CFrame.Position, Entity.PrimaryPart.Position).Unit.Direction
		local gradientObj = CFrame.lookAt(_PRfaGnqWWPTMoPAOTlRGWqZWJRzG.Position, _PmgPwFznKetgPIuMYQGfJkvk.Position).LookVector
		local _UYLUbVhvfPwE = ((math.max(EntityDistance - 14.39999, 0) * gradientObj) + LocalPlayer.Character.PrimaryPart.Position)
		if IsBadExecutor == false and buttonFrame.SwordController  then
			if Config.Killaura.LegitAnimation.Value == true or (IsGhostMode or
			Config.Killaura.LegitMode.Value == true)  then

				buttonFrame.SwordController:swingSwordAtMouse()
			end

		else
			if Config.Killaura.LegitAnimation.Value == true or (IsGhostMode or
			Config.Killaura.LegitMode.Value == true)  then

				_LYUVFOdBWIYBMLhttGdMmlgTHCozclmVcmLutvlvCWzK.SwordController:playSwordEffect(isAlive.tool)
			end

		end
		if uiPadding.SwordController  then

			uiPadding.SwordController.lastAttack = Workspace:GetServerTimeNow()
		end

		_aLDIJccmOUOimqDCzexymBahCjWSpXTKeivWWRlHlyRcsaX = tick()
		if IsGhostMode == true or
		Config.Killaura.LegitMode.Value == true  then

			labelFrame.SwordHitRemote:FireServer({ weapon = isAlive.tool,
			chargedAttack = {chargeRatio = 0},
			entityInstance = Entity, validate = {
			raycast = { cameraPosition = {value = Camera.CFrame.Position},
			cursorDirection = {value = Mouse.UnitRay.Direction} },
			targetPosition = {value = _PmgPwFznKetgPIuMYQGfJkvk.Position},
			selfPosition = {value = LocalPlayer.Character.PrimaryPart.Position} } })

		else
			labelFrame.SwordHitRemote:FireServer({ weapon = isAlive.tool,
			chargedAttack = {chargeRatio = 0},
			entityInstance = Entity, validate = {
			raycast = { cameraPosition = {value = _PRfaGnqWWPTMoPAOTlRGWqZWJRzG.Position},
			cursorDirection = {value = _aNyWXXdtrxpQUDgDqWJJQQYfWDbGzfBzkBrshcAUltvmIoZ} },
			targetPosition = {value = _PmgPwFznKetgPIuMYQGfJkvk.Position},
			selfPosition = {value = _UYLUbVhvfPwE} } })
		end
		task.spawn(function()
			if _GpUaqkLSnnGNuLHPdboqY == 'summoner'  then

				labelFrame.SummonerClawAttackRequestRemote:FireServer({clientTime = tick(),
				direction = LocalPlayer.Character.PrimaryPart.CFrame.LookVector, position = LocalPlayer.Character.PrimaryPart.Position})
			end

		end)
	end
	local function _LAvoKdCZEjHnqdcHXYJvpyRbITfWKKQJFUId(colorVal, uiGradient, isAlive)
		if uiGradient <= 12.6  then

			_CZduyPXQcKUmWwdsZeyYHiEQHJLDjQdbDprimYJolKuakMqFW(colorVal, uiGradient, isAlive)
		end

	end
	local function _UFAkjDRtddNfmgpzxgjzpsmcZwS(colorVal, uiGradient, isAlive)
		local _QoiOHSuFHHRQUWbKmSwemAkRRsWLrBjHJ = Camera:ViewportPointToRay((Camera.ViewportSize / 2).X, (Camera.ViewportSize / 2).Y)
		local dropdownFrame = RaycastParams.new()
		dropdownFrame.FilterDescendantsInstances = {LocalPlayer.Character}
		dropdownFrame.FilterType = Enum.RaycastFilterType.Exclude
		local hoverLabel = Workspace:Raycast(_QoiOHSuFHHRQUWbKmSwemAkRRsWLrBjHJ.Origin, _QoiOHSuFHHRQUWbKmSwemAkRRsWLrBjHJ.Direction * (161+39), dropdownFrame)
		if hoverLabel and hoverLabel.Instance  then
			local cornerObj = (LocalPlayer.Character.PrimaryPart.Position - hoverLabel.Instance.Position).Magnitude
			if cornerObj <= 14.4  then

				_CZduyPXQcKUmWwdsZeyYHiEQHJLDjQdbDprimYJolKuakMqFW(colorVal, uiGradient, isAlive)
			end

		else
			_LAvoKdCZEjHnqdcHXYJvpyRbITfWKKQJFUId(colorVal, uiGradient, isAlive)
		end

	end
	local function _nrJPKKFNjXCMeWfQDyftyS(colorVal, uiGradient, isAlive)
		local dropdownFrame = RaycastParams.new()
		dropdownFrame.FilterDescendantsInstances = {LocalPlayer.Character}
		dropdownFrame.FilterType = Enum.RaycastFilterType.Exclude
		local hoverLabel = Workspace:Raycast(Mouse.UnitRay.Origin, Mouse.UnitRay.Direction * (67+133), dropdownFrame)
		if hoverLabel and hoverLabel.Instance  then
			local cornerObj = (LocalPlayer.Character.PrimaryPart.Position - hoverLabel.Instance.Position).Magnitude
			if cornerObj <= 14.4  then

				_CZduyPXQcKUmWwdsZeyYHiEQHJLDjQdbDprimYJolKuakMqFW(colorVal, uiGradient, isAlive)
			end

		else
			_LAvoKdCZEjHnqdcHXYJvpyRbITfWKKQJFUId(colorVal, uiGradient, isAlive)
		end

	end
	local _bUYRVEDLfylAMkGeyiXI = _svDgxurBEjKTjUzPoRbkMHY:CreateToggle({
	Name = 'Killaura', Function = function()
	end

	, HoverText = 'Automatically Hits Entities For You ' })
	local _EBQqBxHigHeBQQXsqzbDzbVMu = _bUYRVEDLfylAMkGeyiXI:CreateToggle({
	Name = 'CustomAnimation', Function = function()
	end

	, DefaultValue = true })
	local _mTHgUasUfqWEzQE = _bUYRVEDLfylAMkGeyiXI:CreateToggle({
	Name = 'SwitchToWeapon', Function = function()
	end

	, DefaultValue = true })
	local _EBQqBxHigHeBQQXsqzbDzbVMu = _bUYRVEDLfylAMkGeyiXI:CreateToggle({
	Name = 'LegitAnimation', Function = function()
	end

	, DefaultValue = false })
	local isExpanded = _bUYRVEDLfylAMkGeyiXI:CreateToggle({
	Name = 'ParticleEffect', Function = function()
	end

	, DefaultValue = true })
	local _XZdlJwSMZctDclcQEPyJscfRKfMYFfhaOjWtfLOyK = _bUYRVEDLfylAMkGeyiXI:CreateToggle({
	Name = 'ShowEnemy', Function = function()
	end

	, DefaultValue = true })
	local _ZdKVLRtJKByym = _bUYRVEDLfylAMkGeyiXI:CreateToggle({
	Name = 'LegitMode', Function = function()
	end

	, DefaultValue = false })
	local _FYNuhpKQNJnMWZkntkMh = _bUYRVEDLfylAMkGeyiXI:CreateToggle({
	Name = 'WallCheck', Function = function()
	end

	, DefaultValue = false })
	local _xSvEnGbpDIlkFKqtQPHwBkVEunaeBdyPVeImTOzZHMgnWpKqp = _bUYRVEDLfylAMkGeyiXI:CreateSlider({
	Name = 'HitChance', Function = function()
	end

	, DefaultValue = (52+48),
	MaximumValue = (55+45) })
	local _UMekpOgLDwjVGcRxPlzzYyGnmOYWOKqKcmy = _bUYRVEDLfylAMkGeyiXI:CreateSlider({
	Name = 'Range', Function = function()
	end

	, DefaultValue = (8+11),
	MaximumValue = (15+4) })
	local posA = _bUYRVEDLfylAMkGeyiXI:CreateSlider({
	Name = 'Angle', Function = function()
	end

	, DefaultValue = (180+180),
	MaximumValue = (290+70) })
	local _dSvPqMbNiCpUSnAjaGRgY = _bUYRVEDLfylAMkGeyiXI:CreateDropdown({
	Name = 'Exeptions', HoverText = 'What Is Required For Killaura To Work' })
	local _fyHyqEFDLHvNQqEMhdpcGWpivILioYXfxCKTjwpKXZPhH = _dSvPqMbNiCpUSnAjaGRgY:CreateToggle({
	Name = 'MouseDown', Function = function()
	end

	, DefaultValue = false })
	local _GHxRUFDjXlsNrYOkcLN = _dSvPqMbNiCpUSnAjaGRgY:CreateToggle({
	Name = 'GuiClosed', Function = function()
	end

	, DefaultValue = false })
	local _qouJzQRMYKkNklYNmDLLWuoBEOGlnXrPgcLcgsC = _bUYRVEDLfylAMkGeyiXI:CreateDropdown({
	Name = 'Animations', HoverText = 'Pick The Animation Of Your Choice' })
	local _SNHqvEWvOoPTwifGLqnpTTVYPuAoMrtUDEwBunaIFTUO = _qouJzQRMYKkNklYNmDLLWuoBEOGlnXrPgcLcgsC:CreateToggle({
	Name = 'AlSploitHeartbeat', Function = function()
		if Config.Killaura.Animations.AlSploitHeartbeat.Value == true  then

			_sEmyoNNIcnlndCTwbLwSFK = 'AlSploitHeartbeat'
		end

	end

	, DefaultValue = false })
	local _SNHqvEWvOoPTwifGLqnpTTVYPuAoMrtUDEwBunaIFTUO = _qouJzQRMYKkNklYNmDLLWuoBEOGlnXrPgcLcgsC:CreateToggle({
	Name = 'AlSploitClassic', Function = function()
		if Config.Killaura.Animations.AlSploitClassic.Value == true  then

			_sEmyoNNIcnlndCTwbLwSFK = 'AlSploitClassic'
		end

	end

	, DefaultValue = true })
	local _SNHqvEWvOoPTwifGLqnpTTVYPuAoMrtUDEwBunaIFTUO = _qouJzQRMYKkNklYNmDLLWuoBEOGlnXrPgcLcgsC:CreateToggle({
	Name = 'AlSploitOld', Function = function()
		if Config.Killaura.Animations.AlSploitOld.Value == true  then

			_sEmyoNNIcnlndCTwbLwSFK = 'AlSploitOld'
		end

	end

	, DefaultValue = false })
	local _gqycNgxgpSaLDDbGbAELcZTUAxPFEAeNmghVzckXgNgLu = _bUYRVEDLfylAMkGeyiXI:CreateColorSlider({
	Name = 'TargetBoxColor', Function = function()
	end

	, DefaultValue = Color3.new(1, 0.278431, 0.290196) }) Connections['KillauraConnection'] = RunService.Heartbeat:Connect(function(_cvJzKAscJvuEPrqUiywSMkSgVSitEVFLOwF)
		local _xSvEnGbpDIlkFKqtQPHwBkVEunaeBdyPVeImTOzZHMgnWpKqp = (Config.Killaura.HitChance.Value == (62+38) and 1 or math.random(1, ((71+29) / Config.Killaura.HitChance.Value)))
		if IsAlive(LocalPlayer) == true and getAliveCount() ~= 0 and _xSvEnGbpDIlkFKqtQPHwBkVEunaeBdyPVeImTOzZHMgnWpKqp == 1 and
		Config.Killaura.Value == true  then
			local colorVal, uiGradient = _gQWdlFHzWMNX(Config.Killaura.Range.Value, true)
			local _eBMplxZsiKWpFVquisJxjGNqHgeJZ, isAlive = getWeaponDamage(LocalPlayer)
			if colorVal and isAlive  then
				task.spawn(function()
					if (IsGhostMode == false and
					Config.Killaura.LegitMode.Value == false) and Config.Killaura.CustomAnimation.Value == true and
					_PejQGGKgFVozrrSDEzIQmmjydh == false  then

						_PejQGGKgFVozrrSDEzIQmmjydh = true _PqlgHOPanpgvkLoNEWvI(_KkOGVQtrixNdbnykwkKrzpKDdFhsdwtmNItTBAzXoH[_sEmyoNNIcnlndCTwbLwSFK])
						_PejQGGKgFVozrrSDEzIQmmjydh = false
					end

				end)
				task.spawn(function()
					if Config.Killaura.ParticleEffect.Value == true and not isExpanded and colorVal  then

						isExpanded = Instance.new('Part')
						isExpanded.Parent = Workspace
						isExpanded.Name = 'ParticleEffect' isExpanded.Transparency = 1
						isExpanded.CanCollide = false isExpanded.Anchored = true
						isExpanded.Size = Vector3.new(3.63, 4.27, 0.001)
						local _kySvvZmqbKxA = Instance.new('ParticleEmitter')
						_kySvvZmqbKxA.Parent = isExpanded
						_kySvvZmqbKxA.Name = 'ParticleEmitter'
						_kySvvZmqbKxA.EmissionDirection = Enum.NormalId.Front
						_kySvvZmqbKxA.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.5,0.125,0),NumberSequenceKeypoint.new(1,0.5499999523162842,0)})
						_kySvvZmqbKxA.Brightness = 1
						_kySvvZmqbKxA.Lifetime = NumberRange.new(0.75, 1.75)
						_kySvvZmqbKxA.Texture = 'rbxassetid://98715730126785'
						_kySvvZmqbKxA.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new((3+110)/(136+119),4/(7+78),1)),ColorSequenceKeypoint.new(1,Color3.new((25+88)/(78+177),4/(35+50),1))})
						_kySvvZmqbKxA.Speed = NumberRange.new(3)
						_kySvvZmqbKxA.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.6,0),NumberSequenceKeypoint.new(1,0,0)})
						_kySvvZmqbKxA.Rate = (6+17)
					end
					if Config.Killaura.ShowEnemy.Value == true and not waveSpeed and colorVal  then

						waveSpeed = Instance.new('Part')
						waveSpeed.Parent = Workspace
						waveSpeed.Name = 'KillauraBox' waveSpeed.Transparency = 0.6
						waveSpeed.CanCollide = false waveSpeed.CanQuery = false
						waveSpeed.Anchored = true waveSpeed.Material = Enum.Material.SmoothPlastic
						waveSpeed.CFrame = colorVal.PrimaryPart.CFrame
						local colorParts = string.split(Config.Killaura.TargetBoxColor.Value, ',')
						local r = colorParts[1]
						local g = colorParts[2]
						local b = colorParts[3]
						waveSpeed.Color = Color3.new(r, g, b)
						waveSpeed.Size = Vector3.new(4, 6, 4)
					end
					if isExpanded  then

						isExpanded.CFrame = (colorVal.PrimaryPart.CFrame - (colorVal.PrimaryPart.CFrame.LookVector * 1.2))
					end
					if waveSpeed  then

						waveSpeed.CFrame = colorVal.PrimaryPart.CFrame
						local colorParts = string.split(Config.Killaura.TargetBoxColor.Value, ',')
						local r = colorParts[1]
						local g = colorParts[2]
						local b = colorParts[3]
						waveSpeed.Color = Color3.new(r, g, b)
					end

				end)
				if (tick() - _jLImoAOtoUPPAHNwiZqbkfdyfszjOHYHMdK) <= 3  then
					return
				end
				local gradientObj = LocalPlayer.Character.PrimaryPart.CFrame.LookVector
				local _DCPLHyERNwztGxWOMPwAwlbTMlVyGahmaNQRFhcI = (colorVal.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Unit
				local _fVQLHXPpPAWFQkjgbjqrBaUdxIFJClHj = 0
				local posA = math.acos(_DCPLHyERNwztGxWOMPwAwlbTMlVyGahmaNQRFhcI:Dot(gradientObj))
				if IsGhostMode == true or
				Config.Killaura.LegitMode.Value == true  then

					_fVQLHXPpPAWFQkjgbjqrBaUdxIFJClHj = (73+47)

				else
					_fVQLHXPpPAWFQkjgbjqrBaUdxIFJClHj = Config.Killaura.Angle.Value
				end
				if posA > _fVQLHXPpPAWFQkjgbjqrBaUdxIFJClHj  then

					print('unpassed1')
					return
				end
				local dropdownFrame = RaycastParams.new()
				dropdownFrame.FilterDescendantsInstances = {Workspace:FindFirstChild('Map')}
				dropdownFrame.FilterType = Enum.RaycastFilterType.Include
				local listLayout2 = (colorVal.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Unit * (11+89)
				local hoverLabel = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, listLayout2, dropdownFrame)
				if (IsGhostMode == true or
				Config.Killaura.LegitMode.Value == true and true or Config.Killaura.WallCheck.Value) and (hoverLabel and hoverLabel.Position or false)  then

					print('unpassed2')
					return
				end
				if Config.Killaura.Exeptions.MouseDown.Value == true and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) == false  then

					print('unpassed3')
					return
				end
				if Config.Killaura.Exeptions.GuiClosed.Value == true and
				ContainerFrame.Visible == true  then

					print('unpassed4')
					return
				end
				if (IsGhostMode == true or
				Config.Killaura.LegitMode.Value == true and true or Config.Killaura.SwitchToWeapon.Value) and isAlive  then

					_UmeGgTixFbsxHHyCIaWwnZvsHnHGZYpIoILKOwetH(isAlive.tool)
				end
				if IsGhostMode == true or
				Config.Killaura.LegitMode.Value == true  then
					local dropdownFrame = RaycastParams.new()
					dropdownFrame.FilterDescendantsInstances = {LocalPlayer.Character, colorVal}
					dropdownFrame.FilterType = Enum.RaycastFilterType.Exclude
					local listLayout2 = (colorVal.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Unit * (180+20)
					local hoverLabel = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, listLayout2, dropdownFrame)
					if (hoverLabel and hoverLabel.Position) == true  then

						print('unpassed5')
						return
					end

				end
				if IsGhostMode == true or
				Config.Killaura.LegitMode.Value == true  then
					if _oHbVjaaezCmMexjLUcnlKkpO == 'Mobile'  then
						if (Camera.CFrame.Position - Camera.Focus.Position).Magnitude <= 1  then

							_UFAkjDRtddNfmgpzxgjzpsmcZwS(colorVal, uiGradient, isAlive)

						else
							_LAvoKdCZEjHnqdcHXYJvpyRbITfWKKQJFUId(colorVal, uiGradient, isAlive)
						end

					end
					if _oHbVjaaezCmMexjLUcnlKkpO == 'PC'  then

						_nrJPKKFNjXCMeWfQDyftyS(colorVal, uiGradient, isAlive)
					end

				else
					_CZduyPXQcKUmWwdsZeyYHiEQHJLDjQdbDprimYJolKuakMqFW(colorVal, uiGradient, isAlive)
				end

			else
				if isExpanded  then

					isExpanded:Destroy() isExpanded = nil
				end
				if waveSpeed  then

					waveSpeed:Destroy() waveSpeed = nil
				end

			end
			task.spawn(function()
				if isAlive and isAlive.tool and not colorVal or Config.Killaura.Value == false  then

					_PqlgHOPanpgvkLoNEWvI(_KkOGVQtrixNdbnykwkKrzpKDdFhsdwtmNItTBAzXoH.Neutral)
				end

			end)
		end

	end) UnInjectEvent.Event:Connect(function()
		if isExpanded  then

			isExpanded:Destroy()
		end
		if waveSpeed  then

			waveSpeed:Destroy()
		end

	end)
end)
task.spawn(function()
	if IsGhostMode == false  then
		local function _nvsfZZGQqsuhV()
			local sizeConstraint = _eksMnXCgikcxygDIqPLBxZmUTLK(true, true)
			local _mLvaYBIsQzYLuKnTpRdWiA = LocalPlayer.Character.PrimaryPart.Position.Y
			LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(LocalPlayer.Character.PrimaryPart.Position + Vector3.new(0, (22+3), 0))
			local _cmiJPZUwUhUesPqbqqfrW, isAlive, _xqAmaZjXfOzvpeRXYZdVVTcmZDRrJXGMLiXuAfCgHujbqt = getWeaponDamage(LocalPlayer)
			if isAlive  then
				task.wait(_xqAmaZjXfOzvpeRXYZdVVTcmZDRrJXGMLiXuAfCgHujbqt)

			else
				task.wait(0.3)
			end

			LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, _mLvaYBIsQzYLuKnTpRdWiA + 5, LocalPlayer.Character.PrimaryPart.Position.Z))
			Camera.CameraSubject = LocalPlayer.Character.Humanoid sizeConstraint:Destroy()
			if isAlive  then
				task.wait(_xqAmaZjXfOzvpeRXYZdVVTcmZDRrJXGMLiXuAfCgHujbqt)

			else
				task.wait(0.3)
			end

		end
		local _nvsfZZGQqsuhV = _svDgxurBEjKTjUzPoRbkMHY:CreateToggle({
		Name = 'AntiHit', Function = function()
			repeat task.wait()
			if IsAlive(LocalPlayer) == true and getAliveCount() ~= 0 and Config.AntiHit.Value == true and
			Config.InfiniteFly.Value == false  then
				local targetPlayer = FindNearestPlayer(Config.AntiHit.Range.Value)
				local colorVal = _gQWdlFHzWMNX(Config.AntiHit.Range.Value, false)
				if targetPlayer  then

					_nvsfZZGQqsuhV()

				else
					if colorVal and Config.AntiHit.AntiHitEntities.Value == true  then

						_nvsfZZGQqsuhV()
					end

				end

			end

		until  shared[UninjectedKey] == true or Config.AntiHit.Value == false
	end

	, HoverText = 'Makes You Dodge The Attacks (Works Better With NoFallDamage)' }) _nvsfZZGQqsuhV:CreateToggle({
	Name = 'AntiHitEntities', Function = function()
	end

	, DefaultValue = false }) _nvsfZZGQqsuhV:CreateSlider({
	Name = 'Range', Function = function()
	end

	, MaximumValue = (5+15),
	DefaultValue = (18+2) })
end

end)
task.spawn(function()
	if IsBadExecutor == false  then
		local _zuhHJteibDfpgBiDFCtmokT = ReplicatedStorage.TS.combat['combat-constant']:GetAttribute('ConstantManager_swordSwingBufferMultiplier')
		local _yBsHgNtQeljtNdeMKbxoAuUpNRp = buttonFrame.SwordController.swingSwordAtMouse
		local _qOMwMHcKNJgPAPwNXKBcbyCOIOjJiobiDZxOCBu = colorA.GetItemMeta
		local _SBIVavXCiqqDeuqNdnyarMyZVPoph = hsvHue.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE
		local _caqwIuAaaDxDawA = _svDgxurBEjKTjUzPoRbkMHY:CreateToggle({
		Name = 'Reach', Function = function()
			if Config.Reach.Value == true  then

				ReplicatedStorage.TS.combat['combat-constant']:SetAttribute('ConstantManager_swordSwingBufferMultiplier', (1+9))
			end
			if Config.Reach.Value == false  then

				ReplicatedStorage.TS.combat['combat-constant']:SetAttribute('ConstantManager_swordSwingBufferMultiplier', _zuhHJteibDfpgBiDFCtmokT)
			end
			task.spawn(function()
				repeat task.wait()
				if IsAlive(LocalPlayer) == true  then
					local colorVal, uiGradient = _gQWdlFHzWMNX(Config.Killaura.Range.Value, true)
					if colorVal  then

						hsvHue.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = (uiGradient + 4)
					end

				end

			until  shared[UninjectedKey] == true or Config.Reach.Value == false
			hsvHue.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = _SBIVavXCiqqDeuqNdnyarMyZVPoph
		end)
		task.spawn(function()
			if Config.Reach.Value == true  then

				_yBsHgNtQeljtNdeMKbxoAuUpNRp = buttonFrame.SwordController.swingSwordAtMouse buttonFrame.SwordController.swingSwordAtMouse = function(_NIWztyDaJqEJRYrmfbwrQJ, _aLDIJccmOUOimqDCzexymBahCjWSpXTKeivWWRlHlyRcsaX, _NaSpCSnANSlWyp, ...)
					_NaSpCSnANSlWyp = true
					return _yBsHgNtQeljtNdeMKbxoAuUpNRp(_NIWztyDaJqEJRYrmfbwrQJ, _aLDIJccmOUOimqDCzexymBahCjWSpXTKeivWWRlHlyRcsaX, _NaSpCSnANSlWyp, ...)
				end

			end
			if Config.Reach.Value == false  then

				buttonFrame.SwordController.swingSwordAtMouse = _yBsHgNtQeljtNdeMKbxoAuUpNRp
			end

		end)
		task.spawn(function()
			if Config.Reach.Value == true  then
				colorA.GetItemMeta = function(moduleName, ...)
					local _FGIRUNAWNXWBJkyMGTAQxiCHWOSOWjfwcLUPPnxKHthGDRCzgo = _qOMwMHcKNJgPAPwNXKBcbyCOIOjJiobiDZxOCBu(moduleName, ...)
					local _BBcwJCAewhQMmmzDppEo = table.clone(_FGIRUNAWNXWBJkyMGTAQxiCHWOSOWjfwcLUPPnxKHthGDRCzgo)
					if _BBcwJCAewhQMmmzDppEo.sword and _BBcwJCAewhQMmmzDppEo.sword.attackRange  then
						local _bYHvFMSLHjgeGOwrOacmWTHwmihYSvtbBRqAtEqVyscq = table.clone(_BBcwJCAewhQMmmzDppEo.sword)
						_bYHvFMSLHjgeGOwrOacmWTHwmihYSvtbBRqAtEqVyscq.attackRange = (_bYHvFMSLHjgeGOwrOacmWTHwmihYSvtbBRqAtEqVyscq.attackRange * 2)
						_BBcwJCAewhQMmmzDppEo.sword = _bYHvFMSLHjgeGOwrOacmWTHwmihYSvtbBRqAtEqVyscq
					end
					return _BBcwJCAewhQMmmzDppEo
				end

			end
			if Config.Reach.Value == false  then
				colorA.GetItemMeta = _qOMwMHcKNJgPAPwNXKBcbyCOIOjJiobiDZxOCBu
			end

		end)
	end

	, HoverText = 'Increases Reach And Attack Priority ' }) UnInjectEvent.Event:Connect(function() ReplicatedStorage.TS.combat['combat-constant']:SetAttribute('ConstantManager_swordSwingBufferMultiplier', _zuhHJteibDfpgBiDFCtmokT)
		hsvHue.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = _SBIVavXCiqqDeuqNdnyarMyZVPoph buttonFrame.SwordController.swingSwordAtMouse = _yBsHgNtQeljtNdeMKbxoAuUpNRp
		colorA.BedwarsFunctions.GetItemMeta = _qOMwMHcKNJgPAPwNXKBcbyCOIOjJiobiDZxOCBu
	end)

else
	local _zuhHJteibDfpgBiDFCtmokT = ReplicatedStorage.TS.combat['combat-constant']:GetAttribute('ConstantManager_swordSwingBufferMultiplier')
	local _caqwIuAaaDxDawA = _svDgxurBEjKTjUzPoRbkMHY:CreateToggle({
	Name = 'Reach', Function = function()
		if Config.Reach.Value == true  then

			ReplicatedStorage.TS.combat['combat-constant']:SetAttribute('ConstantManager_swordSwingBufferMultiplier', (6+4))
		end
		if Config.Reach.Value == false  then

			ReplicatedStorage.TS.combat['combat-constant']:SetAttribute('ConstantManager_swordSwingBufferMultiplier', _zuhHJteibDfpgBiDFCtmokT)
		end

	end

	, HoverText = 'Increases Reach And Attack Priority ' }) UnInjectEvent.Event:Connect(function() ReplicatedStorage.TS.combat['combat-constant']:SetAttribute('ConstantManager_swordSwingBufferMultiplier', _zuhHJteibDfpgBiDFCtmokT)
	end)
end

end)
task.spawn(function()
	if uiPadding.AbilityController  then
		local _GnISJyhoCXXJF = serverLabel:CreateToggle({
		Name = 'YaminiPounceExploit', Function = function()
			repeat task.wait(1 / Config.YaminiPounceExploit.SpamSpeed.Value)
			if IsAlive(LocalPlayer) == true and getAliveCount() ~= 0 and _GpUaqkLSnnGNuLHPdboqY == 'cat'  then
				if (tick() - _zNoxzYSpSWSHXGBUZeuTPfnJVqpgydRSLEPdwGgjs) > 5.2  then
					repeat task.wait()

				until  LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 _zNoxzYSpSWSHXGBUZeuTPfnJVqpgydRSLEPdwGgjs = tick() uiPadding.AbilityController:useAbility('CAT_POUNCE')
			end

		end

	until  Config.YaminiPounceExploit.Value == false or shared[UninjectedKey] == true
end

, HoverText = 'Auto Uses The Cat Pounce Ability To Reach High Speeds ' }) _GnISJyhoCXXJF:CreateSlider({
Name = 'SpamSpeed', Function = function()
end

, MaximumValue = (72+28),
DefaultValue = (47+53) })
end

end)
task.spawn(function()
	local _JxENRcyubcOhVkhWWQMVCTzZo = serverLabel:CreateToggle({
	Name = 'JadeHammerExploit', Function = function()
		repeat task.wait(1 / Config.JadeHammerExploit.SpamSpeed.Value)
		if IsAlive(LocalPlayer) == true and getAliveCount() ~= 0  then
			local _SEuWMWdRvoawshiVtaqRicGV = HasItem('jade_hammer', true)
			if _SEuWMWdRvoawshiVtaqRicGV and (tick() - _jLImoAOtoUPPAHNwiZqbkfdyfszjOHYHMdK) > 6 and LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0  then
				local colorVal = FindNearestPlayer((12+8))
				if not colorVal  then
					if Config.JadeHammerExploit.Entities.Value == true  then
						local _dtTGqMXCcNJLqvDOuFLy = _gQWdlFHzWMNX((6+14))
						if _dtTGqMXCcNJLqvDOuFLy  then

							colorVal = _dtTGqMXCcNJLqvDOuFLy
						end

					end

				else
					colorVal = colorVal.Character
				end
				if colorVal and Config.JadeHammerExploit.Smash.Value == true and
				IsGhostMode == false  then

					LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(LocalPlayer.Character.PrimaryPart.Position + Vector3.new(0, (13+137), 0))
					task.wait(0.5)
					task.spawn(function()
						task.wait(0.1)
						repeat task.wait()
						local listLayout2 = Vector3.new(colorVal.PrimaryPart.Position.X - LocalPlayer.Character.PrimaryPart.Position.X, 0, colorVal.PrimaryPart.Position.Z - LocalPlayer.Character.PrimaryPart.Position.Z).Unit * 23.3
						LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity = Vector3.new(listLayout2.X, LocalPlayer.Character.PrimaryPart.AssemblyLinearVelocity.Y, listLayout2.Z )

					until  (tick() - _jLImoAOtoUPPAHNwiZqbkfdyfszjOHYHMdK) > 2.3
				end) _jLImoAOtoUPPAHNwiZqbkfdyfszjOHYHMdK = tick() _UmeGgTixFbsxHHyCIaWwnZvsHnHGZYpIoILKOwetH(_SEuWMWdRvoawshiVtaqRicGV.tool)
				LocalPlayer.Character.HandInvItem.Value = _SEuWMWdRvoawshiVtaqRicGV.tool uiPadding.AbilityController:useAbility('jade_hammer_jump')
			end
			if Config.JadeHammerExploit.Speed.Value == true  then

				_jLImoAOtoUPPAHNwiZqbkfdyfszjOHYHMdK = tick() _UmeGgTixFbsxHHyCIaWwnZvsHnHGZYpIoILKOwetH(_SEuWMWdRvoawshiVtaqRicGV.tool) LocalPlayer.Character.HandInvItem.Value = _SEuWMWdRvoawshiVtaqRicGV.tool uiPadding.AbilityController:useAbility('jade_hammer_jump')
			end

		end

	end

until  Config.JadeHammerExploit.Value == false or shared[UninjectedKey] == true
end

, HoverText = 'Auto Uses The Hammer To Reach High Speeds And A Lot Of Damage ' }) _JxENRcyubcOhVkhWWQMVCTzZo:CreateSlider({
Name = 'SpamSpeed', Function = function()
end

, MaximumValue = (31+69),
DefaultValue = (21+79) }) _JxENRcyubcOhVkhWWQMVCTzZo:CreateToggle({ Name = 'Entities',
Function = function()
end

, DefaultValue = false }) _JxENRcyubcOhVkhWWQMVCTzZo:CreateToggle({
Name = 'Speed', Function = function()
end

, DefaultValue = false }) _JxENRcyubcOhVkhWWQMVCTzZo:CreateToggle({
Name = 'Smash', Function = function()
end

, DefaultValue = true })
task.spawn(function()
	repeat task.wait()
	if IsAlive(LocalPlayer) == true and (tick() - _jLImoAOtoUPPAHNwiZqbkfdyfszjOHYHMdK) <= 1 and Config.JadeHammerExploit.Value == true  then
		local _SEuWMWdRvoawshiVtaqRicGV = HasItem('jade_hammer', true)
		if _SEuWMWdRvoawshiVtaqRicGV  then

			_UmeGgTixFbsxHHyCIaWwnZvsHnHGZYpIoILKOwetH(_SEuWMWdRvoawshiVtaqRicGV.tool) LocalPlayer.Character.HandInvItem.Value = _SEuWMWdRvoawshiVtaqRicGV.tool
		end

	end

until  shared[UninjectedKey] == true
end)
end)
task.spawn(function()
	if IsBadExecutor == false  then
		local _owQCBdBZNFeBycgkPadUPEYpDNZVpRQ = hsvHue.CPSConstants.BLOCK_PLACE_CPS
		local _YgTZKOjlWLp = serverLabel:CreateToggle({
		Name = 'NoPlacementCPS', Function = function()
			if Config.NoPlacementCPS.Value == true  then

				hsvHue.CPSConstants.BLOCK_PLACE_CPS = (IsGhostMode == true and (15+1) or math.huge)
			end
			if Config.NoPlacementCPS.Value == false  then

				hsvHue.CPSConstants.BLOCK_PLACE_CPS = _owQCBdBZNFeBycgkPadUPEYpDNZVpRQ
			end

		end

		, HoverText = 'Removes The Block Placement Cps ' }) UnInjectEvent.Event:Connect(function()
			hsvHue.CPSConstants.BLOCK_PLACE_CPS = _owQCBdBZNFeBycgkPadUPEYpDNZVpRQ
		end)
	end

end)
task.spawn(function()
	local _qmoLnbzQcVMarsMZvBGUPOsFHAyMRtBGyKqewvMjRnbQhk = serverLabel:CreateToggle({
	Name = 'KrystalDisabler', Function = function()
		repeat task.wait()
		if IsAlive(LocalPlayer) == true and getAliveCount() ~= 0 and _GpUaqkLSnnGNuLHPdboqY == 'glacial_skater'  then

			labelFrame.MomentumUpdateRemote:FireServer({momentumValue = ((127+873) * math.random(1, 5))})
			_urWXwGyOebfhFTYDFnoKPkQViaQEkELfQWOvis = true
		end

	until  Config.KrystalDisabler.Value == false or shared[UninjectedKey] == true
	_urWXwGyOebfhFTYDFnoKPkQViaQEkELfQWOvis = false
end

, HoverText = 'Disables The Anticheat While Using The Krystal Kit ' }) _qmoLnbzQcVMarsMZvBGUPOsFHAyMRtBGyKqewvMjRnbQhk:CreateSlider({
Name = 'DisablerSpeed', Function = function()
end

, MaximumValue = (5+25),
DefaultValue = (17+3) })
end)
task.spawn(function()
	if IsGhostMode == false  then
		local _BOwjZoTpIZzoZPURzahVZHsJkskBCmjQqSzWGhJJP = serverLabel:CreateToggle({
		Name = 'NoFallDamage', Function = function()
		end

		, HoverText = 'Prevents You From Taking Fall Damage ' }) Connections['NoFallDamageConnection'] = RunService.PostSimulation:Connect(function()
			if IsAlive(LocalPlayer) == true and Config.HighJump.Value == false and
			Config.NoFallDamage.Value == true  then
				local _vKvEGSYsaKmauBQrqvsSnN = LocalPlayer.Character.PrimaryPart.Velocity.Y
				if LocalPlayer.Character.PrimaryPart.Velocity.Y < -(29+16)  then

					LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, (4+40), LocalPlayer.Character.PrimaryPart.Velocity.Z) LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed) RunService.PreSimulation:Wait()
					LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, _vKvEGSYsaKmauBQrqvsSnN, LocalPlayer.Character.PrimaryPart.Velocity.Z)
				end

			end

		end)
	end

end)
task.spawn(function()
	if IsGhostMode == false  then
		local _hbTCSJLUcrruzCyLqYOialfrGUfCFcudQf = serverLabel:CreateToggle({
		Name = 'AutoConsume', Function = function()
			repeat task.wait(0.5)
			if IsAlive(LocalPlayer) == true and getAliveCount() ~= 0  then
				local _jxhTvLjoWtlsTZgdoiWiCcfxacKcmsIvTdqmdMWdMgYH = HasItem('speed_potion')
				local _cwtKHdOsBaIJXckfAjwgypJlqUWLXHSuBvCPxjeTDOrkibKtEf = HasItem('pie')
				if _jxhTvLjoWtlsTZgdoiWiCcfxacKcmsIvTdqmdMWdMgYH and os.clock() >= (LocalPlayer.Character:GetAttribute('StatusEffect_speed') or 0)  then

					_UmeGgTixFbsxHHyCIaWwnZvsHnHGZYpIoILKOwetH(_jxhTvLjoWtlsTZgdoiWiCcfxacKcmsIvTdqmdMWdMgYH) labelFrame.ConsumeItemRemote:InvokeServer({item = _jxhTvLjoWtlsTZgdoiWiCcfxacKcmsIvTdqmdMWdMgYH.tool})
				end
				if _cwtKHdOsBaIJXckfAjwgypJlqUWLXHSuBvCPxjeTDOrkibKtEf and os.clock() >= (LocalPlayer.Character:GetAttribute('SpeedPieBuffEndTime') or 0)  then

					_UmeGgTixFbsxHHyCIaWwnZvsHnHGZYpIoILKOwetH(_cwtKHdOsBaIJXckfAjwgypJlqUWLXHSuBvCPxjeTDOrkibKtEf) labelFrame.ConsumeItemRemote:InvokeServer({item = _cwtKHdOsBaIJXckfAjwgypJlqUWLXHSuBvCPxjeTDOrkibKtEf.tool})
				end

			end

		until  Config.AutoConsume.Value == false or shared[UninjectedKey] == true
	end

	, HoverText = 'Automatically Consumes Items Such As Speed Potions Or Pies ' })
end

end)
task.spawn(function()
	local _uRXbgCuYMoGwFejrCjlMFVB = serverLabel:CreateToggle({
	Name = 'DamageBoost', Function = function()
	end

	, HoverText = 'Boosts Your Speed While Being Damaged ' }) colorA.EntityDamageEventZap.On(function(sliderVal, _cmiJPZUwUhUesPqbqqfrW, _dCbRoHFpBhWxIuIRivlJmvmveMQFrH)
		if IsAlive(LocalPlayer) == true and sliderVal.Name == LocalPlayer.Name and _dCbRoHFpBhWxIuIRivlJmvmveMQFrH ~= 1 and _cmiJPZUwUhUesPqbqqfrW > 4 and getAliveCount() ~= 0 and
		Config.DamageBoost.Value == true and shared[UninjectedKey] == false and Config.Fly.Value == false  then

			_NWhpQExjmmRYdYxznAOdypauhJnDqZsdjseVBupoxvshuPIm = true
			task.wait(0.6)
			_NWhpQExjmmRYdYxznAOdypauhJnDqZsdjseVBupoxvshuPIm = false
		end

	end)
end)
task.spawn(function()
	if IsGhostMode == false  then
		local _fToMNkRuhiFBulWRaTelcVfCBIE = serverLabel:CreateToggle({
		Name = 'InfiniteJump', Function = function()
			if Config.InfiniteJump.Value == true  then

				Connections['InfiniteJumpConnection'] = UserInputService.JumpRequest:Connect(function()
					if shared[UninjectedKey] == false and IsAlive(LocalPlayer) == true and Config.InfiniteFly.Value == false and
					Config.Fly.Value == false  then

						LocalPlayer.Character.Humanoid:ChangeState('Jumping')
					end

				end)
			end
			if Config.InfiniteJump.Value == false and Connections['InfiniteJumpConnection']  then

				Connections['InfiniteJumpConnection']:Disconnect()
			end

		end

		, HoverText = 'Allows You To Jump Without A Cooldown ' })
	end

end)
task.spawn(function()
	local _bVbNuvgEJhCbQEtURGJinLNMdsSXXfZeEuVhIExRuSaIXHPhk = tick()
	local _DZuAvwnmsfIExEeKVrxDFy = nil
	local _QpKbsrFRWyhOfcNFJTJgeAp = serverLabel:CreateToggle({
	Name = 'ChestStealer', Function = function()
		repeat task.wait()
		if IsAlive(LocalPlayer) == true  then
			local _tSfHLDQUIVrVrKCinkqcRRLroAgKFFNcMe = _OnkzaqgMNWemYQzhfewXceIDyDntDvxDyScYcjufi((IsGhostMode == true or
			Config.ChestStealer.LegitMode.Value == true) and (Config.ChestStealer.Range.Value / 2) or Config.ChestStealer.Range.Value)
			if _tSfHLDQUIVrVrKCinkqcRRLroAgKFFNcMe  then
				if _tSfHLDQUIVrVrKCinkqcRRLroAgKFFNcMe ~= _DZuAvwnmsfIExEeKVrxDFy  then

					_bVbNuvgEJhCbQEtURGJinLNMdsSXXfZeEuVhIExRuSaIXHPhk = tick()
				end

				_DZuAvwnmsfIExEeKVrxDFy = _tSfHLDQUIVrVrKCinkqcRRLroAgKFFNcMe
				local _FwuOkQyUwpkgAaUxTDROkFwWBkEcdLzVulQZbK = _DZuAvwnmsfIExEeKVrxDFy:FindFirstChild('ChestFolderValue').Value:GetChildren()
				if (tick() - _bVbNuvgEJhCbQEtURGJinLNMdsSXXfZeEuVhIExRuSaIXHPhk) > (((IsGhostMode == true or
				Config.ChestStealer.LegitMode.Value == true) and Config.ChestStealer.Speed.Value * 2 or Config.ChestStealer.Speed.Value) / (3+7)) and #_FwuOkQyUwpkgAaUxTDROkFwWBkEcdLzVulQZbK > 0  then

					labelFrame.SetObservedChestRemote:FireServer(_DZuAvwnmsfIExEeKVrxDFy)
					if (IsGhostMode == true or
					Config.ChestStealer.LegitMode.Value == true) and fireSignal  then
						local _FFZHjxvHuKWsCsGAAsUFxFhiWvZkRTWdUedOmzVVr = _FpnXBPTHDCzVMOeOfymzJIWJobQwjfQOqvUAdAXXyrYLN((23+7))
						if not _FFZHjxvHuKWsCsGAAsUFxFhiWvZkRTWdUedOmzVVr  then
							if not LocalPlayer.PlayerGui:FindFirstChild('ChestApp')  then
								if fireProximityPrompt  then

									fireProximityPrompt(_DZuAvwnmsfIExEeKVrxDFy:FindFirstChildWhichIsA('ProximityPrompt'))
								end

							end

							LocalPlayer.PlayerGui:FindFirstChild('ChestApp').Enabled = false
							task.spawn(function()
								for i, v in next, LocalPlayer.PlayerGui:FindFirstChild('ChestApp'):GetDescendants()  do

									pcall(function() v.ImageTransparency = 1
									end) pcall(function() v.Transparency = 1
									end)
								end

							end)
							local _BoTlzzRPOgIXMrKIqiXhpuGLDhvmrGVIRJkomImGJEERMSmo = LocalPlayer.PlayerGui:FindFirstChild('ChestApp')['2']['1']['3']['2']['4']['1']
							for i, v in next, _BoTlzzRPOgIXMrKIqiXhpuGLDhvmrGVIRJkomImGJEERMSmo:GetChildren()  do
								for bedKey, ownerName in next, v:GetDescendants()  do
									if ownerName:IsA('ImageLabel')  then
										task.wait(Config.ChestStealer.Speed.Value / (9+6)) fireSignal(ownerName.Parent.Parent.MouseButton1Click)
									end

								end

							end

						end

					else
						for bedKey, ownerName in next, _FwuOkQyUwpkgAaUxTDROkFwWBkEcdLzVulQZbK  do
							if ownerName:IsA('Accessory')  then
								task.wait(Config.ChestStealer.Speed.Value / (12+8)) labelFrame.ChestGetItemRemote:InvokeServer(_DZuAvwnmsfIExEeKVrxDFy:FindFirstChild('ChestFolderValue').Value, ownerName)
							end

						end

					end

					labelFrame.SetObservedChestRemote:FireServer(nil)
				end

			end

		end

	until  shared[UninjectedKey] == true or Config.ChestStealer.Value == false
end

, HoverText = 'Steals Items From Chests ' }) _QpKbsrFRWyhOfcNFJTJgeAp:CreateToggle({
Name = 'LegitMode', Function = function()
end

, DefaultValue = false }) _QpKbsrFRWyhOfcNFJTJgeAp:CreateSlider({
Name = 'Speed', Function = function()
end

, MaximumValue = (2+8),
DefaultValue = 4 }) _QpKbsrFRWyhOfcNFJTJgeAp:CreateSlider({ Name = 'Range',
Function = function()
end

, MaximumValue = (9+11),
DefaultValue = (15+5) })
end)
task.spawn(function()
	if IsBadExecutor == false and
	IsGhostMode == false and uiPadding.AbilityController  then
		local _WMXRXjESLSpPVHjvWSfIjWvYizUeIzPFtFtfgyYY = _OgJgAprYonBfNKoOnbsedPYncmISwE.ControlModule.moveFunction
		local sizeConstraint
		local function _BdbLLScnatRklhoyQJKnKoeKJTtLwDe() _iOkHgbRXaxtJupFGU = true
			sizeConstraint = _eksMnXCgikcxygDIqPLBxZmUTLK(false, false) _OgJgAprYonBfNKoOnbsedPYncmISwE.ControlModule.moveFunction = function(_OkVNyJHscyKdAQiVSsQqaApnbPe, _VltcqweOCGWtCjprvbHTGkDDOdDeHLZeDus, ...)
				local dropdownFrame = RaycastParams.new()
				dropdownFrame.FilterDescendantsInstances = {blocks}
				dropdownFrame.FilterType = Enum.RaycastFilterType.Include
				local gradientObj = Vector3.new(Camera.CFrame.LookVector.X, 0, Camera.CFrame.LookVector.Z).Unit
				if sizeConstraint.PrimaryPart  then
					local hoverLabel = Workspace:Raycast((sizeConstraint.PrimaryPart.Position + gradientObj), Vector3.new(0, -(164+836), 0), dropdownFrame)
					local _NYKUaIbgHyTNhvkbGByoCMdwnlCilHnRlA = Workspace:Raycast(((sizeConstraint.PrimaryPart.Position - Vector3.new(0, (10+5), 0)) + (gradientObj * 5)), Vector3.new(0, -(706+294), 0), dropdownFrame)
					if hoverLabel or _NYKUaIbgHyTNhvkbGByoCMdwnlCilHnRlA  then

						sizeConstraint.PrimaryPart.CFrame = CFrame.new(sizeConstraint.PrimaryPart.Position + (gradientObj / ((11+5) / GetSpeed())))
						_VltcqweOCGWtCjprvbHTGkDDOdDeHLZeDus = gradientObj
					end
					if not sizeConstraint  then
						if IsAlive(LocalPlayer)  then

							_OgJgAprYonBfNKoOnbsedPYncmISwE.ControlModule.moveFunction = _WMXRXjESLSpPVHjvWSfIjWvYizUeIzPFtFtfgyYY
							Camera.CameraSubject = LocalPlayer.Character.Humanoid
						end

					end

				end
				return _WMXRXjESLSpPVHjvWSfIjWvYizUeIzPFtFtfgyYY(_OkVNyJHscyKdAQiVSsQqaApnbPe, _VltcqweOCGWtCjprvbHTGkDDOdDeHLZeDus, ...)
			end

		end
		local _LSldVgIMAdKQXIuPlxpXxkaUzPniaQxAyLGyNDFhABsebUu = serverLabel:CreateToggle({
		Name = 'AntiLagback', Function = function()
			if Config.AntiLagback.Value == true  then

				Connections['AntiLagbackConnection'] = LocalPlayer:GetAttributeChangedSignal('LastTeleported'):Connect(function()
					if _GpUaqkLSnnGNuLHPdboqY == 'void_walker' and IsAlive(LocalPlayer) == true and
					Config.AntiLagback.KitAntiLagback.Value == true  then
						if isnetworkowner  then
							repeat task.wait()
							local gradientObj = LocalPlayer.Character.PrimaryPart.CFrame.LookVector labelFrame.VoidWalker_ClientUsedWarpAbility:FireServer( {
							clientStartPosition = LocalPlayer.Character.PrimaryPart.Position + gradientObj * (6+4), direction = gradientObj,
							clientDestinationPosition = LocalPlayer.Character.PrimaryPart.Position + gradientObj * 5 } )
							task.wait(0.1) uiPadding.AbilityController:useAbility('void_walker_rewind')

						until  isnetworkowner(LocalPlayer.Character.PrimaryPart) == true

					else
						local gradientObj = LocalPlayer.Character.PrimaryPart.CFrame.LookVector labelFrame.VoidWalker_ClientUsedWarpAbility:FireServer( {
						clientStartPosition = LocalPlayer.Character.PrimaryPart.Position + gradientObj * (6+4), direction = gradientObj,
						clientDestinationPosition = LocalPlayer.Character.PrimaryPart.Position + gradientObj * 5 } )
						task.wait(1) uiPadding.AbilityController:useAbility('void_walker_rewind')
					end

				end
				if IsAlive(LocalPlayer) == true and getAliveCount() ~= 0 and not LocalPlayer.Character:FindFirstChildWhichIsA('ForceField') and (Config.AntiLagback.KitAntiLagback.Value == false and true or _GpUaqkLSnnGNuLHPdboqY ~= 'void_walker')  then

					CreateNotification(2, 'Lagback Detected, Attempting Bypass') _BdbLLScnatRklhoyQJKnKoeKJTtLwDe()
					task.wait(4.5)
					if IsAlive(LocalPlayer) == false  then

						_OgJgAprYonBfNKoOnbsedPYncmISwE.ControlModule.moveFunction = _WMXRXjESLSpPVHjvWSfIjWvYizUeIzPFtFtfgyYY sizeConstraint:Destroy()
						_iOkHgbRXaxtJupFGU = false
					end
					if IsAlive(LocalPlayer) == true  then

						_OgJgAprYonBfNKoOnbsedPYncmISwE.ControlModule.moveFunction = _WMXRXjESLSpPVHjvWSfIjWvYizUeIzPFtFtfgyYY
						Camera.CameraSubject = LocalPlayer.Character.Humanoid sizeConstraint:Destroy() _iOkHgbRXaxtJupFGU = false CreateNotification(2, 'Successfully Bypassed Lagback')
					end

				end

			end)
		end
		if Config.AntiLagback.Value == false  then
			if Connections['AntiLagbackConnection']  then

				Connections['AntiLagbackConnection']:Disconnect()
			end

			_OgJgAprYonBfNKoOnbsedPYncmISwE.ControlModule.moveFunction = _WMXRXjESLSpPVHjvWSfIjWvYizUeIzPFtFtfgyYY
		end

	end

	, HoverText = 'Bypasses Lagbacks (Anticheat) ' })
	local _MeTizmjGcYBtZsMWnIayoDTFcmVQNJMSofA = _LSldVgIMAdKQXIuPlxpXxkaUzPniaQxAyLGyNDFhABsebUu:CreateToggle({
	Name = 'KitAntiLagback', Function = function()
	end

	, DefaultValue = true })
	local _MeTizmjGcYBtZsMWnIayoDTFcmVQNJMSofA = _LSldVgIMAdKQXIuPlxpXxkaUzPniaQxAyLGyNDFhABsebUu:CreateDropdown({
	Name = 'MovementMethod', HoverText = 'Decide If You Control The Movement Or The Script' }) _MeTizmjGcYBtZsMWnIayoDTFcmVQNJMSofA:CreateToggle({
	Name = 'Automatic', Function = function()
	end

	, DefaultValue = false }) _MeTizmjGcYBtZsMWnIayoDTFcmVQNJMSofA:CreateToggle({
	Name = 'Manual', Function = function()
	end

	, DefaultValue = true })
end

end)
task.spawn(function()
	local _OKOuetRjpNJ = 'Nil'
	local posA = 0
	local _nAYmiRCpcmzXvKhouKEbwwDwFRkBYMUnsCYlbBWktwiYCoUf = Instance.new('Part')
	_nAYmiRCpcmzXvKhouKEbwwDwFRkBYMUnsCYlbBWktwiYCoUf.Parent = Workspace
	_nAYmiRCpcmzXvKhouKEbwwDwFRkBYMUnsCYlbBWktwiYCoUf.Name = 'TargetStrafePart'
	_nAYmiRCpcmzXvKhouKEbwwDwFRkBYMUnsCYlbBWktwiYCoUf.Transparency = 0.5
	_nAYmiRCpcmzXvKhouKEbwwDwFRkBYMUnsCYlbBWktwiYCoUf.CanCollide = false
	_nAYmiRCpcmzXvKhouKEbwwDwFRkBYMUnsCYlbBWktwiYCoUf.Anchored = true
	local function _bssuosqcphbyluOlmJUovApGvoYvrOtHswpIaSHyBrJMdGDU(sliderVal, Entity)
		if Entity == false  then
			local _qtvfNvVfwQuYdLAlSmwsrNdSghtlZaaqJMjpPUctNieFSqf = Vector3.new(DecimalRound(sliderVal.Character.PrimaryPart.Position.X, 3), DecimalRound(sliderVal.Character.PrimaryPart.Position.Y, 3), DecimalRound(sliderVal.Character.PrimaryPart.Position.Z, 3))
			local _nPYkwrcKphcmKgFPCEHeCLtzDmAPZEpztpsglqmfDvtgZFwZOC = (_qtvfNvVfwQuYdLAlSmwsrNdSghtlZaaqJMjpPUctNieFSqf - (sliderVal.Character.PrimaryPart.CFrame.LookVector * 3))
			local _CfUhWTCXLRHXhOAQdWXFlpXgIBFjSsDNzhPNfrYIGP = (_qtvfNvVfwQuYdLAlSmwsrNdSghtlZaaqJMjpPUctNieFSqf + (sliderVal.Character.PrimaryPart.CFrame.LookVector * 3))
			task.wait(0.05)
			if IsAlive(sliderVal) == true  then
				local _ihpxlPrPHsoqngUMSvOlGeihLrBXB = Vector3.new(DecimalRound(sliderVal.Character.PrimaryPart.Position.X, 3), DecimalRound(sliderVal.Character.PrimaryPart.Position.Y, 3), DecimalRound(sliderVal.Character.PrimaryPart.Position.Z, 3))
				local _OUovItgjMdxRDyxyGy = (_ihpxlPrPHsoqngUMSvOlGeihLrBXB - _nPYkwrcKphcmKgFPCEHeCLtzDmAPZEpztpsglqmfDvtgZFwZOC).Magnitude
				local _idBCWWPQcurgSFqabUzBEeRHMViaE = (_ihpxlPrPHsoqngUMSvOlGeihLrBXB - _CfUhWTCXLRHXhOAQdWXFlpXgIBFjSsDNzhPNfrYIGP).Magnitude
				local _sQtvrEPTBVzvSKBSAQBiuGNrRgIBbGQiKzDvdVyjOKZiWsRP = ((_OUovItgjMdxRDyxyGy == _idBCWWPQcurgSFqabUzBEeRHMViaE and 'Stayed') or (_OUovItgjMdxRDyxyGy > _idBCWWPQcurgSFqabUzBEeRHMViaE and 'Forward') or (_OUovItgjMdxRDyxyGy < _idBCWWPQcurgSFqabUzBEeRHMViaE and 'Backward'))
				return _sQtvrEPTBVzvSKBSAQBiuGNrRgIBbGQiKzDvdVyjOKZiWsRP
			end
			if IsAlive(sliderVal) == false  then
				return 'Nil'
			end

		end
		if Entity == true  then
			local _qtvfNvVfwQuYdLAlSmwsrNdSghtlZaaqJMjpPUctNieFSqf = Vector3.new(DecimalRound(Entity.PrimaryPart.Position.X, 3), DecimalRound(Entity.PrimaryPart.Position.Y, 3), DecimalRound(Entity.PrimaryPart.Position.Z, 3))
			local _nPYkwrcKphcmKgFPCEHeCLtzDmAPZEpztpsglqmfDvtgZFwZOC = (_qtvfNvVfwQuYdLAlSmwsrNdSghtlZaaqJMjpPUctNieFSqf - (sliderVal.Character.PrimaryPart.CFrame.LookVector * 3))
			local _CfUhWTCXLRHXhOAQdWXFlpXgIBFjSsDNzhPNfrYIGP = (_qtvfNvVfwQuYdLAlSmwsrNdSghtlZaaqJMjpPUctNieFSqf + (sliderVal.Character.PrimaryPart.CFrame.LookVector * 3))
			task.wait(0.05)
			if Entity  then
				local _ihpxlPrPHsoqngUMSvOlGeihLrBXB = Vector3.new(DecimalRound(Entity.PrimaryPart.Position.X, 3), DecimalRound(Entity.PrimaryPart.Position.Y, 3), DecimalRound(Entity.PrimaryPart.Position.Z, 3))
				local _OUovItgjMdxRDyxyGy = (_ihpxlPrPHsoqngUMSvOlGeihLrBXB - _nPYkwrcKphcmKgFPCEHeCLtzDmAPZEpztpsglqmfDvtgZFwZOC).Magnitude
				local _idBCWWPQcurgSFqabUzBEeRHMViaE = (_ihpxlPrPHsoqngUMSvOlGeihLrBXB - _CfUhWTCXLRHXhOAQdWXFlpXgIBFjSsDNzhPNfrYIGP).Magnitude
				local _sQtvrEPTBVzvSKBSAQBiuGNrRgIBbGQiKzDvdVyjOKZiWsRP = ((_OUovItgjMdxRDyxyGy == _idBCWWPQcurgSFqabUzBEeRHMViaE and 'Stayed') or (_OUovItgjMdxRDyxyGy > _idBCWWPQcurgSFqabUzBEeRHMViaE and 'Forward') or (_OUovItgjMdxRDyxyGy < _idBCWWPQcurgSFqabUzBEeRHMViaE and 'Backward'))
				return _sQtvrEPTBVzvSKBSAQBiuGNrRgIBbGQiKzDvdVyjOKZiWsRP
			end
			if not Entity  then
				return 'Nil'
			end

		end

	end
	local _DQoJbvSHREamisLHivZdayJrCOOlpFqHk = serverLabel:CreateToggle({
	Name = 'TargetStrafe', Function = function()
		repeat task.wait()
		if IsAlive(LocalPlayer) == true and getAliveCount() ~= 0  then
			local targetPlayer, NearestPlayerDistance = FindNearestPlayer((Config.TargetStrafe.Range.Value + 4))
			local colorVal, NearestEntityDistance = _gQWdlFHzWMNX((Config.TargetStrafe.Range.Value + 4), false)
			if Config.TargetStrafe.StrafeMode['1v1'].Value == true  then
				if targetPlayer or colorVal  then
					task.spawn(function() _OKOuetRjpNJ = _bssuosqcphbyluOlmJUovApGvoYvrOtHswpIaSHyBrJMdGDU(targetPlayer, false)
					end)
					local serverConstraint
					task.spawn(function() serverConstraint = (Config.TargetStrafe.TargetEntities.Value == true and (colorVal and colorVal.PrimaryPart or nil) or (targetPlayer and targetPlayer.Character.PrimaryPart or nil))
					end)
					if serverConstraint and _OKOuetRjpNJ == 'Backward'  then
						local _zTTqjcKtnJiOWRgAAbFwKjZTRblo = LocalPlayer.Character.PrimaryPart
						posA = (posA + 0.075)
						local _UJGetRlXEuHJcBRzwdYNHDsH = (math.cos(posA) * Config.TargetStrafe.Range.Value)
						local _PrjCrkXsBlwNAsUMjgtMaDuXwNdaDAWrWdXCYMGZsNH = (math.sin(posA) * Config.TargetStrafe.Range.Value)
						local satVal = Vector3.new((serverConstraint.Position.X + _UJGetRlXEuHJcBRzwdYNHDsH), serverConstraint.Position.Y, (serverConstraint.Position.Z + _PrjCrkXsBlwNAsUMjgtMaDuXwNdaDAWrWdXCYMGZsNH))
						local dropdownFrame = RaycastParams.new()
						dropdownFrame.FilterDescendantsInstances = {blocks}
						dropdownFrame.FilterType = Enum.RaycastFilterType.Include
						local hoverLabel = Workspace:Raycast(satVal, Vector3.new(0, -(367+633), 0), dropdownFrame)
						if hoverLabel and hoverLabel.Position  then
							if IsGhostMode == true or
							Config.TargetStrafe.LegitMode.Value == true  then

								LocalPlayer.Character.Humanoid:MoveTo(satVal)

							else
								local _BsbjNJHyMiJhNPk = ((satVal - _zTTqjcKtnJiOWRgAAbFwKjZTRblo.Position).Unit * (2+21))
								_zTTqjcKtnJiOWRgAAbFwKjZTRblo.Velocity = _BsbjNJHyMiJhNPk
							end

						end

					end
					if serverConstraint and _OKOuetRjpNJ == 'Forward' or
					_OKOuetRjpNJ == 'Stayed'  then
						local _zTTqjcKtnJiOWRgAAbFwKjZTRblo = LocalPlayer.Character.PrimaryPart
						posA = (posA + 0.075)
						local _UJGetRlXEuHJcBRzwdYNHDsH = (math.cos(posA) * (Config.TargetStrafe.Range.Value + 2))
						local _PrjCrkXsBlwNAsUMjgtMaDuXwNdaDAWrWdXCYMGZsNH = (math.sin(posA) * (Config.TargetStrafe.Range.Value + 2))
						local satVal = Vector3.new((serverConstraint.Position.X + _UJGetRlXEuHJcBRzwdYNHDsH), serverConstraint.Position.Y, (serverConstraint.Position.Z + _PrjCrkXsBlwNAsUMjgtMaDuXwNdaDAWrWdXCYMGZsNH))
						local dropdownFrame = RaycastParams.new()
						dropdownFrame.FilterDescendantsInstances = {blocks}
						dropdownFrame.FilterType = Enum.RaycastFilterType.Include
						local hoverLabel = Workspace:Raycast(satVal, Vector3.new(0, -(439+561), 0), dropdownFrame)
						if hoverLabel and hoverLabel.Position  then
							if IsGhostMode == true or
							Config.TargetStrafe.LegitMode.Value == true  then

								LocalPlayer.Character.Humanoid:MoveTo(satVal)

							else
								local _BsbjNJHyMiJhNPk = ((satVal - _zTTqjcKtnJiOWRgAAbFwKjZTRblo.Position).Unit * (19+4))
								_zTTqjcKtnJiOWRgAAbFwKjZTRblo.Velocity = _BsbjNJHyMiJhNPk
							end

						end

					end

				end

			end
			if Config.TargetStrafe.StrafeMode.Normal.Value == true  then
				local serverConstraint
				task.spawn(function() serverConstraint = (Config.TargetStrafe.TargetEntities.Value == true and (colorVal and colorVal.PrimaryPart or nil) or (targetPlayer and targetPlayer.Character.PrimaryPart or nil))
				end)
				if serverConstraint  then
					local _zTTqjcKtnJiOWRgAAbFwKjZTRblo = LocalPlayer.Character.PrimaryPart
					posA = (posA + 0.075)
					local _UJGetRlXEuHJcBRzwdYNHDsH = (math.cos(posA) * Config.TargetStrafe.Range.Value)
					local _PrjCrkXsBlwNAsUMjgtMaDuXwNdaDAWrWdXCYMGZsNH = (math.sin(posA) * Config.TargetStrafe.Range.Value)
					local satVal = Vector3.new((serverConstraint.Position.X + _UJGetRlXEuHJcBRzwdYNHDsH), serverConstraint.Position.Y, (serverConstraint.Position.Z + _PrjCrkXsBlwNAsUMjgtMaDuXwNdaDAWrWdXCYMGZsNH))
					local dropdownFrame = RaycastParams.new()
					dropdownFrame.FilterDescendantsInstances = {blocks}
					dropdownFrame.FilterType = Enum.RaycastFilterType.Include
					local hoverLabel = Workspace:Raycast(satVal, Vector3.new(0, -(964+36), 0), dropdownFrame)
					if hoverLabel and hoverLabel.Position  then
						if IsGhostMode == true or
						Config.TargetStrafe.LegitMode.Value == true  then

							LocalPlayer.Character.Humanoid:MoveTo(satVal)

						else
							local _BsbjNJHyMiJhNPk = ((satVal - _zTTqjcKtnJiOWRgAAbFwKjZTRblo.Position).Unit * (18+5))
							_zTTqjcKtnJiOWRgAAbFwKjZTRblo.Velocity = _BsbjNJHyMiJhNPk
						end

					end

				end

			end

		end

	until  shared[UninjectedKey] == true or Config.TargetStrafe.Value == false
end

, HoverText = 'Automatically Circles Around Desired Entities ' })
local _vlUsLrNNeDTNgKuQeR = _DQoJbvSHREamisLHivZdayJrCOOlpFqHk:CreateDropdown({
Name = 'StrafeMode', HoverText = 'Adapts The TargetStrafe To The Selected Mode' }) _vlUsLrNNeDTNgKuQeR:CreateToggle({
Name = 'Normal', Function = function()
end

, DefaultValue = true }) _vlUsLrNNeDTNgKuQeR:CreateToggle({
Name = '1v1', Function = function()
end

, DefaultValue = false }) _DQoJbvSHREamisLHivZdayJrCOOlpFqHk:CreateToggle({
Name = 'JumpAutomatically', Function = function()
end

, DefaultValue = true }) _DQoJbvSHREamisLHivZdayJrCOOlpFqHk:CreateToggle({
Name = 'TargetEntities', Function = function()
end

, DefaultValue = false }) _DQoJbvSHREamisLHivZdayJrCOOlpFqHk:CreateToggle({
Name = 'LegitMode', Function = function()
end

, DefaultValue = false }) _DQoJbvSHREamisLHivZdayJrCOOlpFqHk:CreateSlider({
Name = 'Range', Function = function()
end

, MaximumValue = (6+12),
DefaultValue = (10+8) })
end)
task.spawn(function()
	if IsGhostMode == false  then
		local _puiqlzbtZHiYuyrbICFzoevNnudrznnQIZTA = serverLabel:CreateToggle({
		Name = 'InstantWin', Function = function()
			repeat task.wait()
			if Config.InstantWin.Value == true and getAliveCount() == 0  then

				CreateNotification(5, 'Waiting For Match To Start For InstantWin')
				task.wait(5)
			end

		until  getAliveCount() ~= 0 or Config.InstantWin.Value == false or shared[UninjectedKey] == true
		if Config.InstantWin.Value == true  then

			CreateNotification(3, 'Starting InstantWin') Config.InstantWin.Value = false
			local _ILkXmBihDcBMWXFGVnQMlqhgnNeLgoqofOYxbCsOAhWbWzthz = TeleportService:GetLocalPlayerTeleportData() TeleportService:Teleport(game.PlaceId, LocalPlayer, _ILkXmBihDcBMWXFGVnQMlqhgnNeLgoqofOYxbCsOAhWbWzthz)
		end

	end

	, HoverText = 'Wins the game instantly ' })
end

end)
task.spawn(function()
	if IsGhostMode == false  then
		local _hsBIwVTRrynGPyGmQHC, _OkVNyJHscyKdAQiVSsQqaApnbPe _hsBIwVTRrynGPyGmQHC, _OkVNyJHscyKdAQiVSsQqaApnbPe = serverLabel:CreateToggle({
		Name = 'HighJump', Function = function()
			if Config.HighJump.Value == true and shared[UninjectedKey] == false and
			_iOkHgbRXaxtJupFGU == false  then
				for i = 1, 3  do
					if IsAlive(LocalPlayer) == true  then

						LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, 0, LocalPlayer.Character.PrimaryPart.Velocity.Z)
						LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(LocalPlayer.Character.PrimaryPart.Position + Vector3.new(0, (Config.HighJump.Height.Value / 3), 0))
						task.wait(0.2)
					end

				end

				Config.HighJump.Value = false
				_OkVNyJHscyKdAQiVSsQqaApnbPe.TextColor3 = Color3.new(1, 1, 1)
			end

		end

		, HoverText = 'Makes You Jump High ' }) _hsBIwVTRrynGPyGmQHC:CreateSlider({
		Name = 'Height', Function = function()
		end

		, MaximumValue = (190+10),
		DefaultValue = (13+112) })
	end

end)
task.spawn(function()
	if IsGhostMode == false  then
		local _HkYoTpdZfJcxmSIYzGTvrAlsHplMYJJLTIoOSA
		local _LjstczocufKyb
		local sizeConstraint
		task.spawn(function() UserInputService.InputBegan:Connect(function(moduleList)
			if UserInputService:GetFocusedTextBox()  then
				return
			end
			if moduleList.KeyCode == Enum.KeyCode.LeftShift  then

				_HkYoTpdZfJcxmSIYzGTvrAlsHplMYJJLTIoOSA = true
			end
			if moduleList.KeyCode == Enum.KeyCode.Space  then

				_LjstczocufKyb = true
			end

		end)
	end)
	task.spawn(function() UserInputService.InputEnded:Connect(function(moduleList)
		if UserInputService:GetFocusedTextBox()  then
			return
		end
		if moduleList.KeyCode == Enum.KeyCode.LeftShift  then

			_HkYoTpdZfJcxmSIYzGTvrAlsHplMYJJLTIoOSA = false
		end
		if moduleList.KeyCode == Enum.KeyCode.Space  then

			_LjstczocufKyb = false
		end

	end)
end)
local _pEnfBxASkPpXpxdUSBvaTZCWUfTRyIHWdUOa = serverLabel:CreateToggle({
Name = 'InfiniteFly', Function = function()
	if Config.InfiniteFly.Value == true and IsAlive(LocalPlayer) == true and
	_iOkHgbRXaxtJupFGU == false  then
		if not sizeConstraint  then

			sizeConstraint = _eksMnXCgikcxygDIqPLBxZmUTLK(false, false)
		end

		sizeConstraint.PrimaryPart.Anchored = true sizeConstraint.PrimaryPart.CFrame = LocalPlayer.Character.PrimaryPart.CFrame LocalPlayer.Character.PrimaryPart.CFrame += Vector3.new(0, (604764+395236), 0)
	end
	repeat task.wait()
	if sizeConstraint  then

		sizeConstraint.PrimaryPart.CFrame = CFrame.new(Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, (sizeConstraint.PrimaryPart.Position.Y + (_LjstczocufKyb and (Config.InfiniteFly.FlyUpSpeed.Value / (8+2)) or 0) + (_HkYoTpdZfJcxmSIYzGTvrAlsHplMYJJLTIoOSA and -(Config.InfiniteFly.FlyDownSpeed.Value / (9+1)) or 0)), LocalPlayer.Character.PrimaryPart.Position.Z))
	end

until  shared[UninjectedKey] == true or Config.InfiniteFly.Value == false
if IsAlive(LocalPlayer) and sizeConstraint  then
	local _xBypLsWEMJPKuZdKRbLcmGNUOGnNpmhgNvUtymUiVfY = sizeConstraint.PrimaryPart.CFrame sizeConstraint:Destroy()
	sizeConstraint = nil Camera.CameraSubject = LocalPlayer.Character.Humanoid
	LocalPlayer.Character.PrimaryPart.CFrame = _xBypLsWEMJPKuZdKRbLcmGNUOGnNpmhgNvUtymUiVfY LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(0, 0, 0) LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
end

end

, HoverText = 'Lets You Fly For An Infinite Amount Of Time ' }) _pEnfBxASkPpXpxdUSBvaTZCWUfTRyIHWdUOa:CreateSlider({
Function = function()
end

, Name = 'FlyDownSpeed',
MaximumValue = (2+23), DefaultValue = 5 }) _pEnfBxASkPpXpxdUSBvaTZCWUfTRyIHWdUOa:CreateSlider({
Name = 'FlyUpSpeed', Function = function()
end

, MaximumValue = (1+24),
DefaultValue = 5 })
end

end)
task.spawn(function()
	if IsGhostMode == false  then
		local function _bjIJSBFHIMWimHnpAqsHkmZAscPRtXSXhenZxXctUKLUyEuV(_avQSwKfliRBexNBfLP)
			if _avQSwKfliRBexNBfLP == true  then
				for i, v in next, LocalPlayer.Character:GetDescendants()  do
					if v:IsA('BasePart') and v ~= LocalPlayer.Character.PrimaryPart  then

						v.CanCollide = true
						v.CanTouch = true
					end

				end

				LocalPlayer.Character.PrimaryPart.Transparency = 1
				LocalPlayer.Character.PrimaryPart.Size = Vector3.new(1.9, 2, 1) LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, 0)

			else
				for i, v in next, LocalPlayer.Character:GetDescendants()  do
					if v:IsA('BasePart') and v ~= LocalPlayer.Character.PrimaryPart  then

						v.CanCollide = false
						v.CanTouch = false
					end

				end

				LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 3 / -2, 0)
				LocalPlayer.Character.PrimaryPart.Transparency = 0.6 LocalPlayer.Character.PrimaryPart.Size = Vector3.new(2, 3, 1.1)
			end

		end
		local function _gpvOTwIUuIIYsPsMKxwrua()
			repeat task.wait()

		until  getAliveCount() ~= 0
		if IsAlive(LocalPlayer) == true  then
			local _GWvIBRZvsFjewkLhgHEwRDHcgyZseyeLOrtwjNKuDQ = Instance.new('Animation')
			local _JghNlBZUrDqfTfodujpTHCjZgTBR = 'rbxassetid://11330409797'
			_GWvIBRZvsFjewkLhgHEwRDHcgyZseyeLOrtwjNKuDQ.AnimationId = _JghNlBZUrDqfTfodujpTHCjZgTBR
			local _LDvFfdaQSlXxaCLOiXnWxXnImTAuHRThwMHzMPaTesMY = LocalPlayer.Character.Humanoid.Animator:LoadAnimation(_GWvIBRZvsFjewkLhgHEwRDHcgyZseyeLOrtwjNKuDQ)
			if _LDvFfdaQSlXxaCLOiXnWxXnImTAuHRThwMHzMPaTesMY  then

				LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 3 / -2, 0)
				LocalPlayer.Character.PrimaryPart.Size = Vector3.new(2, 3, 1.1)
				_LDvFfdaQSlXxaCLOiXnWxXnImTAuHRThwMHzMPaTesMY.Priority = Enum.AnimationPriority.Action4
				_LDvFfdaQSlXxaCLOiXnWxXnImTAuHRThwMHzMPaTesMY.Looped = false
				task.spawn(function()
					repeat task.wait() _bjIJSBFHIMWimHnpAqsHkmZAscPRtXSXhenZxXctUKLUyEuV(false) _LDvFfdaQSlXxaCLOiXnWxXnImTAuHRThwMHzMPaTesMY:Play(1 / (79900+920099), (971393+28606), 1 / (870646+129353))

				until  shared[UninjectedKey] == true or Config.Invisible.Value == false _bjIJSBFHIMWimHnpAqsHkmZAscPRtXSXhenZxXctUKLUyEuV(true) _GWvIBRZvsFjewkLhgHEwRDHcgyZseyeLOrtwjNKuDQ:Destroy()
			end)
		end

	end

end
local _gpvOTwIUuIIYsPsMKxwrua = serverLabel:CreateToggle({
Name = 'Invisible', Function = function()
	if Config.Invisible.Value == true  then

		_gpvOTwIUuIIYsPsMKxwrua()
	end

end

, HoverText = 'Makes You Invisible ' }) Connections['InvisibleConnection'] = LocalPlayer.CharacterAdded:Connect(function()
	task.wait(1)
	if Config.Invisible.Value == true  then

		_gpvOTwIUuIIYsPsMKxwrua()
	end

end)
end

end)
task.spawn(function()
	local _CIvADqBWtdZjLQJNwFZmxLcZdUfowuGbfbSXZVbXFWHlnbqk = {}
	local _yPcanYsUORRI = false
	local function _FcqHqfAheciRP(_khsetVXPEWKWLRVRsXxDpGyVqpqdcxzcjCAxbNVbUeOihO)
		local key = string.format('%.1f_%.1f_%.1f', _khsetVXPEWKWLRVRsXxDpGyVqpqdcxzcjCAxbNVbUeOihO.X, _khsetVXPEWKWLRVRsXxDpGyVqpqdcxzcjCAxbNVbUeOihO.Y, _khsetVXPEWKWLRVRsXxDpGyVqpqdcxzcjCAxbNVbUeOihO.Z)
		local _ZRDyqHyMncuKhlXWAPldHqSbOfIM = _CIvADqBWtdZjLQJNwFZmxLcZdUfowuGbfbSXZVbXFWHlnbqk[key]
		if not _ZRDyqHyMncuKhlXWAPldHqSbOfIM or not _ZRDyqHyMncuKhlXWAPldHqSbOfIM.Part.Parent  then
			local colorParts = string.split(Config.Scaffold.VisualizerColor.Value, ',')
			local r = colorParts[1]
			local g = colorParts[2]
			local b = colorParts[3]
			local _mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ = Instance.new('Part')
			_mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ.Parent = Workspace
			_mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ.Name = 'PlacementVisualizer'
			_mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ.Transparency = 0.3
			_mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ.CanCollide = false
			_mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ.Material = Enum.Material.ForceField
			_mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ.Anchored = true
			_mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ.Position = _khsetVXPEWKWLRVRsXxDpGyVqpqdcxzcjCAxbNVbUeOihO
			_mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ.Color = Color3.new(r, g, b)
			_mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ.Size = Vector3.new(1.5, 1.5, 1.5)
			local _yjuhnUQFhTnZMKwciqXdWtTAaRLPRRkDtMUK = Instance.new('SelectionBox')
			_yjuhnUQFhTnZMKwciqXdWtTAaRLPRRkDtMUK.Parent = _mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ
			_yjuhnUQFhTnZMKwciqXdWtTAaRLPRRkDtMUK.Name = 'Outline'
			_yjuhnUQFhTnZMKwciqXdWtTAaRLPRRkDtMUK.LineThickness = 0.06
			_yjuhnUQFhTnZMKwciqXdWtTAaRLPRRkDtMUK.Transparency = 0.1
			_yjuhnUQFhTnZMKwciqXdWtTAaRLPRRkDtMUK.Adornee = _mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ
			_yjuhnUQFhTnZMKwciqXdWtTAaRLPRRkDtMUK.Color3 = Color3.new(r, g, b)
			local _ZgRjeScStdSdTmmrGcrkPbIklceNkmeMFFQYimBqnkSOxKDu = Instance.new('PointLight')
			_ZgRjeScStdSdTmmrGcrkPbIklceNkmeMFFQYimBqnkSOxKDu.Parent = _mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ
			_ZgRjeScStdSdTmmrGcrkPbIklceNkmeMFFQYimBqnkSOxKDu.Name = 'Glow'
			_ZgRjeScStdSdTmmrGcrkPbIklceNkmeMFFQYimBqnkSOxKDu.Brightness = 1.5
			_ZgRjeScStdSdTmmrGcrkPbIklceNkmeMFFQYimBqnkSOxKDu.Color = Color3.new(r, g, b)
			_ZgRjeScStdSdTmmrGcrkPbIklceNkmeMFFQYimBqnkSOxKDu.Range = 7
			local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0)
			local _gGChkMRtbvURBkstSfsDkHyeVuGoucvQvlpWtZWgEOkaP = TweenService:Create(_mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ, tweenInfo, {Size = Vector3.new(3, 3, 3),}) _gGChkMRtbvURBkstSfsDkHyeVuGoucvQvlpWtZWgEOkaP:Play()
			tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, true, 0)
			local _GEiVVFSpxUOWtYxCTyUBDXM = TweenService:Create(_mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ, tweenInfo, {Transparency = 0.65})
			task.spawn(function()
				if _mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ.Parent  then

					_GEiVVFSpxUOWtYxCTyUBDXM:Play()
				end

			end) _ZRDyqHyMncuKhlXWAPldHqSbOfIM = {
			Part = _mLaWmRbVjsaXUGmFuITuAMRNzRKusILbwCfCIHLOsGnwbZ, Light = _ZgRjeScStdSdTmmrGcrkPbIklceNkmeMFFQYimBqnkSOxKDu,
			Tween = _gGChkMRtbvURBkstSfsDkHyeVuGoucvQvlpWtZWgEOkaP, PulseTween = _GEiVVFSpxUOWtYxCTyUBDXM, } _CIvADqBWtdZjLQJNwFZmxLcZdUfowuGbfbSXZVbXFWHlnbqk[key] = _ZRDyqHyMncuKhlXWAPldHqSbOfIM
		end

		_ZRDyqHyMncuKhlXWAPldHqSbOfIM.Destroy = tick()
		if _yPcanYsUORRI == false  then

			_yPcanYsUORRI = true
			task.spawn(function()
				while next(_CIvADqBWtdZjLQJNwFZmxLcZdUfowuGbfbSXZVbXFWHlnbqk)  do
					for i, v in next, _CIvADqBWtdZjLQJNwFZmxLcZdUfowuGbfbSXZVbXFWHlnbqk  do
						if (tick() - v.Destroy) > 0.8  then
							if v.PulseTween  then

								v.PulseTween:Cancel()
							end
							local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
							local _gGChkMRtbvURBkstSfsDkHyeVuGoucvQvlpWtZWgEOkaP = TweenService:Create(v.Part, tweenInfo, {Transparency = 1})
							local _GEiVVFSpxUOWtYxCTyUBDXM = TweenService:Create(v.Light, tweenInfo, {Brightness = 0}) _gGChkMRtbvURBkstSfsDkHyeVuGoucvQvlpWtZWgEOkaP:Play() _GEiVVFSpxUOWtYxCTyUBDXM:Play()
							task.spawn(function()
								task.wait(0.15) v.Part:Destroy()
							end) _CIvADqBWtdZjLQJNwFZmxLcZdUfowuGbfbSXZVbXFWHlnbqk[i] = nil
						end

					end
					task.wait(0.2)
				end

				_yPcanYsUORRI = false
			end)
		end

	end
	local _GPIFjjFEYNVoRYqkjmyXeQXScEKsgDu = false
	local _GSzpnocXbDtxGYHnBPZeAJjj = false
	local _hsQrIxzUlsAnQxtrdFzKLqXibvreacCxjWaF = serverLabel:CreateToggle({
	Name = 'Scaffold', Function = function()
		repeat task.wait()
		if IsAlive(LocalPlayer) == true and Config.Fly.Value == false and getAliveCount() ~= 0 and
		Config.Scaffold.Value == true  then
			if IsGhostMode == true or
			Config.Scaffold.LegitMode.Value == true  then
				for i = 1, (Config.Scaffold.Expand.Value * 2)  do
					local _oZSPFvosANCJHiuBlncMShbrHLYbWPsVARyyDwbhtacZVM = (LocalPlayer.Character.PrimaryPart.Position + ((LocalPlayer.Character.PrimaryPart.CFrame.LookVector * i) - Vector3.new(0, (LocalPlayer.Character.PrimaryPart.Size.Y / 2) + ((LocalPlayer.Character.Humanoid.HipHeight + (LocalPlayer.Character.Humanoid.HipHeight / 2))), 0)))
					local _cjyccGXLoFx = _wiZjGTOwkxgooIpGlFAb(_oZSPFvosANCJHiuBlncMShbrHLYbWPsVARyyDwbhtacZVM)
					local _wKFCUdMOpvAswzTOsPnYVYVOJBRVhP = _iHlAPVMUvdpQCZvIHsbOmnaxFoitImnGKvwLvxV()
					if _wKFCUdMOpvAswzTOsPnYVYVOJBRVhP  then
						if Config.Scaffold.BlockVisualizer.Value == true  then
							local _khsetVXPEWKWLRVRsXxDpGyVqpqdcxzcjCAxbNVbUeOihO = Vector3.new( math.round( _oZSPFvosANCJHiuBlncMShbrHLYbWPsVARyyDwbhtacZVM.X / 3) * 3, math.round( _oZSPFvosANCJHiuBlncMShbrHLYbWPsVARyyDwbhtacZVM.Y / 3) * 3, math.round( _oZSPFvosANCJHiuBlncMShbrHLYbWPsVARyyDwbhtacZVM.Z / 3) * 3 ) _FcqHqfAheciRP(_khsetVXPEWKWLRVRsXxDpGyVqpqdcxzcjCAxbNVbUeOihO)
							task.wait(0.15)
						end

						labelFrame.BlockPlacingRemote:InvokeServer({blockType = _wKFCUdMOpvAswzTOsPnYVYVOJBRVhP.itemType,
						blockData = 0, position = _cjyccGXLoFx})
						task.spawn(function()
							if _GPIFjjFEYNVoRYqkjmyXeQXScEKsgDu == false and
							_GSzpnocXbDtxGYHnBPZeAJjj == true  then

								_jWUYSJGVzhFUNQMDSDluVMlIgTovpmuwRs('rbxassetid://4842910664')
							end
							if _GPIFjjFEYNVoRYqkjmyXeQXScEKsgDu == false and
							_GSzpnocXbDtxGYHnBPZeAJjj == true  then

								_GPIFjjFEYNVoRYqkjmyXeQXScEKsgDu = true
								_GSzpnocXbDtxGYHnBPZeAJjj = false
								local _iHRXTieRuZqSdwTD = Instance.new('Animation')
								_iHRXTieRuZqSdwTD.AnimationId = 'rbxassetid://4866397461'
								local _BwtjluQHUSJZIrPmvpokEANZrwkir = LocalPlayer.Character.Humanoid.Animator:LoadAnimation(_iHRXTieRuZqSdwTD)
								_BwtjluQHUSJZIrPmvpokEANZrwkir.Priority = Enum.AnimationPriority.Action _BwtjluQHUSJZIrPmvpokEANZrwkir:Play() _jWUYSJGVzhFUNQMDSDluVMlIgTovpmuwRs('rbxassetid://4842910664')
								task.wait(0.2)
								_GPIFjjFEYNVoRYqkjmyXeQXScEKsgDu = false
							end

						end)
					end

				end

			else
				for i = 1, (Config.Scaffold.Expand.Value * 3)  do
					task.spawn(function()
						local _oZSPFvosANCJHiuBlncMShbrHLYbWPsVARyyDwbhtacZVM = (LocalPlayer.Character.PrimaryPart.Position + ((LocalPlayer.Character.PrimaryPart.CFrame.LookVector * i) - Vector3.new(0, (LocalPlayer.Character.PrimaryPart.Size.Y / 2) + ((LocalPlayer.Character.Humanoid.HipHeight + (LocalPlayer.Character.Humanoid.HipHeight / 2))), 0)))
						local _cjyccGXLoFx = _wiZjGTOwkxgooIpGlFAb(_oZSPFvosANCJHiuBlncMShbrHLYbWPsVARyyDwbhtacZVM)
						local _wKFCUdMOpvAswzTOsPnYVYVOJBRVhP = _iHlAPVMUvdpQCZvIHsbOmnaxFoitImnGKvwLvxV()
						if _wKFCUdMOpvAswzTOsPnYVYVOJBRVhP  then
							if Config.Scaffold.BlockVisualizer.Value == true  then
								local _khsetVXPEWKWLRVRsXxDpGyVqpqdcxzcjCAxbNVbUeOihO = Vector3.new( math.round( _oZSPFvosANCJHiuBlncMShbrHLYbWPsVARyyDwbhtacZVM.X / 3) * 3, math.round( _oZSPFvosANCJHiuBlncMShbrHLYbWPsVARyyDwbhtacZVM.Y / 3) * 3, math.round( _oZSPFvosANCJHiuBlncMShbrHLYbWPsVARyyDwbhtacZVM.Z / 3) * 3 ) _FcqHqfAheciRP(_khsetVXPEWKWLRVRsXxDpGyVqpqdcxzcjCAxbNVbUeOihO)
								task.wait(0.15)
							end

							labelFrame.BlockPlacingRemote:InvokeServer({blockType = _wKFCUdMOpvAswzTOsPnYVYVOJBRVhP.itemType,
							blockData = 0, position = _cjyccGXLoFx})
						end

					end)
				end

			end

		end

	until  Config.Scaffold.Value == false or shared[UninjectedKey] == true
end

, HoverText = 'Places Blocks Automatically ' }) _hsQrIxzUlsAnQxtrdFzKLqXibvreacCxjWaF:CreateToggle({
Name = 'BlockVisualizer', Function = function()
end

, DefaultValue = true }) _hsQrIxzUlsAnQxtrdFzKLqXibvreacCxjWaF:CreateToggle({
Name = 'LegitMode', Function = function()
end

, DefaultValue = false }) _hsQrIxzUlsAnQxtrdFzKLqXibvreacCxjWaF:CreateSlider({
Name = 'Expand', Function = function()
end

, MaximumValue = 4,
DefaultValue = 2 }) _hsQrIxzUlsAnQxtrdFzKLqXibvreacCxjWaF:CreateColorSlider({ Name = 'VisualizerColor',
Function = function()
end

, DefaultValue = Color3.new(0.368627, 0.0784314, 1) })
repeat task.wait()

until  (Workspace:FindFirstChild('Map') and getAliveCount() ~= 0) or shared[UninjectedKey] == true
local _QHCqqRYCxQuCuPqGZFVTpgC = nil
repeat task.wait()
for i, v in next, Workspace:FindFirstChild('Map'):GetDescendants()  do
	if v.Name == 'Blocks'  then

		_QHCqqRYCxQuCuPqGZFVTpgC = v
	end

end

until  _QHCqqRYCxQuCuPqGZFVTpgC or shared[UninjectedKey] == true Connections['ScaffoldConnection'] = _QHCqqRYCxQuCuPqGZFVTpgC.DescendantAdded:Connect(function(_lRHqOEBDnQFfAtoPCuhruRefAXTkrHvTHAdiWxvPGJyXQj)
	if _lRHqOEBDnQFfAtoPCuhruRefAXTkrHvTHAdiWxvPGJyXQj.Name:lower():find('wool')  then

		_GSzpnocXbDtxGYHnBPZeAJjj = true
	end

end)
end)
task.spawn(function()
	if IsGhostMode == false  then
		local function _NTNRqMXbSbILCyUIUg(scrollFrame)
			local _gnDrjmaUcntotbedwORPsEswtW = RaycastParams.new()
			_gnDrjmaUcntotbedwORPsEswtW.FilterDescendantsInstances = {LocalPlayer.Character}
			_gnDrjmaUcntotbedwORPsEswtW.FilterType = Enum.RaycastFilterType.Exclude
			local _mdDqZiEgxKlwyS = Workspace:Blockcast(scrollFrame, Vector3.new(2, 3, 2), LocalPlayer.Character.Humanoid.MoveDirection * 2, _gnDrjmaUcntotbedwORPsEswtW)
			if _mdDqZiEgxKlwyS  then
				if _mdDqZiEgxKlwyS.Position and _mdDqZiEgxKlwyS.Instance and _mdDqZiEgxKlwyS.Instance.CanCollide == true  then
					return true
				end

			end
			return false
		end
		local _cDBvQBYzqgTetoCIxTLDOXejTiqErfW = serverLabel:CreateToggle({
		Name = 'Spider', Function = function()
			task.spawn(function()
				if Config.Spider.Value == true  then

					Connections['SpiderConnection'] = RunService.Heartbeat:Connect(function(_cvJzKAscJvuEPrqUiywSMkSgVSitEVFLOwF)
						task.spawn(function()
							if IsAlive(LocalPlayer) == true and (tick() - _jLImoAOtoUPPAHNwiZqbkfdyfszjOHYHMdK) > 3  then
								local _sQtvrEPTBVzvSKBSAQBiuGNrRgIBbGQiKzDvdVyjOKZiWsRP = LocalPlayer.Character.Humanoid.MoveDirection
								local _dAXfSblpzHAFpmDTZCHbgFvD = _NTNRqMXbSbILCyUIUg(CFrame.new(LocalPlayer.Character.PrimaryPart.Position + Vector3.new(0, 3.1, 0)))
								if _dAXfSblpzHAFpmDTZCHbgFvD == true  then
									for i = 1, 3  do

										LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, Config.Spider.Speed.Value, LocalPlayer.Character.PrimaryPart.Velocity.Z)
									end

								end

							end

						end)
					end)
				end

			end)
			if Config.Spider.Value == false and Connections['SpiderConnection']  then

				Connections['SpiderConnection']:Disconnect()
			end

		end

		, HoverText = 'Gives You The Ability To Climb Like A Spider ' }) _cDBvQBYzqgTetoCIxTLDOXejTiqErfW:CreateSlider({
		Name = 'Speed', Function = function()
		end

		, MaximumValue = (50+50),
		DefaultValue = (21+39) })
	end

end)
task.spawn(function()
	local _PJfVygAVLMvzHPdrXhMXqFpWzRdbWNm = 0
	local speedInterval = 0.2
	local _XdCkRYllohmIN = _kwgvoVEIBbLrBLnUpkUMxWMjuS.MAX_CONTINUOUS_SPEED
	task.spawn(function()
		task.wait(1)
		repeat task.wait()

	until  IsAlive(LocalPlayer) == true
	local lastPos = Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, 0, LocalPlayer.Character.PrimaryPart.Position.Z)
	local lastTick = tick()
	repeat task.wait(0)
	local nowTick = tick()
	local elapsed = nowTick - lastTick
	if elapsed >= speedInterval  then
		if IsAlive(LocalPlayer) == true  then
			local currPos = Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, 0, LocalPlayer.Character.PrimaryPart.Position.Z)
			_PJfVygAVLMvzHPdrXhMXqFpWzRdbWNm = (currPos - lastPos).Magnitude / elapsed lastPos = currPos
			lastTick = nowTick
		end

	end

until  shared[UninjectedKey] == true
end)
task.spawn(function()
	repeat task.wait()

until  getAliveCount() ~= 0
local _dabbfQqwaLrrmhZQUnAie = tick() Connections['SpeedConnection'] = labelFrame.SpawnWindWalkerOrbRemote.OnClientEvent:Connect(function()
	_dabbfQqwaLrrmhZQUnAie = tick()
	if _uKPtgyNkZprMcrQIahedKVKCtbgCyJq < 5  then

		_uKPtgyNkZprMcrQIahedKVKCtbgCyJq = _uKPtgyNkZprMcrQIahedKVKCtbgCyJq + 1
	end

end)
task.spawn(function()
	repeat task.wait()
	if (tick() - _dabbfQqwaLrrmhZQUnAie) >= (43+7)  then

		_uKPtgyNkZprMcrQIahedKVKCtbgCyJq = 0
	end
	if IsAlive(LocalPlayer) == false  then

		_uKPtgyNkZprMcrQIahedKVKCtbgCyJq = 0
	end

until  shared[UninjectedKey] == true
end)
end)
local speedVal = serverLabel:CreateToggle({
Name = 'Speed', Function = function()
	task.spawn(function()
		if Config.Speed.Value == true  then

			Connections['SpeedConnection2'] = RunService.Heartbeat:Connect(function(_cvJzKAscJvuEPrqUiywSMkSgVSitEVFLOwF)
				if IsAlive(LocalPlayer) == true  then
					local _IhfdRQkkPmpGYHi = RaycastParams.new()
					_IhfdRQkkPmpGYHi.FilterDescendantsInstances = {blocks}
					_IhfdRQkkPmpGYHi.FilterType = Enum.RaycastFilterType.Include
					local _yXbCWjZjivoBGCyxSLrIVPsrseFOHILfbKcHFKWSsELbY = GetSpeed()
					local _aLHCBbXbiPTxqNaXkHlOgipGLFILhNHHFdzmmVwuTmyvQUWGGy = ((_PJfVygAVLMvzHPdrXhMXqFpWzRdbWNm > (21+2) and _PJfVygAVLMvzHPdrXhMXqFpWzRdbWNm < _XdCkRYllohmIN) and _XdCkRYllohmIN - _PJfVygAVLMvzHPdrXhMXqFpWzRdbWNm or 0)
					local _RdhlgbyNMCdW = (LocalPlayer.Character.Humanoid.MoveDirection * (IsGhostMode == true and (math.random(0, (71+49)) / (15+85)) or ((_yXbCWjZjivoBGCyxSLrIVPsrseFOHILfbKcHFKWSsELbY + _aLHCBbXbiPTxqNaXkHlOgipGLFILhNHHFdzmmVwuTmyvQUWGGy) * _cvJzKAscJvuEPrqUiywSMkSgVSitEVFLOwF)))
					local hoverLabel = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, _RdhlgbyNMCdW, _IhfdRQkkPmpGYHi)
					if not hoverLabel  then

						LocalPlayer.Character.PrimaryPart.CFrame = (LocalPlayer.Character.PrimaryPart.CFrame + _RdhlgbyNMCdW)
					end

				end

			end)
		end

	end)
	if Config.Speed.Value == false and Connections['SpeedConnection']  then

		Connections['SpeedConnection']:Disconnect()
	end

end

, HoverText = 'Makes Your Speed Equal To The Desired Value ' }) speedVal:CreateSlider({
Name = 'Speed', Function = function()
end

, MaximumValue = (1+22),
DefaultValue = (1+21) })
end)
task.spawn(function()
	if IsGhostMode == false  then
		local _TvCnZXmlNuholJpIIiYHjqgkVJyVCrVAEWrDRXoJjqlkHun = _kwgvoVEIBbLrBLnUpkUMxWMjuS.MAX_CONTINUOUS_FLY_TIME
		local _BuhlVsUuozFwJrdTd = tick()
		local _DVexCbzsBPPXlZAjSkyEMbrhNYcDyJ
		local _xAYXnmHECvmBQkhWkTfFVBcLgLlN
		local _oQdJTsCBLChxLRdDytxjDOapvAdiqyAm, _PTMDmPlBewOlHJLEsPRfnNqoWjmbDSREsAZveZhZq, _CJqflgULRkmmDwvPROGu, UIStroke = _BDSgRFCiwEmMMpyzgovHnuvjHWthAxcsJMSveoPsCxY()
		local _guIISOLqTWtMglSCZNPAtfoKTEsXtTUNJbjBzEnHcSu
		local _uemaHGDVenEooyHBmSGUnpTdyKFuXADByVcwpiNODpZoJJpqYW, _OkVNyJHscyKdAQiVSsQqaApnbPe
		task.spawn(function() UserInputService.InputBegan:Connect(function(moduleList)
			if UserInputService:GetFocusedTextBox()  then
				return
			end
			if moduleList.KeyCode == Enum.KeyCode.LeftShift  then

				_DVexCbzsBPPXlZAjSkyEMbrhNYcDyJ = true
			end
			if moduleList.KeyCode == Enum.KeyCode.Space  then

				_xAYXnmHECvmBQkhWkTfFVBcLgLlN = true
			end

		end)
	end)
	task.spawn(function() UserInputService.InputEnded:Connect(function(moduleList)
		if UserInputService:GetFocusedTextBox()  then
			return
		end
		if moduleList.KeyCode == Enum.KeyCode.LeftShift  then

			_DVexCbzsBPPXlZAjSkyEMbrhNYcDyJ = false
		end
		if moduleList.KeyCode == Enum.KeyCode.Space  then

			_xAYXnmHECvmBQkhWkTfFVBcLgLlN = false
		end

	end)
end) _uemaHGDVenEooyHBmSGUnpTdyKFuXADByVcwpiNODpZoJJpqYW, _OkVNyJHscyKdAQiVSsQqaApnbPe = serverLabel:CreateToggle({
Name = 'Fly', Function = function()
	_BuhlVsUuozFwJrdTd = 0
	if IsAlive(LocalPlayer) == true and Config.Fly.Value == true  then

		_guIISOLqTWtMglSCZNPAtfoKTEsXtTUNJbjBzEnHcSu = Instance.new('BodyVelocity')
		_guIISOLqTWtMglSCZNPAtfoKTEsXtTUNJbjBzEnHcSu.Parent = LocalPlayer.Character.PrimaryPart
		_guIISOLqTWtMglSCZNPAtfoKTEsXtTUNJbjBzEnHcSu.Name = 'FlyBodyVelocity' _guIISOLqTWtMglSCZNPAtfoKTEsXtTUNJbjBzEnHcSu.MaxForce = Vector3.new(0, math.huge, 0)
	end
	repeat task.wait()
	task.spawn(function() _oQdJTsCBLChxLRdDytxjDOapvAdiqyAm.Visible = Config.Fly.FlyHud.Value
		if (tick() - _BuhlVsUuozFwJrdTd) <= _TvCnZXmlNuholJpIIiYHjqgkVJyVCrVAEWrDRXoJjqlkHun  then
			local _BuhlVsUuozFwJrdTd = DecimalRound((tick() - _BuhlVsUuozFwJrdTd), 1)
			_PTMDmPlBewOlHJLEsPRfnNqoWjmbDSREsAZveZhZq.Text = _BuhlVsUuozFwJrdTd
			local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
			local _EJaAjVNKGDituWffgeMTjkoALLMOpiBRGxFTU = TweenService:Create(_CJqflgULRkmmDwvPROGu, tweenInfo, {Size = UDim2.new(_BuhlVsUuozFwJrdTd / _TvCnZXmlNuholJpIIiYHjqgkVJyVCrVAEWrDRXoJjqlkHun, 0, 1, 0)}) _EJaAjVNKGDituWffgeMTjkoALLMOpiBRGxFTU:Play()
			if (tick() - _BuhlVsUuozFwJrdTd) <= 0.05  then
				local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
				local _EJaAjVNKGDituWffgeMTjkoALLMOpiBRGxFTU = TweenService:Create(_CJqflgULRkmmDwvPROGu, tweenInfo, {Size = UDim2.new(_BuhlVsUuozFwJrdTd / _TvCnZXmlNuholJpIIiYHjqgkVJyVCrVAEWrDRXoJjqlkHun, 0, 1, 0)}) _EJaAjVNKGDituWffgeMTjkoALLMOpiBRGxFTU:Play()
			end

			_PTMDmPlBewOlHJLEsPRfnNqoWjmbDSREsAZveZhZq.Text = _BuhlVsUuozFwJrdTd
			local colorParts = string.split(Config.Fly.FlyHudSliderColor.Value, ',')
			local waveSize = colorParts[1]
			local waveColor = colorParts[2]
			local arrayListFrame = colorParts[3]
			_CJqflgULRkmmDwvPROGu.BackgroundColor3 = Color3.new(waveSize, waveColor, arrayListFrame)
		end

	end)
	if isOnGround(LocalPlayer) == true  then

		_BuhlVsUuozFwJrdTd = tick()
	end
	if _guIISOLqTWtMglSCZNPAtfoKTEsXtTUNJbjBzEnHcSu  then

		_guIISOLqTWtMglSCZNPAtfoKTEsXtTUNJbjBzEnHcSu.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, ((_DVexCbzsBPPXlZAjSkyEMbrhNYcDyJ and -Config.Fly.FlyDownSpeed.Value or 0) + (_xAYXnmHECvmBQkhWkTfFVBcLgLlN and Config.Fly.FlyUpSpeed.Value or 0)), LocalPlayer.Character.PrimaryPart.Velocity.Z)
	end
	if (tick() - _BuhlVsUuozFwJrdTd) >= _TvCnZXmlNuholJpIIiYHjqgkVJyVCrVAEWrDRXoJjqlkHun and Config.Fly.TPDown.Value == true  then

		_BuhlVsUuozFwJrdTd = tick()
		local _JJqIWkotFWNEB = 0
		local dropdownFrame = RaycastParams.new()
		dropdownFrame.FilterDescendantsInstances = {blocks}
		dropdownFrame.FilterType = Enum.RaycastFilterType.Include
		local _UzvHUdtnzHkGPkpoJoEajrrGaJiTO = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, Vector3.new(0, -(463+4537), 0), dropdownFrame)
		if _UzvHUdtnzHkGPkpoJoEajrrGaJiTO and IsAlive(LocalPlayer) == true  then
			local _TdIloqeMyVXDhcSTiXflICddnVSkkeLYaHJU = {LocalPlayer.Character.PrimaryPart.CFrame:GetComponents()} _TdIloqeMyVXDhcSTiXflICddnVSkkeLYaHJU[2] = (_UzvHUdtnzHkGPkpoJoEajrrGaJiTO.Position.Y + LocalPlayer.Character.Humanoid.HipHeight)
			_JJqIWkotFWNEB = LocalPlayer.Character.PrimaryPart.Position.Y LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(unpack(_TdIloqeMyVXDhcSTiXflICddnVSkkeLYaHJU))
			_guIISOLqTWtMglSCZNPAtfoKTEsXtTUNJbjBzEnHcSu.Velocity = Vector3.new(0, -(15+35), 0)
			task.spawn(function()
				task.wait(0.3)
				if IsAlive(LocalPlayer) == true  then

					_TdIloqeMyVXDhcSTiXflICddnVSkkeLYaHJU = {LocalPlayer.Character.PrimaryPart.CFrame:GetComponents()} _TdIloqeMyVXDhcSTiXflICddnVSkkeLYaHJU[2] = _JJqIWkotFWNEB
					_guIISOLqTWtMglSCZNPAtfoKTEsXtTUNJbjBzEnHcSu.Velocity = Vector3.new(0, 0, 0) LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(unpack(_TdIloqeMyVXDhcSTiXflICddnVSkkeLYaHJU))
				end

			end)
		end

	end

until  Config.Fly.Value == false or IsAlive(LocalPlayer) == false or shared[UninjectedKey] == true
if _guIISOLqTWtMglSCZNPAtfoKTEsXtTUNJbjBzEnHcSu  then

	_guIISOLqTWtMglSCZNPAtfoKTEsXtTUNJbjBzEnHcSu:Destroy()
end

_oQdJTsCBLChxLRdDytxjDOapvAdiqyAm.Visible = false
Config.Fly.Value = false
_OkVNyJHscyKdAQiVSsQqaApnbPe.TextColor3 = Color3.new(1, 1, 1)
end

, HoverText = 'Makes You Fly (Works Better With NoFallDamage)' }) _uemaHGDVenEooyHBmSGUnpTdyKFuXADByVcwpiNODpZoJJpqYW:CreateToggle({
Name = 'TPDown', Function = function()
end

, DefaultValue = true }) _uemaHGDVenEooyHBmSGUnpTdyKFuXADByVcwpiNODpZoJJpqYW:CreateToggle({
Name = 'FlyHud', Function = function()
end

, DefaultValue = true }) _uemaHGDVenEooyHBmSGUnpTdyKFuXADByVcwpiNODpZoJJpqYW:CreateSlider({
Name = 'FlyDownSpeed', Function = function()
end

, MaximumValue = (73+27),
DefaultValue = (39+1) }) _uemaHGDVenEooyHBmSGUnpTdyKFuXADByVcwpiNODpZoJJpqYW:CreateSlider({ Name = 'FlyUpSpeed',
Function = function()
end

, MaximumValue = (25+75),
DefaultValue = (23+17) }) _uemaHGDVenEooyHBmSGUnpTdyKFuXADByVcwpiNODpZoJJpqYW:CreateColorSlider({ Name = 'FlyHudSliderColor',
Function = function()
end

, DefaultValue = Color3.new(0, 0.6, 1) })
end

end)
task.spawn(function()
	local _SgCCFkCnuVSJHowkzInD = uiPadding.ViewModelController:GetAttribute('ConstantManager_HORIZONTAL_OFFSET')
	local _ZyIEzAdFtEesDqKsttjksHRBVNUYGZlkmwHxUPv = uiPadding.ViewModelController:GetAttribute('ConstantManager_VERTICAL_OFFSET')
	local _RMoodngXMboCIUMqYrGFOFCQAKEUjkkBfbywenLNAZuc = uiPadding.ViewModelController:GetAttribute('ConstantManager_DEPTH_OFFSET')
	local _ARuIBDDJDwPAUXDg = waveStrength:CreateToggle({
	Name = 'ViewModelChanger', Function = function()
		if Config.ViewModelChanger.Value == true and _EUAFvwKBbSQlRFZdpstOXpDxlM and _DwYpENLqculffjpJDgqCNccJim  then

			uiPadding.ViewModelController:SetAttribute('ConstantManager_HORIZONTAL_OFFSET', (Config.ViewModelChanger.Horizontal.Value / (8+2))) uiPadding.ViewModelController:SetAttribute('ConstantManager_VERTICAL_OFFSET', (Config.ViewModelChanger.Vertical.Value / (4+6))) uiPadding.ViewModelController:SetAttribute('ConstantManager_DEPTH_OFFSET', -(Config.ViewModelChanger.Depth.Value / (8+2))) _EUAFvwKBbSQlRFZdpstOXpDxlM:WaitForChild('RightHand'):WaitForChild('RightWrist').C1 = (_DwYpENLqculffjpJDgqCNccJim * CFrame.Angles(math.rad(0), math.rad(0), math.rad((Config.ViewModelChanger.Horizontal.Value / 3))))
		end
		if Config.ViewModelChanger.Value == false and _EUAFvwKBbSQlRFZdpstOXpDxlM and _DwYpENLqculffjpJDgqCNccJim  then

			uiPadding.ViewModelController:SetAttribute('ConstantManager_HORIZONTAL_OFFSET', _SgCCFkCnuVSJHowkzInD) uiPadding.ViewModelController:SetAttribute('ConstantManager_VERTICAL_OFFSET', _ZyIEzAdFtEesDqKsttjksHRBVNUYGZlkmwHxUPv) uiPadding.ViewModelController:SetAttribute('ConstantManager_DEPTH_OFFSET', _RMoodngXMboCIUMqYrGFOFCQAKEUjkkBfbywenLNAZuc) _EUAFvwKBbSQlRFZdpstOXpDxlM:WaitForChild('RightHand'):WaitForChild('RightWrist').C1 = (_DwYpENLqculffjpJDgqCNccJim * CFrame.Angles(math.rad(0), math.rad(0), math.rad((_SgCCFkCnuVSJHowkzInD / 3))))
		end

	end

	, HoverText = 'Allows You To Change Your ViewModel (First Person Camera) ' }) _ARuIBDDJDwPAUXDg:CreateSlider({
	Name = 'Horizontal', Function = function()
		if Config.ViewModelChanger.Value == true  then

			uiPadding.ViewModelController:SetAttribute('ConstantManager_HORIZONTAL_OFFSET', (Config.ViewModelChanger.Horizontal.Value / (9+1)))
		end

	end

	, MaximumValue = (9+36),
	DefaultValue = (12+3) }) _ARuIBDDJDwPAUXDg:CreateSlider({ Name = 'Vertical',
	Function = function()
		if Config.ViewModelChanger.Value == true and _EUAFvwKBbSQlRFZdpstOXpDxlM and _DwYpENLqculffjpJDgqCNccJim  then

			uiPadding.ViewModelController:SetAttribute('ConstantManager_VERTICAL_OFFSET', (Config.ViewModelChanger.Vertical.Value / (3+7))) _DwYpENLqculffjpJDgqCNccJim = (_DwYpENLqculffjpJDgqCNccJim * CFrame.Angles(math.rad(0), math.rad(0), math.rad((Config.ViewModelChanger.Horizontal.Value / 3))))
		end

	end

	, MaximumValue = (7+8),
	DefaultValue = 5 }) _ARuIBDDJDwPAUXDg:CreateSlider({ Name = 'Depth',
	Function = function()
		if Config.ViewModelChanger.Value == true  then

			uiPadding.ViewModelController:SetAttribute('ConstantManager_DEPTH_OFFSET', -(Config.ViewModelChanger.Depth.Value / (9+1)))
		end

	end

	, MaximumValue = (33+72),
	DefaultValue = (15+20) }) UnInjectEvent.Event:Connect(function() uiPadding.ViewModelController:SetAttribute('ConstantManager_HORIZONTAL_OFFSET', _SgCCFkCnuVSJHowkzInD) uiPadding.ViewModelController:SetAttribute('ConstantManager_VERTICAL_OFFSET', _ZyIEzAdFtEesDqKsttjksHRBVNUYGZlkmwHxUPv) uiPadding.ViewModelController:SetAttribute('ConstantManager_DEPTH_OFFSET', _RMoodngXMboCIUMqYrGFOFCQAKEUjkkBfbywenLNAZuc) _EUAFvwKBbSQlRFZdpstOXpDxlM:WaitForChild('RightHand'):WaitForChild('RightWrist').C1 = (_DwYpENLqculffjpJDgqCNccJim * CFrame.Angles(math.rad(0), math.rad(0), math.rad((_SgCCFkCnuVSJHowkzInD / 3))))
	end)
end)
task.spawn(function()
	local _GnxFJjdQHynhJVBmJTQBZ = Vector3.new(0, 0, 0)
	local getArmor = Instance.new('Sound')
	getArmor.Parent = Workspace
	getArmor.Name = 'KeyboardSound'
	getArmor.SoundId = 'rbxassetid://91656373864470' ContentProvider:PreloadAsync({getArmor})
	local _mktinZpEfVoFjzsTmLpvhOLoi = Instance.new('Sound')
	_mktinZpEfVoFjzsTmLpvhOLoi.Parent = Workspace
	_mktinZpEfVoFjzsTmLpvhOLoi.Name = 'MouseSound'
	_mktinZpEfVoFjzsTmLpvhOLoi.SoundId = 'rbxassetid://136892729417641' ContentProvider:PreloadAsync({_mktinZpEfVoFjzsTmLpvhOLoi})
	local _THEyELYkzIUVqLjsAbJMzEt = waveStrength:CreateToggle({
	Name = 'CustomKeySounds', Function = function()
		repeat task.wait()
		if Config.CustomKeySounds.Value == true and
		UserInputService.KeyboardEnabled == false and IsAlive(LocalPlayer) == true  then
			local _sQtvrEPTBVzvSKBSAQBiuGNrRgIBbGQiKzDvdVyjOKZiWsRP = LocalPlayer.Character.Humanoid.MoveDirection
			if _sQtvrEPTBVzvSKBSAQBiuGNrRgIBbGQiKzDvdVyjOKZiWsRP ~= _GnxFJjdQHynhJVBmJTQBZ  then

				_GnxFJjdQHynhJVBmJTQBZ = _sQtvrEPTBVzvSKBSAQBiuGNrRgIBbGQiKzDvdVyjOKZiWsRP
				if _sQtvrEPTBVzvSKBSAQBiuGNrRgIBbGQiKzDvdVyjOKZiWsRP.Magnitude > 0 and getArmor  then

					getArmor:Stop() getArmor.PlaybackSpeed = math.random((24+61), (114+1)) / (16+84)
					getArmor.TimePosition = 1.2 getArmor.Volume = math.random((Config.CustomKeySounds.Volume.Value - 0.15), (Config.CustomKeySounds.Volume.Value + 0.15)) getArmor:Play()
					task.spawn(function()
						repeat task.wait()

					until  getArmor.Playing == false or getArmor.TimePosition >= 1.25 or not getArmor or
					Config.CustomKeySounds.Value == false or shared[UninjectedKey] == true
					if getArmor  then

						getArmor:Stop()
					end

				end)
			end

		end

	end

until  Config.CustomKeySounds.Value == false or shared[UninjectedKey] == true
end

, HoverText = 'Plays Custom Keyboard Sounds Whenever You Input A Key ' }) _THEyELYkzIUVqLjsAbJMzEt:CreateSlider({
Name = 'Volume', Function = function()
end

, MaximumValue = 3,
DefaultValue = 1 })
local _qjJtRuddbclMbjzshFdTrdHbrtQRKtTvFjlzfTMVLx = _THEyELYkzIUVqLjsAbJMzEt:CreateDropdown({
Name = 'AllowedInputs', HoverText = 'Pick The Inputs That Sounds Will Be Played To' }) _qjJtRuddbclMbjzshFdTrdHbrtQRKtTvFjlzfTMVLx:CreateToggle({
Name = 'Keyboard', Function = function()
end

, DefaultValue = true }) _qjJtRuddbclMbjzshFdTrdHbrtQRKtTvFjlzfTMVLx:CreateToggle({
Name = 'Mouse', Function = function()
end

, DefaultValue = true }) Connections['CustomKeySounds'] = UserInputService.InputBegan:Connect(function(moduleList, _xJjfpBZHqPXfSVGrjXBCCqmWISfjYiYGBEBUt)
	if Config.CustomKeySounds.Value == true and
	Config.CustomKeySounds.AllowedInputs.Keyboard.Value == true  then
		if _xJjfpBZHqPXfSVGrjXBCCqmWISfjYiYGBEBUt == false and
		moduleList.UserInputType == Enum.UserInputType.Keyboard and getArmor  then

			getArmor:Stop() getArmor.PlaybackSpeed = math.random((62+23), (74+41)) / (75+25)
			getArmor.TimePosition = 1.2 getArmor.Volume = math.random((Config.CustomKeySounds.Volume.Value - 0.15), (Config.CustomKeySounds.Volume.Value + 0.15)) getArmor:Play()
			task.spawn(function()
				repeat task.wait()

			until  getArmor.Playing == false or getArmor.TimePosition >= 1.25 or not getArmor or
			Config.CustomKeySounds.Value == false or shared[UninjectedKey] == true
			if getArmor  then

				getArmor:Stop()
			end

		end)
	end

end
if Config.CustomKeySounds.Value == true and
Config.CustomKeySounds.AllowedInputs.Mouse.Value == true  then
	if (moduleList.UserInputType == Enum.UserInputType.MouseButton1 or
	moduleList.UserInputType == Enum.UserInputType.Touch) and _mktinZpEfVoFjzsTmLpvhOLoi  then

		_mktinZpEfVoFjzsTmLpvhOLoi:Stop() _mktinZpEfVoFjzsTmLpvhOLoi.PlaybackSpeed = math.random((11+74), (18+97)) / (88+12)
		_mktinZpEfVoFjzsTmLpvhOLoi.Volume = math.random((Config.CustomKeySounds.Volume.Value - 0.15), (Config.CustomKeySounds.Volume.Value + 0.15)) + 1 _mktinZpEfVoFjzsTmLpvhOLoi:Play()
		task.spawn(function()
			repeat task.wait()

		until  _mktinZpEfVoFjzsTmLpvhOLoi.Playing == false or not _mktinZpEfVoFjzsTmLpvhOLoi or
		Config.CustomKeySounds.Value == false or shared[UninjectedKey] == true
		if _mktinZpEfVoFjzsTmLpvhOLoi  then

			_mktinZpEfVoFjzsTmLpvhOLoi:Stop()
		end

	end)
end

end

end) UnInjectEvent.Event:Connect(function() getArmor:Destroy() _mktinZpEfVoFjzsTmLpvhOLoi:Destroy()
end)
end)
task.spawn(function()
	local _fkEzHUbHVeEDS = waveStrength:CreateToggle({
	Name = 'PickupItemRange', Function = function()
		repeat task.wait(0.1)
		if IsAlive(LocalPlayer) == true and getAliveCount() ~= 0  then
			for i, v in next, CollectionService:GetTagged('ItemDrop')  do
				local cornerObj = (v.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
				if cornerObj <= (IsGhostMode == true and (Config.PickupItemRange.Range.Value / 2) or Config.PickupItemRange.Range.Value)  then
					task.wait(0.3) v.CFrame = CFrame.new(LocalPlayer.Character.PrimaryPart.Position - Vector3.new(0, 3, 0)) labelFrame.PickupItemDropRemote:InvokeServer({itemDrop = v})
				end

			end

		end

	until  Config.PickupItemRange.Value == false or shared[UninjectedKey] == true
end

, HoverText = 'Picks Up The Item From The Desired Range ' }) _fkEzHUbHVeEDS:CreateSlider({
Name = 'Range', Function = function()
end

, MaximumValue = (2+8),
DefaultValue = (4+6) })
end)
task.spawn(function()
	local airtimeStart = tick()
	local _VADxMGzIIrIFcXnHjwGdDpcswhzDzlrcDqkzGcQkqBGdIJxA = waveStrength:CreateToggle({
	Name = 'AnticheatSpoofer', Function = function()
		repeat task.wait()
		if IsAlive(LocalPlayer) == true  then
			if isOnGround(LocalPlayer) == true  then

				airtimeStart = tick()
			end
			if (tick() - airtimeStart) >= (_kwgvoVEIBbLrBLnUpkUMxWMjuS.MAX_CONTINUOUS_FLY_TIME + 0.1) and (tick() - _jLImoAOtoUPPAHNwiZqbkfdyfszjOHYHMdK) > 3  then
				local _JJqIWkotFWNEB = 0
				local dropdownFrame = RaycastParams.new()
				dropdownFrame.FilterDescendantsInstances = {LocalPlayer.Character}
				dropdownFrame.FilterType = Enum.RaycastFilterType.Exclude
				local hoverLabel = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, Vector3.new(0, -(2721+2279), 0), dropdownFrame)
				if hoverLabel and hoverLabel.Instance and hoverLabel.Instance.CanCollide == true and IsAlive(LocalPlayer) == true  then
					local _TdIloqeMyVXDhcSTiXflICddnVSkkeLYaHJU = {LocalPlayer.Character.PrimaryPart.CFrame:GetComponents()} _TdIloqeMyVXDhcSTiXflICddnVSkkeLYaHJU[2] = (hoverLabel.Position.Y + LocalPlayer.Character.Humanoid.HipHeight)
					_JJqIWkotFWNEB = LocalPlayer.Character.PrimaryPart.Position.Y LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(unpack(_TdIloqeMyVXDhcSTiXflICddnVSkkeLYaHJU))
					task.spawn(function()
						task.wait(0.3)
						if IsAlive(LocalPlayer) == true  then

							_TdIloqeMyVXDhcSTiXflICddnVSkkeLYaHJU = {LocalPlayer.Character.PrimaryPart.CFrame:GetComponents()} _TdIloqeMyVXDhcSTiXflICddnVSkkeLYaHJU[2] = _JJqIWkotFWNEB
							LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(unpack(_TdIloqeMyVXDhcSTiXflICddnVSkkeLYaHJU))
						end

					end)
				end

			end

		end

	until  Config.AnticheatSpoofer.Value == false or shared[UninjectedKey] == true
end

, HoverText = 'Spoofs The Anticheat, Reducing Banwave Odds (Beta) (Works Better With NoFallDamage)' })
end)
task.spawn(function()
	if IsGhostMode == false  then
		local _yBFyrxlIKRvjWjsxbzATpDeVSlZYYYFolUeaOucAUYzkVydy
		task.spawn(function()
			repeat task.wait()
			if getAliveCount() ~= 0  then

				pcall(function() _yBFyrxlIKRvjWjsxbzATpDeVSlZYYYFolUeaOucAUYzkVydy = LocalPlayer.PlayerGui.KillFeedGui
				end)
			end

		until  _yBFyrxlIKRvjWjsxbzATpDeVSlZYYYFolUeaOucAUYzkVydy
		task.wait(0.3) _yBFyrxlIKRvjWjsxbzATpDeVSlZYYYFolUeaOucAUYzkVydy.KillFeedContainer.Visible = Config.HideKillFeedGui.Value
	end)
	local _kvVWyCJmsZMsSiUQfIfcCkJQadktGOJthkSCNZrGVcux = waveStrength:CreateToggle({
	Name = 'HideKillFeedGui', Function = function()
		if Config.HideKillFeedGui.Value == true and _yBFyrxlIKRvjWjsxbzATpDeVSlZYYYFolUeaOucAUYzkVydy  then

			_yBFyrxlIKRvjWjsxbzATpDeVSlZYYYFolUeaOucAUYzkVydy.KillFeedContainer.Visible = false
		end
		if Config.HideKillFeedGui.Value == false and _yBFyrxlIKRvjWjsxbzATpDeVSlZYYYFolUeaOucAUYzkVydy  then

			_yBFyrxlIKRvjWjsxbzATpDeVSlZYYYFolUeaOucAUYzkVydy.KillFeedContainer.Visible = true
		end

	end

	, HoverText = 'Hides The Kill Feed ' }) UnInjectEvent.Event:Connect(function()
		_yBFyrxlIKRvjWjsxbzATpDeVSlZYYYFolUeaOucAUYzkVydy.KillFeedContainer.Visible = true
	end)
end

end)
task.spawn(function()
	local _LQWEOTaZWTQMQdOkirEaVtjLVvkh = _tysFeUfUlNxXPJRyewmNNHFBKyFTgqcINaCPzMVqx()
	local _TctswhzQQMWQpdCMjFmUqjUlQ = waveStrength:CreateToggle({
	Name = 'AutoJoinQueue', Function = function()
	end

	, HoverText = 'Joins The Queue Automatically For You At The End Of The Game ' })
	task.spawn(function()
		if _LQWEOTaZWTQMQdOkirEaVtjLVvkh:find('Skywars')  then
			repeat task.wait()

		until  Config.AutoJoinQueue.Value == false or shared[UninjectedKey] == true or IsAlive(LocalPlayer) == false
		if Config.AutoJoinQueue.Value == true and shared[UninjectedKey] == false  then

			labelFrame.JoinQueueRemote:FireServer({queueType = _tysFeUfUlNxXPJRyewmNNHFBKyFTgqcINaCPzMVqx()})
		end

	end

end)
task.spawn(function()
	repeat task.wait()

until  Config.AutoJoinQueue.Value == false or shared[UninjectedKey] == true or getAliveCount() == 2
if Config.AutoJoinQueue.Value == true and shared[UninjectedKey] == false  then

	print('Joining '.. _tysFeUfUlNxXPJRyewmNNHFBKyFTgqcINaCPzMVqx()) labelFrame.JoinQueueRemote:FireServer({queueType = _tysFeUfUlNxXPJRyewmNNHFBKyFTgqcINaCPzMVqx()})
end

end)
end)
task.spawn(function()
	if IsGhostMode == false  then
		local _IdwrrLdOkvGFbaCUQIIFaHKkSBGNbIpdDCqobPeH = {
		Message1 = '3+ Years Now And The Anticheat Is Still The Same | AlSploit On Top', Message2 = 'Clowns Are The Only Ones We Eliminate | AlSploit On Top',
		Message3 = 'InstantWin Is So Fun | AlSploit On Top', Message4 = 'Best Anticheat Ever | AlSploit On Top',
		Message5 = 'Get Back To Scripting, Skids | AlSploit On Top', Message6 = 'Voidware Has The Best Logger!!! | AlSploit On Top' }
		local _NUjdmClbMRtDmoltZuIyCGIfrkwRSDAWwwBVrRGVDIjypFqBY = waveStrength:CreateToggle({
		Name = 'ChatSpammer', Function = function()
			repeat task.wait()
			for i, v in next, _IdwrrLdOkvGFbaCUQIIFaHKkSBGNbIpdDCqobPeH  do
				if Config.ChatSpammer.Value == true  then

					TextChatService.ChatInputBarConfiguration.TargetTextChannel:SendAsync(v)
					task.wait((431+69) / Config.ChatSpammer.Speed.Value)
				end

			end

		until  Config.ChatSpammer.Value == false or shared[UninjectedKey] == true
	end

	, HoverText = 'Spams The Chat ' }) _NUjdmClbMRtDmoltZuIyCGIfrkwRSDAWwwBVrRGVDIjypFqBY:CreateSlider({
	Name = 'Speed', Function = function()
	end

	, MaximumValue = (58+42),
	DefaultValue = (39+11) })
end

end)
task.spawn(function()
	local _FrGlbkaERqz = waveStrength:CreateToggle({
	Name = 'EntityNotifier', Function = function()
		if Config.EntityNotifier.Value == true  then

			Connections['EntityNotifierConnection'] = CollectionService:GetInstanceAddedSignal('GuardianOfDream'):Connect(function() CreateNotification(3, 'A GuardianOfDream Has Spawned')
			end) Connections['EntityNotifierConnection'] = CollectionService:GetInstanceAddedSignal('DiamondGuardian'):Connect(function() CreateNotification(3, 'A DiamondGuardian Has Spawned')
			end) Connections['EntityNotifierConnection2'] = CollectionService:GetInstanceAddedSignal('GolemBoss'):Connect(function() CreateNotification(3, 'A GolemBoss Has Spawned')
			end) Connections['EntityNotifierConnection3'] = CollectionService:GetInstanceAddedSignal('skeleton'):Connect(function() CreateNotification(3, 'A Skeleton Has Spawned')
			end) Connections['EntityNotifierConnection4'] = CollectionService:GetInstanceAddedSignal('Drone'):Connect(function() CreateNotification(3, 'A Drone Has Spawned')
			end)
		end
		if Config.EntityNotifier.Value == false and Connections['EntityNotifierConnection']  then
			for i, v in next, Connections  do
				if string.find(v, 'EntityNotifierConnection')  then

					v:Disconnect()
				end

			end

		end

	end

	, HoverText = 'Notifies You When An Entity Is Added ' })
end)
task.spawn(function()
	local _khZWQuEsLfzTLEIqfhYpDdnOGuOBjrpdFVdPapZDPagLpqb = toggleFunc:getState().Settings.global_chat_system_messages
	local _FZFFgSyDGGiebEXVWjiVKURYOtpydIdkWKKp = toggleFunc:getState().Settings.profile_visilility
	local _LtvQrOEoCTUol = toggleFunc:getState().Settings.friendSpectating
	local _pLFmgEaJxGtzzALLrtifzhZaXIBpGtIgiIQOyhMgQYCzp = toggleFunc:getState().Settings.streamer_mode
	local _lfApLiCikoZvsFrFWOsvnmZwjJvXmSLhsOAenLiM = waveStrength:CreateToggle({
	Name = 'Anonymous', Function = function()
		if Config.Anonymous.Value == true  then

			_khZWQuEsLfzTLEIqfhYpDdnOGuOBjrpdFVdPapZDPagLpqb = toggleFunc:getState().Settings.global_chat_system_messages _FZFFgSyDGGiebEXVWjiVKURYOtpydIdkWKKp = toggleFunc:getState().Settings.profile_visilility
			_LtvQrOEoCTUol = toggleFunc:getState().Settings.friendSpectating _pLFmgEaJxGtzzALLrtifzhZaXIBpGtIgiIQOyhMgQYCzp = toggleFunc:getState().Settings.streamer_mode toggleFunc:getState().Settings.global_chat_system_messages = false toggleFunc:getState().Settings.profile_visilility = 'private' toggleFunc:getState().Settings.friendSpectating = false toggleFunc:getState().Settings.streamer_mode = true
		end
		if Config.Anonymous.Value == false  then

			toggleFunc:getState().Settings.global_chat_system_messages = _khZWQuEsLfzTLEIqfhYpDdnOGuOBjrpdFVdPapZDPagLpqb toggleFunc:getState().Settings.profile_visilility = _FZFFgSyDGGiebEXVWjiVKURYOtpydIdkWKKp toggleFunc:getState().Settings.friendSpectating = _LtvQrOEoCTUol toggleFunc:getState().Settings.streamer_mode = _pLFmgEaJxGtzzALLrtifzhZaXIBpGtIgiIQOyhMgQYCzp
		end

	end

	, HoverText = 'Makes You Anonymous To Players ' }) UnInjectEvent.Event:Connect(function() toggleFunc:getState().Settings.global_chat_system_messages = _khZWQuEsLfzTLEIqfhYpDdnOGuOBjrpdFVdPapZDPagLpqb toggleFunc:getState().Settings.friendSpectating = _LtvQrOEoCTUol toggleFunc:getState().Settings.streamer_mode = _pLFmgEaJxGtzzALLrtifzhZaXIBpGtIgiIQOyhMgQYCzp
	end)
end)
task.spawn(function()
	local _zAHhBNOrUfWUgvkQgPqDI = {}
	local _feOqJIHZmvQmXhgJCGGIdiDoUqtuioObAWvo = waveStrength:CreateToggle({
	Name = 'AutoReport', Function = function()
		repeat task.wait(2)
		task.spawn(function()
			for i, v in next, Players:GetPlayers()  do
				if v ~= LocalPlayer and v:GetAttribute('PlayerConnected') and not _zAHhBNOrUfWUgvkQgPqDI[v]  then

					labelFrame.ReportPlayerRemote:FireServer(v.UserId) _zAHhBNOrUfWUgvkQgPqDI[v] = v.UserId
				end

			end

		end)

	until  Config.AutoReport.Value == false or shared[UninjectedKey] == true
end

, HoverText = 'Reports Players Automatically ' })
end)
task.spawn(function()
	local function _rcTtQZZzBKALHhzJpMSpSDzPvPEUYKggZXyYaZ()
		local _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps = nil
		local _gPtDtmRkJJFWypBOJAwvacReCyDH = nil
		local _TQQaCgLpddgmhdrYPBd = nil
		for i, v in next, ReplicatedStorage:FindFirstChild('Inventories'):FindFirstChild(LocalPlayer.Name):GetChildren()  do
			if v.Name:find('helmet')  then

				_gPtDtmRkJJFWypBOJAwvacReCyDH = v
			end
			if v.Name:find('chestplate')  then

				_XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps = v
			end
			if v.Name:find('boots')  then

				_TQQaCgLpddgmhdrYPBd = v
			end

		end
		return _gPtDtmRkJJFWypBOJAwvacReCyDH, _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps, _TQQaCgLpddgmhdrYPBd
	end
	local function _ijdpRGqAqAjRrxumtwmctpdRsOBarSjsEqUSfUkBRT(_gPtDtmRkJJFWypBOJAwvacReCyDH, _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps, _TQQaCgLpddgmhdrYPBd) LocalPlayer.Character:FindFirstChild('ArmorInvItem_0').Value = nil LocalPlayer.Character:FindFirstChild('ArmorInvItem_1').Value = nil LocalPlayer.Character:FindFirstChild('ArmorInvItem_2').Value = nil
		for i = 0, 2  do

			labelFrame.SetArmorInvItemRemote:InvokeServer({ item = false,
			armorSlot = 0 })
		end

	end
	local function _PgfkdbWFtj(_gPtDtmRkJJFWypBOJAwvacReCyDH, _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps, _TQQaCgLpddgmhdrYPBd) LocalPlayer.Character:FindFirstChild('ArmorInvItem_0').Value = _gPtDtmRkJJFWypBOJAwvacReCyDH LocalPlayer.Character:FindFirstChild('ArmorInvItem_1').Value = _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps LocalPlayer.Character:FindFirstChild('ArmorInvItem_2').Value = _TQQaCgLpddgmhdrYPBd labelFrame.SetArmorInvItemRemote:InvokeServer({
		item = _gPtDtmRkJJFWypBOJAwvacReCyDH, armorSlot = 0 }) labelFrame.SetArmorInvItemRemote:InvokeServer({
		item = _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps, armorSlot = 1 }) labelFrame.SetArmorInvItemRemote:InvokeServer({
		item = _TQQaCgLpddgmhdrYPBd, armorSlot = 2 })
	end
	local _ksaeFELvsnl = waveStrength:CreateToggle({
	Name = 'AutoArmor', Function = function()
		repeat task.wait(0.5)
		if IsAlive(LocalPlayer) == true  then
			local _gPtDtmRkJJFWypBOJAwvacReCyDH, _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps, ArmorBoots = _rcTtQZZzBKALHhzJpMSpSDzPvPEUYKggZXyYaZ(LocalPlayer)
			if _gPtDtmRkJJFWypBOJAwvacReCyDH and _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps and _TQQaCgLpddgmhdrYPBd  then
				local colorVal = _gQWdlFHzWMNX(Config.AutoArmor.Range.Value, false)
				if colorVal  then

					_PgfkdbWFtj(_gPtDtmRkJJFWypBOJAwvacReCyDH, _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps, _TQQaCgLpddgmhdrYPBd)

				else
					_ijdpRGqAqAjRrxumtwmctpdRsOBarSjsEqUSfUkBRT(_gPtDtmRkJJFWypBOJAwvacReCyDH, _XCueHddGsTPutwZxFTobGkrPinbhXUXXWlNKps, _TQQaCgLpddgmhdrYPBd)
				end

			end

		end

	until  shared[UninjectedKey] == true or Config.AutoArmor.Value == false
end

, HoverText = 'Auto Puts Armor When Close To Enemies, And Removes When Far ' }) _ksaeFELvsnl:CreateSlider({
Name = 'Range', Function = function()
end

, MaximumValue = (3+27),
DefaultValue = (3+27) })
end)
task.spawn(function()
	if buttonFrame.SprintController  then
		local _EErYNWFyncocipfyORSjoxNTJINZfgRbfbRINMjCWqjmly = buttonFrame.SprintController.stopSprinting
		local _FHKsadOghnbXYUrcusaBxRUJfgQDBwccTRvPjsr = waveStrength:CreateToggle({
		Name = 'AutoSprint', Function = function()
			if Config.AutoSprint.Value == true  then

				_EErYNWFyncocipfyORSjoxNTJINZfgRbfbRINMjCWqjmly = buttonFrame.SprintController.stopSprinting buttonFrame.SprintController.stopSprinting = function(...)
					local toggleCallback = _EErYNWFyncocipfyORSjoxNTJINZfgRbfbRINMjCWqjmly(...) buttonFrame.SprintController:startSprinting()
					return toggleCallback
				end
				task.spawn(function() buttonFrame.SprintController:startSprinting()
				end)
			end
			if Config.AutoSprint.Value == false  then

				buttonFrame.SprintController.stopSprinting = _EErYNWFyncocipfyORSjoxNTJINZfgRbfbRINMjCWqjmly buttonFrame.SprintController:stopSprinting()
			end

		end

		, HoverText = 'Makes You Sprint Automatically ' }) UnInjectEvent.Event:Connect(function()
			buttonFrame.SprintController.stopSprinting = _EErYNWFyncocipfyORSjoxNTJINZfgRbfbRINMjCWqjmly buttonFrame.SprintController:stopSprinting()
		end)
	end
	if not buttonFrame.SprintController  then
		local _FHKsadOghnbXYUrcusaBxRUJfgQDBwccTRvPjsr = waveStrength:CreateToggle({
		Name = 'AutoSprint', Function = function()
			repeat task.wait() LocalPlayer:SetAttribute('Sprinting', true)
			if IsAlive(LocalPlayer) == true  then

				LocalPlayer.Character.Humanoid.WalkSpeed = (9+11)
				if Config.Fov.Value == false  then
					Camera.FieldOfView = (12+65)
				end

			end

		until  Config.AutoSprint.Value == false or shared[UninjectedKey] == true
	end

	, HoverText = 'Makes You Sprint Automatically ' })
end

end)
task.spawn(function()
	if IsGhostMode == false  then
		local _NCNTNSoTLjsYCxBRwJxhvwG = { "Voidware ain't making a return with this one. L %s | AlSploit on top", 'I hack for fun. Too bad your fun is ruined. L %s | AlSploit on top', 'I ruined a good day for a good reason. L %s | AlSploit on top', 'Rats. Imagine dying in a block game. L %s | AlSploit on top', 'Clowns are the only ones we kill. L %s | AlSploit on top' }
		local function _wmlQniPLIDEwJzxcPzokyrddcbaYTgZvIh(sliderVal)
			local _MqxcmzHeRNcFEcCoGsdJXFiJqupbtuxWmreqdWFoj = string.format(_NCNTNSoTLjsYCxBRwJxhvwG[math.random(1, #_NCNTNSoTLjsYCxBRwJxhvwG)], sliderVal.DisplayName) TextChatService.ChatInputBarConfiguration.TargetTextChannel:SendAsync(_MqxcmzHeRNcFEcCoGsdJXFiJqupbtuxWmreqdWFoj)
		end
		local _aZdnbSkVqygtEmAJBoqgnAPWZTYjPHBONqKxEfLbSQybtSDe = waveStrength:CreateToggle({
		Name = 'AutoToxic', Function = function()
		end

		, HoverText = 'Makes You Toxic ' })
		repeat task.wait()

	until  shared[UninjectedKey] == true or getAliveCount() ~= 0
	task.spawn(function()
		for i, v in next, Players:GetPlayers()  do
			task.spawn(function()
				if IsAlive(v) == true  then
					if v.Team ~= LocalPlayer.Team and v ~= LocalPlayer  then
						repeat task.wait()

					until  Config.AutoToxic.Value == false or shared[UninjectedKey] == true or getAliveCount() ~= 0
					if Config.AutoToxic.Value == true and shared[UninjectedKey] == false  then

						_wmlQniPLIDEwJzxcPzokyrddcbaYTgZvIh(v)
					end

				end

			end

		end)
		task.spawn(function() Connections['AutoToxicConnection'] = v.CharacterAdded:Connect(function(char)
			task.wait(0.3)
			local v = game.Players:FindFirstChild(char.Name) or v
			if IsAlive(v) == true  then
				if v.Team ~= LocalPlayer.Team and v ~= LocalPlayer  then
					repeat task.wait()

				until  Config.AutoToxic.Value == false or shared[UninjectedKey] == true or getAliveCount() ~= 0
				if Config.AutoToxic.Value == true and shared[UninjectedKey] == false  then

					_wmlQniPLIDEwJzxcPzokyrddcbaYTgZvIh(v)
				end

			end

		end

	end)
end)
end

end)
end

end)
task.spawn(function()
	local tweenObj = {
	JadeHammer = { [1] = { ['shopItem'] = { ['amount'] = 1, ['lockAfterPurchase'] = true, ['itemType'] = 'jade_hammer', ['category'] = 'Combat', ['price'] = (17+23), ['requiresKit'] = { [1] = 'jade' }, ['spawnWithItems'] = { [1] = 'jade_hammer' }, ['currency'] = 'iron' }, ['shopId'] = "" } }, GompyVacuum = { [1] = { ['shopItem'] = { ['amount'] = 1, ['lockAfterPurchase'] = true, ['itemType'] = 'vacuum', ['category'] = 'Combat', ['price'] = (10+40), ['requiresKit'] = { [1] = 'ghost_catcher' }, ['spawnWithItems'] = { [1] = 'vacuum' }, ['currency'] = 'iron' }, ['shopId'] = "" } },
	Guitar = { [1] = { ['shopItem'] = { ['amount'] = 1, ['lockAfterPurchase'] = true, ['itemType'] = 'guitar', ['category'] = 'Combat', ['price'] = (10+6), ['requiresKit'] = { [1] = 'melody' }, ['spawnWithItems'] = { [1] = 'guitar' }, ['currency'] = 'iron' }, ['shopId'] = "" } }, Lasso = { [1] = { ['shopItem'] = { ['amount'] = 1, ['lockAfterPurchase'] = true, ['itemType'] = 'lasso', ['category'] = 'Combat', ['price'] = (26+4), ['requiresKit'] = { [1] = 'cowgirl' }, ['spawnWithItems'] = { [1] = 'lasso' }, ['currency'] = 'iron' }, ['shopId'] = "" } },
	Arrow = { [1] = { ['shopItem'] = { ['currency'] = 'iron', ['itemType'] = 'arrow', ['amount'] = 8, ['price'] = (6+10), ['category'] = 'Combat' }, ['shopId'] = "" } }, Wool = { [1] = { ['shopItem'] = { ['currency'] = 'iron', ['itemType'] = 'wool_white', ['amount'] = (8+8), ['price'] = 8, ['category'] = 'Blocks' }, ['shopId'] = "" } },
	Bow = { [1] = { ['shopItem'] = { ['ignoredByKit'] = { [1] = 'flower_bee' }, ['itemType'] = 'wood_bow', ['price'] = (21+3), ['superiorItems'] = { [1] = 'wood_crossbow', [2] = 'tactical_crossbow' }, ['currency'] = 'iron', ['category'] = 'Combat', ['lockAfterPurchase'] = true, ['spawnWithItems'] = { [1] = 'wood_bow' }, ['amount'] = 1 }, ['shopId'] = "" } }, EmeraldArmor = { [1] = { ['shopItem'] = { ['lockAfterPurchase'] = true, ['itemType'] = 'emerald_chestplate', ['price'] = (28+12), ['customDisplayName'] = 'Emerald Armor', ['currency'] = 'emerald', ['category'] = 'Combat', ['nextTier'] = "", ['ignoredByKit'] = { [1] = 'bigman' }, ['spawnWithItems'] = { [1] = 'emerald_helmet', [2] = 'emerald_chestplate', [3] = 'emerald_boots' }, ['amount'] = 1 }, ['shopId'] = "" } },
	DiamondArmor ={ [1] = { ['shopItem'] = { ['lockAfterPurchase'] = true, ['itemType'] = 'Diamond_chestplate', ['price'] = 8, ['customDisplayName'] = 'Diamond Armor', ['currency'] = 'emerald', ['category'] = 'Combat', ['nextTier'] = 'diamond_chestplate', ['ignoredByKit'] = { [1] = 'bigman' }, ['spawnWithItems'] = { [1] = 'diamond_helmet', [2] = 'diamond_chestplate', [3] = 'diamond_boots' }, ['amount'] = 1 }, ['shopId'] = "" } }, IronArmor ={ [1] = { ['shopItem'] = { ['lockAfterPurchase'] = true, ['itemType'] = 'iron_chestplate', ['price'] = (98+22), ['customDisplayName'] = 'Iron Armor', ['currency'] = 'iron', ['category'] = 'Combat', ['nextTier'] = 'diamond_chestplate', ['ignoredByKit'] = { [1] = 'bigman' }, ['spawnWithItems'] = { [1] = 'iron_helmet', [2] = 'iron_chestplate', [3] = 'iron_boots' }, ['amount'] = 1 }, ['shopId'] = "" } },
	LeatherArmor ={ [1] = { ['shopItem'] = { ['lockAfterPurchase'] = true, ['itemType'] = 'leather_chestplate', ['price'] = (20+30), ['customDisplayName'] = 'Leather Armor', ['currency'] = 'iron', ['category'] = 'Combat', ['nextTier'] = 'iron_chestplate', ['ignoredByKit'] = { [1] = 'bigman' }, ['spawnWithItems'] = { [1] = 'leather_helmet', [2] = 'leather_chestplate', [3] = 'leather_boots' }, ['amount'] = 1 }, ['shopId'] = "" } }, EmeraldSword = { [1] = { ['shopItem'] = { ['disabledInQueue'] = { [1] = 'tnt_wars' }, ['itemType'] = 'emerald_sword', ['price'] = (2+18), ['superiorItems'] = { [1] = "" }, ['currency'] = 'iron', ['amount'] = 1, ['ignoredByKit'] = { [1] = 'barbarian', [2] = 'dasher', [3] = 'frost_hammer_kit' }, ['category'] = 'Combat', ['lockAfterPurchase'] = true }, ['shopId'] = "" } },
	VoidSword = { [1] = { ['shopItem'] = { ['currency'] = 'void_crystal', ['itemType'] = 'void_sword', ['amount'] = 1, ['price'] = (3+7), ['category'] = 'Void', ['ignoredByKit'] = { [1] = 'barbarian', [2] = 'dasher' }, ['lockAfterPurchase'] = true }, ['shopId'] = "" } }, DiamondSword = { [1] = { ['shopItem'] = { ['disabledInQueue'] = { [1] = 'tnt_wars' }, ['itemType'] = 'diamond_sword', ['price'] = 4, ['superiorItems'] = { [1] = 'emerald_sword' }, ['currency'] = 'emerald', ['amount'] = 1, ['ignoredByKit'] = { [1] = 'barbarian', [2] = 'dasher', [3] = 'frost_hammer_kit' }, ['category'] = 'Combat', ['lockAfterPurchase'] = true }, ['shopId'] = "" } },
	IronSword = { [1] = { ['shopItem'] = { ['disabledInQueue'] = { [1] = 'tnt_wars' }, ['itemType'] = 'iron_sword', ['price'] = (46+24), ['superiorItems'] = { [1] = 'diamond_sword' }, ['currency'] = 'iron', ['amount'] = 1, ['ignoredByKit'] = { [1] = 'barbarian', [2] = 'dasher', [3] = 'frost_hammer_kit' }, ['category'] = 'Combat', ['lockAfterPurchase'] = true }, ['shopId'] = "" } }, StoneSword = { [1] = { ['shopItem'] = { ['disabledInQueue'] = { [1] = 'tnt_wars' }, ['itemType'] = 'stone_sword', ['price'] = (14+6), ['superiorItems'] = { [1] = 'iron_sword' }, ['currency'] = 'iron', ['amount'] = 1, ['ignoredByKit'] = { [1] = 'barbarian', [2] = 'dasher', [3] = 'frost_hammer_kit' }, ['category'] = 'Combat', ['lockAfterPurchase'] = true }, ['shopId'] = "" } } }
	local _fvhxkIfIQDlYnjeEzMOtQdwqifCfJbtClUKEqOBRmTrGvZyM = waveStrength:CreateToggle({
	Name = 'AutoBuy', Function = function()
		repeat task.wait(0.3)
		if IsAlive(LocalPlayer)  then
			local _FFZHjxvHuKWsCsGAAsUFxFhiWvZkRTWdUedOmzVVr = _FpnXBPTHDCzVMOeOfymzJIWJobQwjfQOqvUAdAXXyrYLN(IsGhostMode == true and (Config.AutoBuy.Range.Value / 3) or Config.AutoBuy.Range.Value)
			if _FFZHjxvHuKWsCsGAAsUFxFhiWvZkRTWdUedOmzVVr  then
				local titleText = GetInventory(LocalPlayer)
				for i, v in next, tweenObj  do

					v[1].shopId = _FFZHjxvHuKWsCsGAAsUFxFhiWvZkRTWdUedOmzVVr.Name
				end
				task.spawn(function()
					if not HasItem('lasso') and Config.ProjectileAura.Value == true  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.Lasso, titleText)
					end
					if not HasItem('jade_hammer') and Config.AutoKit.Value == true  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.JadeHammer, titleText)
					end
					if not HasItem('vacuum') and Config.ProjectileAura.Value == true  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.GompyVacuum, titleText)
					end
					if not HasItem('guitar') and Config.AutoKit.Value == true  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.Guitar, titleText)
					end

				end)
				task.spawn(function()
					if HasItem('diamond_sword')  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.EmeraldSword, titleText)
					end
					if HasItem('iron_sword') or HasItem('stone_sword') or HasItem('wood_sword')  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.DiamondSword, titleText)
					end
					if HasItem('stone_sword') and HasItem('iron_chestplate')  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.IronSword, titleText)
					end
					if HasItem('wood_sword')  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.StoneSword, titleText)
					end

					_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.VoidSword, titleText)
				end)
				task.spawn(function()
					if HasItem('diamond_chestplate')  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.EmeraldArmor, titleText)
					end
					if HasItem('iron_chestplate')  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.DiamondArmor, titleText)
					end
					if HasItem('stone_sword') and not HasItem('iron_chestplate') and not HasItem('diamond_chestplate') and not HasItem('emerald_chestplate')  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.LeatherArmor, titleText)
					end
					if HasItem('leather_chestplate')  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.IronArmor, titleText)
					end

				end)
				task.spawn(function()
					if HasItem('iron_chestplate') and HasItem('iron_sword') and not HasItem('wood_bow') and Config.ProjectileAura.Value == true  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.Bow, titleText)
					end

				end)
				task.spawn(function()
					if HasItem('iron_chestplate') and HasItem('iron_sword') and HasItem('wood_bow') and Config.ProjectileAura.Value == true  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.Arrow, titleText)
					end

				end)
				task.spawn(function()
					if HasItem('iron_chestplate') and HasItem('iron_sword') and HasItem('wood_bow') and HasItem('arrow') and Config.Scaffold.Value == true  then

						_sdGXYaacbpSVfdywXYqtxUTpfQqKsTzemYCScWvCw(tweenObj.Wool, titleText)
					end

				end)
			end

		end

	until  shared[UninjectedKey] == true or Config.AutoBuy.Value == false
end

, HoverText = 'Autobuys Items For You ' }) _fvhxkIfIQDlYnjeEzMOtQdwqifCfJbtClUKEqOBRmTrGvZyM:CreateSlider({
Name = 'Range', Function = function()
end

, MaximumValue = (10+20),
DefaultValue = (8+22) })
end)
task.spawn(function()
	local _CHygmrejGJqxQcdwgWtCqtDwbXKtLPGZd = waveStrength:CreateToggle({
	Name = 'AntiStaff', Function = function()
	end

	, HoverText = 'Tells You When A Staff Joins ' })
	task.spawn(function() Connections['AntiStaffConnection'] = Players.PlayerAdded:Connect(function(sliderVal)
		if shared[UninjectedKey] == false and Config.AntiStaff.Value == true and sliderVal:IsInGroup(5774246) and sliderVal:GetRankInGroup(5774246) > 1  then
			if Config.AntiStaff.UnInject.Value == true  then

				UnInjectEvent:Fire()
			end
			if Config.AntiStaff.Kick.Value == true  then

				LocalPlayer:Kick(sliderVal.Name .. ', A Staff Has Joined Your Game!')
			end

			CreateNotification((39+21), sliderVal.Name .. ', A Staff Has Joined Your Game!')
		end

	end)
end)
task.spawn(function()
	task.wait(2)
	for i, v in next, Players:GetPlayers()  do
		if shared[UninjectedKey] == false and Config.AntiStaff.Value == true and v:IsInGroup(5774246) and v:GetRankInGroup(5774246) > 1  then
			if Config.AntiStaff.UnInject.Value == true  then

				UnInjectEvent:Fire()
			end
			if Config.AntiStaff.Kick.Value == true  then

				LocalPlayer:Kick(v.Name .. ', A Staff Has Joined Your Game!')
			end

			CreateNotification((37+23), v.Name .. ', A Staff Has Joined Your Game!')
		end

	end

end) _CHygmrejGJqxQcdwgWtCqtDwbXKtLPGZd:CreateToggle({ Name = 'UnInject',
Function = function()
end

, DefaultValue = true }) _CHygmrejGJqxQcdwgWtCqtDwbXKtLPGZd:CreateToggle({
Name = 'Kick', Function = function()
end

, DefaultValue = false })
end)
task.spawn(function()
	local _GgXNweGiGUJCjezSOhlnsEBlbqVh = waveStrength:CreateToggle({
	Name = 'AntiAfk', Function = function()
		repeat labelFrame.AfkInfoRemote:FireServer({afk = false})
		task.wait((41+19))

	until  shared[UninjectedKey] == true or Config.AntiAfk.Value == false
end

, HoverText = 'Prevents From Making You Afk ' })
end)
task.spawn(function()
	local _LFuzWIpCUfmrRzK = waveStrength:CreateToggle({
	Name = 'AutoKit', Function = function()
		repeat task.wait()
		if IsAlive(LocalPlayer) and getAliveCount() ~= 0  then
			task.spawn(function()
				if Config.AutoKit.Kits.Fortuna  then
					if _GpUaqkLSnnGNuLHPdboqY == 'card'  then
						task.wait(0.5)
						local colorVal = _gQWdlFHzWMNX((4+26))
						if colorVal  then

							labelFrame.AttemptCardThrowRemote:FireServer({targetEntityInstance = colorVal})
						end

					end

				end

			end)
			task.spawn(function()
				if Config.AutoKit.Kits.Warden.Value == true  then
					task.wait(0.5)
					if _GpUaqkLSnnGNuLHPdboqY == 'jailor'  then
						for i, v in next, CollectionService:GetTagged('jailor_soul_ProximityPrompt')  do

							labelFrame.CollectCollectableEntityRemote:FireServer({id = v:GetAttribute('Id'),
							collectableName = 'JailorSoul'})
						end

					end

				end

			end)
			task.spawn(function()
				if Config.AutoKit.Kits.Hannah.Value == true  then
					task.wait(0.1)
					if _GpUaqkLSnnGNuLHPdboqY == 'hannah'  then
						for i, v in next, (CollectionService:GetTagged('HannahExecuteInteraction'))  do

							labelFrame.HannahPromptTriggerRemote:CallServer({user = LocalPlayer,
							victimEntity = v})
						end

					end

				end

			end)
			task.spawn(function()
				if Config.AutoKit.Kits.Gompy.Value == true  then
					task.wait(0.25)
					if _GpUaqkLSnnGNuLHPdboqY == 'ghost_catcher'  then
						local _zXsCpQLpNegIlNxfXyM = _wZgFmQlhkGVdjOiDAIAxoVpdHhn((28+2))
						if _zXsCpQLpNegIlNxfXyM  then

							labelFrame.CollectCollectableEntityRemote:FireServer({id = _zXsCpQLpNegIlNxfXyM})
						end

					end

				end

			end)
			task.spawn(function()
				if Config.AutoKit.Kits.Trinity.Value == true  then
					task.wait(0.5)
					if _GpUaqkLSnnGNuLHPdboqY == 'angel' and toggleFunc:getState().Kit.angelProgress >= 1 and LocalPlayer.Character:GetAttribute('AngelType') == nil  then

						labelFrame.TrinitySetAngelTypeRemote:FireServer({angel = 'Void'})
					end

				end

			end)
			task.spawn(function()
				if Config.AutoKit.Kits.Miner.Value == true  then
					task.wait(0.25)
					if _GpUaqkLSnnGNuLHPdboqY == 'miner'  then
						for i, v in next, CollectionService:GetTagged('petrified-player')  do

							labelFrame.DestroyPetrifiedPlayerRemote:FireServer({petrifyId = v:GetAttribute('PetrifyId')})
						end

					end

				end

			end)
		end

	until  shared[UninjectedKey] == true or Config.AutoKit.Value == false
end

, HoverText = 'Automatically Uses The Ability Of Kits ' })
local _HJDmeNOQtnVFXzoi = _LFuzWIpCUfmrRzK:CreateDropdown({
Name = 'Kits', HoverText = 'Pick The Kits That Will Be Used Automatically' }) _HJDmeNOQtnVFXzoi:CreateToggle({
Name = 'Fortuna', Function = function()
end

, DefaultValue = true }) _HJDmeNOQtnVFXzoi:CreateToggle({
Name = 'Warden', Function = function()
end

, DefaultValue = true }) _HJDmeNOQtnVFXzoi:CreateToggle({
Name = 'Hannah', Function = function()
end

, DefaultValue = true }) _HJDmeNOQtnVFXzoi:CreateToggle({
Name = 'Gompy', Function = function()
end

, DefaultValue = true }) _HJDmeNOQtnVFXzoi:CreateToggle({
Name = 'Trinity', Function = function()
end

, DefaultValue = true }) _HJDmeNOQtnVFXzoi:CreateToggle({
Name = 'Miner', Function = function()
end

, DefaultValue = true })
end)
task.spawn(function()
	if buttonFrame.FovController  then
		local _goVSRPPMqkfOPHEpzNNfBsWgASaXuRffmLWFWGqGZKPvQIt = buttonFrame.FovController.fov
		local _GyPpgwIqXeEERJKhwGRVIcoYqGestwXDRizsCsxT, _LcAZhwWqljEiKQxgkmeRASAiZRJArBk = buttonFrame.FovController.setFOV, buttonFrame.FovController.getFOV
		local _gjYqyYjJfxQzDkRUGYnEZUMsLPQqA = waveStrength:CreateToggle({
		Name = 'Fov', Function = function()
			if Config.Fov.Value == true  then

				buttonFrame.FovController:setFOV(Config.Fov.Fov.Value) buttonFrame.FovController.setFOV = function(self)
					return _GyPpgwIqXeEERJKhwGRVIcoYqGestwXDRizsCsxT(self, Config.Fov.Fov.Value)
				end

				buttonFrame.FovController.getFOV = function(self)
					return _LcAZhwWqljEiKQxgkmeRASAiZRJArBk(self, Config.Fov.Fov.Value)
				end

			end
			if Config.Fov.Value == false  then

				buttonFrame.FovController.setFOV = _GyPpgwIqXeEERJKhwGRVIcoYqGestwXDRizsCsxT buttonFrame.FovController.getFOV = _LcAZhwWqljEiKQxgkmeRASAiZRJArBk buttonFrame.FovController:setFOV(_goVSRPPMqkfOPHEpzNNfBsWgASaXuRffmLWFWGqGZKPvQIt)
			end

		end

		, HoverText = 'Changes Your Fov ' }) _gjYqyYjJfxQzDkRUGYnEZUMsLPQqA:CreateSlider({
		Name = 'Fov', Function = function()
		end

		, MaximumValue = (47+73),
		DefaultValue = (103+17) }) UnInjectEvent.Event:Connect(function() buttonFrame.FovController.setFOV = _GyPpgwIqXeEERJKhwGRVIcoYqGestwXDRizsCsxT
			buttonFrame.FovController.getFOV = _LcAZhwWqljEiKQxgkmeRASAiZRJArBk
		end)
	end
	if not buttonFrame.FovController  then
		local _goVSRPPMqkfOPHEpzNNfBsWgASaXuRffmLWFWGqGZKPvQIt = Camera.FieldOfView
		local _gjYqyYjJfxQzDkRUGYnEZUMsLPQqA = waveStrength:CreateToggle({
		Name = 'Fov', Function = function()
			repeat task.wait() Camera.FieldOfView = Config.Fov.Fov.Value

		until  shared[UninjectedKey] == true or Config.Fov.Value == false
		Camera.FieldOfView = _goVSRPPMqkfOPHEpzNNfBsWgASaXuRffmLWFWGqGZKPvQIt
	end

	, HoverText = 'Changes Your Fov ' }) _gjYqyYjJfxQzDkRUGYnEZUMsLPQqA:CreateSlider({
	Name = 'Fov', Function = function()
	end

	, MaximumValue = (25+95),
	DefaultValue = (34+66) })
end

end)
task.spawn(function()
	if IsGhostMode == false  then
		repeat task.wait()

	until  IsAlive(LocalPlayer) == true and LocalPlayer:FindFirstChild('PlayerGui')
	local _qHwjKuUtyKjwd = LocalPlayer.PlayerGui:WaitForChild('hotbar', (48+12)):WaitForChild('1', (2+58)):WaitForChild('HotbarHealthbarContainer', (38+22)):WaitForChild('HealthbarProgressWrapper', (49+11)):Clone()
	local _FmcjOlRiBODw = LocalPlayer.PlayerGui:WaitForChild('hotbar', (27+33)):WaitForChild('1', (10+50)):WaitForChild('HotbarHealthbarContainer', (42+18))
	_qHwjKuUtyKjwd.Parent = ReplicatedStorage
	local function _IEDRlxKwWhJkvHuGSdkuSUEKUMq()
		for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('HotbarHealthbarContainer'):FindFirstChild('HealthbarProgressWrapper'):GetDescendants()  do
			if v:IsA('Frame')  then

				v.BackgroundColor3 = Color3.new(1, 1, 1)
				local UICorner = Instance.new('UICorner')
				UICorner.Parent = v
				UICorner.Name = 'UICorner'
				UICorner.CornerRadius = UDim.new(0, (Config.CustomHealthbar.CornerRadius.Value / 5))
				local uiGradient = Instance.new('UIGradient')
				uiGradient.Parent = v
				uiGradient.Name = 'UIGradient'
				uiGradient.Rotation = Config.CustomHealthbar.Rotation.Value
				local colorParts = string.split(Config.CustomHealthbar.Color1.Value, ',')
				local r = colorParts[1]
				local g = colorParts[2]
				local b = colorParts[3]
				local moduleContainer = string.split(Config.CustomHealthbar.Color2.Value, ',')
				local waveSize = moduleContainer[1]
				local waveColor = moduleContainer[2]
				local arrayListFrame = moduleContainer[3]
				uiGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(waveSize, waveColor, arrayListFrame))})
			end

		end
		local UICorner = Instance.new('UICorner')
		UICorner.Parent = _FmcjOlRiBODw
		UICorner.Name = 'UICorner'
		UICorner.CornerRadius = UDim.new(0, (Config.CustomHealthbar.CornerRadius.Value / 5))
		local UIStroke = Instance.new('UIStroke')
		UIStroke.Parent = _FmcjOlRiBODw
		UIStroke.Name = 'UIStroke'
		UIStroke.Thickness = 1.6
		local colorParts = string.split(Config.CustomHealthbar.UIStrokeColor.Value, ',')
		local r = colorParts[1]
		local g = colorParts[2]
		local b = colorParts[3]
		UIStroke.Color = Color3.new(r, g, b)
	end
	local _tLxPjkoltoBESdmWFMJgGaOUFooqmwgmQpmHfnSHdFFXvj = colorTo:CreateToggle({
	Name = 'CustomHealthbar', Function = function()
		if Config.CustomHealthbar.Value == true  then

			_IEDRlxKwWhJkvHuGSdkuSUEKUMq()
		end
		if Config.CustomHealthbar.Value == false  then
			local _KZsapIJCOSSaiPujFmmrMWhvsehOtQnPdTurjPVbDJWlKx = LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('HotbarHealthbarContainer'):FindFirstChild('HealthbarProgressWrapper')
			local _GnjjaFTcJEOLaQUHBoENBjliiHyK = _qHwjKuUtyKjwd:Clone()
			_GnjjaFTcJEOLaQUHBoENBjliiHyK.Parent = LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('HotbarHealthbarContainer')
			if _KZsapIJCOSSaiPujFmmrMWhvsehOtQnPdTurjPVbDJWlKx.Parent:FindFirstChildWhichIsA('UIStroke')  then

				_KZsapIJCOSSaiPujFmmrMWhvsehOtQnPdTurjPVbDJWlKx.Parent:FindFirstChildWhichIsA('UIStroke'):Destroy()
			end

			_KZsapIJCOSSaiPujFmmrMWhvsehOtQnPdTurjPVbDJWlKx:Destroy()
		end

	end

	, HoverText = 'Gives You A Cool Custom Healthtbar ' }) _tLxPjkoltoBESdmWFMJgGaOUFooqmwgmQpmHfnSHdFFXvj:CreateSlider({
	Name = 'UIStrokeThickness', Function = function()
		if Config.CustomHealthbar.Value == true  then
			local UIStroke = LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('HotbarHealthbarContainer'):FindFirstChildWhichIsA('UIStroke')
			if UIStroke  then

				UIStroke.Thickness = Config.CustomHealthbar.UIStrokeThickness.Value
			end

		end

	end

	, DefaultValue = 1.6,
	MaximumValue = 5 }) _tLxPjkoltoBESdmWFMJgGaOUFooqmwgmQpmHfnSHdFFXvj:CreateColorSlider({ Name = 'UIStrokeColor',
	Function = function()
		if Config.CustomHealthbar.Value == true  then
			local UIStroke = LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('HotbarHealthbarContainer'):FindFirstChildWhichIsA('UIStroke')
			if UIStroke  then
				local colorParts = string.split(Config.CustomHealthbar.UIStrokeColor.Value, ',')
				local r = colorParts[1]
				local g = colorParts[2]
				local b = colorParts[3]
				UIStroke.Color = Color3.new(r, g, b)
			end

		end

	end

	, DefaultValue = Color3.new(0.203922, 0, 0.92549) }) _tLxPjkoltoBESdmWFMJgGaOUFooqmwgmQpmHfnSHdFFXvj:CreateSlider({
	Name = 'CornerRadius', Function = function()
		if Config.CustomHealthbar.Value == true  then
			local UICorner = LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('HotbarHealthbarContainer'):FindFirstChildWhichIsA('UICorner')
			if UICorner  then

				UICorner.CornerRadius = UDim.new(0, (Config.CustomHealthbar.CornerRadius.Value / 5))
			end
			if Config.CustomHealthbar.Value == true  then
				for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('HotbarHealthbarContainer'):GetDescendants()  do
					if v:IsA('UICorner')  then

						v.CornerRadius = UDim.new(0, (Config.CustomHealthbar.CornerRadius.Value / 5))
					end

				end

			end

		end

	end

	, DefaultValue = (35+5),
	MaximumValue = (91+9) }) _tLxPjkoltoBESdmWFMJgGaOUFooqmwgmQpmHfnSHdFFXvj:CreateSlider({ Name = 'Rotation',
	Function = function()
		if Config.CustomHealthbar.Value == true  then
			for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('HotbarHealthbarContainer'):GetDescendants()  do
				if v:IsA('UIGradient')  then

					v.Rotation = Config.CustomHealthbar.Rotation.Value
				end

			end

		end

	end

	, DefaultValue = 0,
	MaximumValue = (127+233) }) _tLxPjkoltoBESdmWFMJgGaOUFooqmwgmQpmHfnSHdFFXvj:CreateColorSlider({ Name = 'Color1',
	Function = function()
		if Config.CustomHealthbar.Value == true  then
			for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('HotbarHealthbarContainer'):GetDescendants()  do
				if v:IsA('UIGradient')  then
					local colorParts = string.split(Config.CustomHealthbar.Color1.Value, ',')
					local r = colorParts[1]
					local g = colorParts[2]
					local b = colorParts[3]
					local moduleContainer = string.split(Config.CustomHealthbar.Color2.Value, ',')
					local waveSize = moduleContainer[1]
					local waveColor = moduleContainer[2]
					local arrayListFrame = moduleContainer[3]
					v.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(waveSize, waveColor, arrayListFrame))})
				end

			end

		end

	end

	, DefaultValue = Color3.new(0.321569, 0, 0.92549) }) _tLxPjkoltoBESdmWFMJgGaOUFooqmwgmQpmHfnSHdFFXvj:CreateColorSlider({
	Name = 'Color2', Function = function()
		if Config.CustomHealthbar.Value == true  then
			for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('HotbarHealthbarContainer'):GetDescendants()  do
				if v:IsA('UIGradient')  then
					local colorParts = string.split(Config.CustomHealthbar.Color1.Value, ',')
					local r = colorParts[1]
					local g = colorParts[2]
					local b = colorParts[3]
					local moduleContainer = string.split(Config.CustomHealthbar.Color2.Value, ',')
					local waveSize = moduleContainer[1]
					local waveColor = moduleContainer[2]
					local arrayListFrame = moduleContainer[3]
					v.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(waveSize, waveColor, arrayListFrame))})
				end

			end

		end

	end

	, DefaultValue = Color3.new(0, 0.0666667, 0.92549) }) Connections['CustomHealthbarConnection'] = LocalPlayer.CharacterAdded:Connect(function()
		if Config.CustomHealthbar.Value == true  then
			task.wait(1) _IEDRlxKwWhJkvHuGSdkuSUEKUMq()
		end

	end) UnInjectEvent.Event:Connect(function()
		local _KZsapIJCOSSaiPujFmmrMWhvsehOtQnPdTurjPVbDJWlKx = LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('HotbarHealthbarContainer'):FindFirstChild('HealthbarProgressWrapper')
		local _GnjjaFTcJEOLaQUHBoENBjliiHyK = _qHwjKuUtyKjwd:Clone()
		_GnjjaFTcJEOLaQUHBoENBjliiHyK.Parent = LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('HotbarHealthbarContainer')
		if _KZsapIJCOSSaiPujFmmrMWhvsehOtQnPdTurjPVbDJWlKx.Parent:FindFirstChildWhichIsA('UIStroke')  then

			_KZsapIJCOSSaiPujFmmrMWhvsehOtQnPdTurjPVbDJWlKx.Parent:FindFirstChildWhichIsA('UIStroke'):Destroy()
		end

		_KZsapIJCOSSaiPujFmmrMWhvsehOtQnPdTurjPVbDJWlKx:Destroy()
	end)
end

end)
task.spawn(function()
	if IsGhostMode == false  then
		local _XLRHPfeZcqUfAXTDHOAqkcZIrvUJRkb = false
		local _CbIuYjadJbotPpTNsAoDAupbUqVXljvIzgnRS = LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):Clone()
		if _CbIuYjadJbotPpTNsAoDAupbUqVXljvIzgnRS:FindFirstChild('2')  then

			_CbIuYjadJbotPpTNsAoDAupbUqVXljvIzgnRS:FindFirstChild('2'):Destroy()
		end

		_CbIuYjadJbotPpTNsAoDAupbUqVXljvIzgnRS.Parent = ReplicatedStorage
		local function _KkuFlegRpNjcMHWabTG()
			task.spawn(function()
				if LocalPlayer.PlayerGui:WaitForChild('hotbar'):WaitForChild('1'):WaitForChild('HotbarResourceDisplay')  then

					LocalPlayer.PlayerGui:WaitForChild('hotbar'):WaitForChild('1'):WaitForChild('HotbarResourceDisplay').Position = UDim2.new(1, ((11+34) + (Config.CustomHotbar.UIStrokeThickness.Value + (Config.CustomHotbar.Spacing.Value * 4.5))), 0, 0)
				end
				if LocalPlayer.PlayerGui:WaitForChild('hotbar'):WaitForChild('1'):WaitForChild('3')  then

					LocalPlayer.PlayerGui:WaitForChild('hotbar'):WaitForChild('1'):WaitForChild('3').Position = UDim2.new(0, -((10+35) + (Config.CustomHotbar.UIStrokeThickness.Value + (Config.CustomHotbar.Spacing.Value * 4.5))), 1, 0)
				end

			end)
			for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('ItemsHotbar'):GetDescendants()  do
				task.spawn(function()
					if v:IsA('ImageButton')  then

						v.BackgroundTransparency = (Config.CustomHotbar.BackgroundTransparency.Value / (14+86))
						v.BackgroundColor3 = Color3.new(1, 1, 1) v.BorderSizePixel = 0
						local uiGradient = Instance.new('UIGradient')
						uiGradient.Parent = v
						uiGradient.Name = 'UIGradient'
						uiGradient.Rotation = Config.CustomHotbar.Rotation.Value
						local colorParts = string.split(Config.CustomHotbar.Color1.Value, ',')
						local r = colorParts[1]
						local g = colorParts[2]
						local b = colorParts[3]
						local moduleContainer = string.split(Config.CustomHotbar.Color2.Value, ',')
						local waveSize = moduleContainer[1]
						local waveColor = moduleContainer[2]
						local arrayListFrame = moduleContainer[3]
						uiGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(waveSize, waveColor, arrayListFrame))})
						local UICorner = Instance.new('UICorner')
						UICorner.Parent = v
						UICorner.Name = 'UICorner'
						UICorner.CornerRadius = UDim.new(0, (Config.CustomHotbar.CornerRadius.Value / 5))
						local UIStroke = Instance.new('UIStroke')
						UIStroke.Parent = v
						UIStroke.Name = 'UIStroke'
						UIStroke.Transparency = 0.7
						UIStroke.Thickness = Config.CustomHotbar.UIStrokeThickness.Value
						UIStroke.Color = Color3.new(((r + waveSize) / 2), ((g + waveColor) / 2), ((b + arrayListFrame) / 2))
					end

				end)
				task.spawn(function()
					if v:IsA('UIListLayout')  then

						LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('ItemsHotbar'):FindFirstChild('ItemsHotbarListLayout').Padding = UDim.new(0, Config.CustomHotbar.Spacing.Value)
					end

				end)
				task.spawn(function()
					if v:IsA('TextLabel')  then

						v.BackgroundTransparency = 1
						v.TextTransparency = (Config.CustomHotbar.TextTransparency.Value / (61+39)) v.TextColor3 = Color3.new(1, 1, 1)
						v.Position = v.Position + UDim2.new(0, 2, 0, 2) v.Font = Enum.Font.GothamBold
					end

				end)
				task.spawn(function()
					if v:IsA('ImageButton')  then

						Connections['CustomHotbarConnection2'] = v.Changed:Connect(function()
							if Config.CustomHotbar.Value == true  then
								v.BackgroundTransparency = (Config.CustomHotbar.BackgroundTransparency.Value / (34+66)) v.BackgroundColor3 = Color3.new(1, 1, 1)
								v.BorderSizePixel = 0
								local uiGradient = Instance.new('UIGradient')
								uiGradient.Parent = v
								uiGradient.Name = 'UIGradient'
								uiGradient.Rotation = Config.CustomHotbar.Rotation.Value
								local colorParts = string.split(Config.CustomHotbar.Color1.Value, ',')
								local r = colorParts[1]
								local g = colorParts[2]
								local b = colorParts[3]
								local moduleContainer = string.split(Config.CustomHotbar.Color2.Value, ',')
								local waveSize = moduleContainer[1]
								local waveColor = moduleContainer[2]
								local arrayListFrame = moduleContainer[3]
								uiGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(waveSize, waveColor, arrayListFrame))})
								local UICorner = Instance.new('UICorner')
								UICorner.Parent = v
								UICorner.Name = 'UICorner'
								UICorner.CornerRadius = UDim.new(0, (Config.CustomHotbar.CornerRadius.Value / 5))
							end

						end)
					end

				end)
			end

		end
		local _sYBlAMsNbmQuuzU = colorTo:CreateToggle({
		Name = 'CustomHotbar', Function = function()
			if Config.CustomHotbar.Value == true  then

				_XLRHPfeZcqUfAXTDHOAqkcZIrvUJRkb = true _KkuFlegRpNjcMHWabTG()
			end
			if Config.CustomHotbar.Value == false and
			_XLRHPfeZcqUfAXTDHOAqkcZIrvUJRkb == true  then
				local _UUBhJvfrBhtbWAT = LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1')
				local _VvxmttlAwJVKrwRWaDbSAbApBKQkXARUyUugrp = _CbIuYjadJbotPpTNsAoDAupbUqVXljvIzgnRS:Clone()
				_VvxmttlAwJVKrwRWaDbSAbApBKQkXARUyUugrp.Parent = LocalPlayer.PlayerGui:WaitForChild('hotbar') _UUBhJvfrBhtbWAT:Destroy()
			end

		end

		, HoverText = 'Gives You A Cool Custom Hotbar ' }) _sYBlAMsNbmQuuzU:CreateSlider({
		Name = 'BackgroundTransparency', Function = function()
			if Config.CustomHotbar.Value == true  then
				for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('ItemsHotbar'):GetDescendants()  do
					if v:IsA('ImageButton')  then

						v.BackgroundTransparency = (Config.CustomHotbar.BackgroundTransparency.Value / (95+5))
					end

				end

			end

		end

		, DefaultValue = (9+1),
		MaximumValue = (30+70) }) _sYBlAMsNbmQuuzU:CreateSlider({ Name = 'UIStrokeThickness',
		Function = function()
			if Config.CustomHotbar.Value == true  then
				if LocalPlayer.PlayerGui:WaitForChild('hotbar'):WaitForChild('1'):WaitForChild('HotbarResourceDisplay')  then

					LocalPlayer.PlayerGui:WaitForChild('hotbar'):WaitForChild('1'):WaitForChild('HotbarResourceDisplay').Position = UDim2.new(1, ((15+30) + (Config.CustomHotbar.UIStrokeThickness.Value + (Config.CustomHotbar.Spacing.Value * 4.5))), 0, 0)
				end
				if LocalPlayer.PlayerGui:WaitForChild('hotbar'):WaitForChild('1'):WaitForChild('3')  then

					LocalPlayer.PlayerGui:WaitForChild('hotbar'):WaitForChild('1'):WaitForChild('3').Position = UDim2.new(0, -((38+7) + (Config.CustomHotbar.UIStrokeThickness.Value + (Config.CustomHotbar.Spacing.Value * 4.5))), 1, 0)
				end
				for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('ItemsHotbar'):GetDescendants()  do
					if v:IsA('UIStroke')  then

						v.Thickness = Config.CustomHotbar.UIStrokeThickness.Value
					end

				end

			end

		end

		, DefaultValue = 1.3,
		MaximumValue = 5 }) _sYBlAMsNbmQuuzU:CreateSlider({ Name = 'TextTransparency',
		Function = function()
			if Config.CustomHotbar.Value == true  then
				for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('ItemsHotbar'):GetDescendants()  do
					if v:IsA('TextLabel')  then

						v.TextTransparency = (Config.CustomHotbar.TextTransparency.Value / (27+73))
					end

				end

			end

		end

		, DefaultValue = (86+14),
		MaximumValue = (17+83) }) _sYBlAMsNbmQuuzU:CreateSlider({ Name = 'CornerRadius',
		Function = function()
			if Config.CustomHotbar.Value == true  then
				for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('ItemsHotbar'):GetDescendants()  do
					if v:IsA('UICorner')  then

						v.CornerRadius = UDim.new(0, (Config.CustomHotbar.CornerRadius.Value / 5))
					end

				end

			end

		end

		, DefaultValue = (9+21),
		MaximumValue = (36+64) }) _sYBlAMsNbmQuuzU:CreateSlider({ Name = 'Rotation',
		Function = function()
			if Config.CustomHotbar.Value == true  then
				for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('ItemsHotbar'):GetDescendants()  do
					if v:IsA('UIGradient')  then

						v.Rotation = Config.CustomHotbar.Rotation.Value
					end

				end

			end

		end

		, DefaultValue = (34+11),
		MaximumValue = (249+111) }) _sYBlAMsNbmQuuzU:CreateSlider({ Name = 'Spacing',
		Function = function()
			if Config.CustomHotbar.Value == true  then
				if LocalPlayer.PlayerGui:WaitForChild('hotbar'):WaitForChild('1'):WaitForChild('HotbarResourceDisplay')  then

					LocalPlayer.PlayerGui:WaitForChild('hotbar'):WaitForChild('1'):WaitForChild('HotbarResourceDisplay').Position = UDim2.new(1, ((31+14) + (Config.CustomHotbar.UIStrokeThickness.Value + (Config.CustomHotbar.Spacing.Value * 4.5))), 0, 0)
				end
				if LocalPlayer.PlayerGui:WaitForChild('hotbar'):WaitForChild('1'):WaitForChild('3')  then

					LocalPlayer.PlayerGui:WaitForChild('hotbar'):WaitForChild('1'):WaitForChild('3').Position = UDim2.new(0, -((42+3) + (Config.CustomHotbar.UIStrokeThickness.Value + (Config.CustomHotbar.Spacing.Value * 4.5))), 1, 0)
				end

				LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('ItemsHotbar'):FindFirstChild('ItemsHotbarListLayout').Padding = UDim.new(0, Config.CustomHotbar.Spacing.Value)
			end

		end

		, DefaultValue = 8,
		MaximumValue = (8+12) }) _sYBlAMsNbmQuuzU:CreateColorSlider({ Name = 'Color1',
		Function = function()
			if Config.CustomHotbar.Value == true  then
				for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('ItemsHotbar'):GetDescendants()  do
					if v:IsA('UIGradient')  then
						local colorParts = string.split(Config.CustomHotbar.Color1.Value, ',')
						local r = colorParts[1]
						local g = colorParts[2]
						local b = colorParts[3]
						local moduleContainer = string.split(Config.CustomHotbar.Color2.Value, ',')
						local waveSize = moduleContainer[1]
						local waveColor = moduleContainer[2]
						local arrayListFrame = moduleContainer[3]
						v.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(waveSize, waveColor, arrayListFrame))})
					end
					if v:IsA('UIStroke')  then
						local colorParts = string.split(Config.CustomHotbar.Color1.Value, ',')
						local r = colorParts[1]
						local g = colorParts[2]
						local b = colorParts[3]
						local moduleContainer = string.split(Config.CustomHotbar.Color2.Value, ',')
						local waveSize = moduleContainer[1]
						local waveColor = moduleContainer[2]
						local arrayListFrame = moduleContainer[3]
						v.Color = Color3.new(((r + waveSize) / 2), ((g + waveColor) / 2), ((b + arrayListFrame) / 2))
					end

				end

			end

		end

		, DefaultValue = Color3.new(0.25098, 0, 1) }) _sYBlAMsNbmQuuzU:CreateColorSlider({
		Name = 'Color2', Function = function()
			if Config.CustomHotbar.Value == true  then
				for i, v in next, LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1'):FindFirstChild('ItemsHotbar'):GetDescendants()  do
					if v:IsA('UIGradient')  then
						local colorParts = string.split(Config.CustomHotbar.Color1.Value, ',')
						local r = colorParts[1]
						local g = colorParts[2]
						local b = colorParts[3]
						local moduleContainer = string.split(Config.CustomHotbar.Color2.Value, ',')
						local waveSize = moduleContainer[1]
						local waveColor = moduleContainer[2]
						local arrayListFrame = moduleContainer[3]
						v.Rotation = Config.CustomHotbar.Rotation.Value
						v.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(waveSize, waveColor, arrayListFrame))})
					end
					if v:IsA('UIStroke')  then
						local colorParts = string.split(Config.CustomHotbar.Color1.Value, ',')
						local r = colorParts[1]
						local g = colorParts[2]
						local b = colorParts[3]
						local moduleContainer = string.split(Config.CustomHotbar.Color2.Value, ',')
						local waveSize = moduleContainer[1]
						local waveColor = moduleContainer[2]
						local arrayListFrame = moduleContainer[3]
						v.Color = Color3.new(((r + waveSize) / 2), ((g + waveColor) / 2), ((b + arrayListFrame) / 2))
					end

				end

			end

		end

		, DefaultValue = Color3.new(0.0705882, 0, 1) }) Connections['CustomHotbarConnection'] = LocalPlayer.CharacterAdded:Connect(function()
			if Config.CustomHotbar.Value == true  then
				task.wait(1) _KkuFlegRpNjcMHWabTG()
			end

		end) UnInjectEvent.Event:Connect(function()
			local _UUBhJvfrBhtbWAT = LocalPlayer.PlayerGui:WaitForChild('hotbar'):FindFirstChild('1')
			local _VvxmttlAwJVKrwRWaDbSAbApBKQkXARUyUugrp = _CbIuYjadJbotPpTNsAoDAupbUqVXljvIzgnRS:Clone()
			_VvxmttlAwJVKrwRWaDbSAbApBKQkXARUyUugrp.Parent = LocalPlayer.PlayerGui:WaitForChild('hotbar') _UUBhJvfrBhtbWAT:Destroy()
		end)
	end

end)
task.spawn(function()
	local _cruCReTdphoEfBtNmyVRntVtjsuWD = colorTo:CreateToggle({
	Name = 'NoNameTags', Function = function()
		if Config.NoNameTags.Value == true  then
			if IsAlive(LocalPlayer) == true  then

				LocalPlayer.Character:SetAttribute('NoNametag', true)
			end
			if Config.NoNameTags.Entities.Value == true  then
				for i, v in Players:GetPlayers()  do
					if IsAlive(v) == true and v ~= LocalPlayer  then

						v.Character:SetAttribute('NoNametag', true)
					end

				end

			end

		end
		if Config.NoNameTags.Value == false  then
			if IsAlive(LocalPlayer) == true  then

				LocalPlayer.Character:SetAttribute('NoNametag', false)
			end
			if Config.NoNameTags.Entities.Value == true  then
				for i, v in Players:GetPlayers()  do
					if IsAlive(v) == true and v ~= LocalPlayer  then

						v.Character:SetAttribute('NoNametag', false)
					end

				end

			end

		end

	end

	, HoverText = 'Hides The Nametag Of The Selected Entities ' })
	task.spawn(function()
		repeat task.wait()

	until  getAliveCount() ~= 0
	task.spawn(function()
		task.wait(1)
		if Config.NoNameTags.Value == true  then
			if IsAlive(LocalPlayer) == true  then

				LocalPlayer.Character:SetAttribute('NoNametag', true)
			end
			if Config.NoNameTags.Entities.Value == true  then
				for i, v in Players:GetPlayers()  do
					if IsAlive(v) == true and v ~= LocalPlayer  then

						v.Character:SetAttribute('NoNametag', true)
					end

				end

			end

		end
		if Config.NoNameTags.Value == false  then
			if IsAlive(LocalPlayer) == true  then

				LocalPlayer.Character:SetAttribute('NoNametag', false)
			end
			if Config.NoNameTags.Entities.Value == true  then
				for i, v in Players:GetPlayers()  do
					if IsAlive(v) == true and v ~= LocalPlayer  then

						v.Character:SetAttribute('NoNametag', false)
					end

				end

			end

		end

	end)
	if shared[UninjectedKey] == false  then
		for i, v in next, Players:GetPlayers()  do

			Connections['NoNameTagsConnection'] = v.CharacterAdded:Connect(function(char)
				repeat task.wait()

			until  IsAlive(v) == true
			task.wait(0.3)
			if Config.NoNameTags.Value == true  then
				if IsAlive(LocalPlayer) == true and v == LocalPlayer  then

					char:SetAttribute('NoNametag', true)
				end
				if Config.NoNameTags.Entities.Value == true and IsAlive(v) == true  then

					char:SetAttribute('NoNametag', true)
				end

			end
			if Config.NoNameTags.Value == false  then
				if IsAlive(LocalPlayer) == true and v == LocalPlayer  then

					char:SetAttribute('NoNametag', false)
				end
				if IsAlive(v) == true  then

					char:SetAttribute('NoNametag', false)
				end

			end

		end)
	end

end

end) _cruCReTdphoEfBtNmyVRntVtjsuWD:CreateToggle({ Name = 'Entities',
Function = function()
end

, DefaultValue = true })
end)
task.spawn(function()
	local _DBkBLdfmOoY = Instance.new('ColorCorrectionEffect')
	_DBkBLdfmOoY.Parent = Lighting
	_DBkBLdfmOoY.Name = 'ColorCorrectionEffect'
	_DBkBLdfmOoY.Brightness = 0.1
	_DBkBLdfmOoY.Saturation = 0.5
	_DBkBLdfmOoY.Enabled = false
	local posB = colorTo:CreateToggle({
	Name = 'Atmosphere', Function = function()
		if Config.Atmosphere.Value == true  then
			local colorParts = string.split(Config.Atmosphere.Color.Value, ',')
			local r = colorParts[1]
			local g = colorParts[2]
			local b = colorParts[3]
			_DBkBLdfmOoY.Saturation = (Config.Atmosphere.Saturation.Value / (46+54))
			_DBkBLdfmOoY.TintColor = Color3.new(r, g, b)
			_DBkBLdfmOoY.Contrast = (Config.Atmosphere.Contrast.Value / (38+62))
			_DBkBLdfmOoY.Enabled = true
		end
		if Config.Atmosphere.Value == false  then
			_DBkBLdfmOoY.Enabled = false
		end

	end

	, HoverText = 'Gives You A Cool Atmosphere ' }) posB:CreateSlider({
	Name = 'Saturation', Function = function()
		_DBkBLdfmOoY.Saturation = (Config.Atmosphere.Saturation.Value / (41+59))
	end

	, MaximumValue = (22+78),
	DefaultValue = 0 }) posB:CreateSlider({ Name = 'Contrast',
	Function = function() _DBkBLdfmOoY.Contrast = (Config.Atmosphere.Contrast.Value / (93+7))
	end

	, MaximumValue = (9+91),
	DefaultValue = 0 }) posB:CreateColorSlider({ Name = 'Color',
	Function = function()
		local colorParts = string.split(Config.Atmosphere.Color.Value, ',')
		local r = colorParts[1]
		local g = colorParts[2]
		local b = colorParts[3]
		_DBkBLdfmOoY.TintColor= Color3.new(r, g, b)
	end

	, DefaultValue = Color3.new(0, 0.133333, 1) }) UnInjectEvent.Event:Connect(function() _DBkBLdfmOoY:Destroy()
	end)
end)
task.spawn(function()
	local _EiiglKRJOuAapoQdFqYUjOtKEIdXEnSCUaaubBpfHAZa = colorTo:CreateToggle({
	Name = 'TexturePack', Function = function()
	end

	, HoverText = 'Makes Your ViewModel Look Cool ' }) _EiiglKRJOuAapoQdFqYUjOtKEIdXEnSCUaaubBpfHAZa:CreateToggle({
	Name = 'TexturePackForResources', Function = function()
	end

	, DefaultValue = true }) _EiiglKRJOuAapoQdFqYUjOtKEIdXEnSCUaaubBpfHAZa:CreateToggle({
	Name = 'TexturePackForPickaxes', Function = function()
	end

	, DefaultValue = true }) _EiiglKRJOuAapoQdFqYUjOtKEIdXEnSCUaaubBpfHAZa:CreateToggle({
	Name = 'TexturePackForScythes', Function = function()
	end

	, DefaultValue = true }) _EiiglKRJOuAapoQdFqYUjOtKEIdXEnSCUaaubBpfHAZa:CreateToggle({
	Name = 'TexturePackForSwords', Function = function()
	end

	, DefaultValue = true }) Connections['TexturePackConnection'] = _EUAFvwKBbSQlRFZdpstOXpDxlM.ChildAdded:Connect(function(_iGgflSelgbMD)
		if Config.TexturePack.Value == true and shared[UninjectedKey] == false and IsAlive(LocalPlayer) == true and _iGgflSelgbMD:IsA('Accessory')  then
			local _EiiglKRJOuAapoQdFqYUjOtKEIdXEnSCUaaubBpfHAZa = game:GetObjects('rbxassetid://14654171957')
			local valVal = _EiiglKRJOuAapoQdFqYUjOtKEIdXEnSCUaaubBpfHAZa[1]
			valVal.Parent = ReplicatedStorage
			local _dyydONUvToxtdMMz = { {
			Name = 'wood_sword', Offset = CFrame.Angles(math.rad(0), math.rad(-(5+84)), math.rad(-(35+55))),
			Model = valVal:WaitForChild('Wood_Sword'), }, { Name = 'stone_sword',
			Offset = CFrame.Angles(math.rad(0), math.rad(-(9+80)), math.rad(-(38+52))), Model = valVal:WaitForChild('Stone_Sword'), }, {
			Name = 'iron_sword', Offset = CFrame.Angles(math.rad(0), math.rad(-(22+67)), math.rad(-(27+63))),
			Model = valVal:WaitForChild('Iron_Sword'), }, { Name = 'diamond_sword',
			Offset = CFrame.Angles(math.rad(0), math.rad(-(66+23)), math.rad(-(5+85))), Model = valVal:WaitForChild('Diamond_Sword'), }, {
			Name = 'emerald_sword', Offset = CFrame.Angles(math.rad(0), math.rad(-(64+25)), math.rad(-(1+89))),
			Model = valVal:WaitForChild('Emerald_Sword'), }, { Name = 'rageblade',
			Offset = CFrame.Angles(math.rad(0), math.rad(-(52+37)), math.rad(-(77+13))), Model = valVal:WaitForChild('Rageblade'), }, {
			Name = 'wood_scythe', Offset = CFrame.Angles(math.rad(0),math.rad((57+32)),math.rad(-(77+13))),
			Model = valVal:WaitForChild('Wood_Scythe'), }, { Name = 'stone_scythe',
			Offset = CFrame.Angles(math.rad(0),math.rad((72+17)),math.rad(-(77+13))), Model = valVal:WaitForChild('Stone_Scythe'), }, {
			Name = 'iron_scythe', Offset = CFrame.Angles(math.rad(0),math.rad((79+10)),math.rad(-(28+62))),
			Model = valVal:WaitForChild('Iron_Scythe'), }, { Name = 'diamond_scythe',
			Offset = CFrame.Angles(math.rad(0),math.rad((34+55)),math.rad(-(84+6))), Model = valVal:WaitForChild('Diamond_Scythe'), }, {
			Name = 'wood_pickaxe', Offset = CFrame.Angles(math.rad(0), math.rad(-(3+7)), math.rad(-(88+7))),
			Model = valVal:WaitForChild('Wood_Pickaxe'), }, { Name = 'stone_pickaxe',
			Offset = CFrame.Angles(math.rad(0), math.rad(-(5+5)), math.rad(-(52+43))), Model = valVal:WaitForChild('Stone_Pickaxe'), }, {
			Name = 'iron_pickaxe', Offset = CFrame.Angles(math.rad(0), math.rad(-(9+1)), math.rad(-(90+5))),
			Model = valVal:WaitForChild('Iron_Pickaxe'), }, { Name = 'diamond_pickaxe',
			Offset = CFrame.Angles(math.rad(0), math.rad(-(1+88)), math.rad(-(61+34))), Model = valVal:WaitForChild('Diamond_Pickaxe'), }, {
			Name = 'diamond', Offset = CFrame.Angles(math.rad(0), math.rad(-(67+23)), math.rad((32+58))),
			Model = valVal:WaitForChild('Diamond'), }, { Name = 'iron',
			Offset = CFrame.Angles(math.rad(0), math.rad(-(78+12)), math.rad((48+42))), Model = valVal:WaitForChild('Iron'), }, {
			Name = 'emerald', Offset = CFrame.Angles(math.rad(0), math.rad(-(87+3)), math.rad((18+72))),
			Model = valVal:WaitForChild('Emerald'), }, }
			for i, v in next, _dyydONUvToxtdMMz  do
				if v.Name == _iGgflSelgbMD.Name  then
					local arrayListFuncs
					local _zUpgHHhjnMbyimYMYINygsmgXTSgC
					local _oqIbzhHynwVsrbyLVlqeEKqyGtv
					local function _vjaLyWvsRQxWHEL()
						for bedKey, ownerName in next, _iGgflSelgbMD:GetDescendants()  do
							if ownerName:IsA('BasePart') or ownerName:IsA('MeshPart') or ownerName:IsA('UnionOperation')  then

								ownerName.Transparency = 1
							end

						end

						_zUpgHHhjnMbyimYMYINygsmgXTSgC = v.Model:Clone()
						_zUpgHHhjnMbyimYMYINygsmgXTSgC.Parent = _iGgflSelgbMD
						_zUpgHHhjnMbyimYMYINygsmgXTSgC.Name = v.Name
						_zUpgHHhjnMbyimYMYINygsmgXTSgC.CFrame = ((_iGgflSelgbMD:WaitForChild('Handle').CFrame * v.Offset) * CFrame.Angles(math.rad(0), math.rad(-(35+15)), math.rad(0)))
						local _QmmhjNrdTj = Instance.new('WeldConstraint')
						_QmmhjNrdTj.Parent = _zUpgHHhjnMbyimYMYINygsmgXTSgC
						_QmmhjNrdTj.Name = 'WeldConstraint'
						_QmmhjNrdTj.Part0 = _zUpgHHhjnMbyimYMYINygsmgXTSgC
						_QmmhjNrdTj.Part1 = _iGgflSelgbMD:WaitForChild('Handle')
						_oqIbzhHynwVsrbyLVlqeEKqyGtv = LocalPlayer.Character:WaitForChild(v.Name)
						for bedKey, ownerName in next, _oqIbzhHynwVsrbyLVlqeEKqyGtv:GetDescendants()  do
							if ownerName:IsA('BasePart') or ownerName:IsA('MeshPart') or ownerName:IsA('UnionOperation')  then

								ownerName.Transparency = 1
							end

						end

						arrayListFuncs = v.Model:Clone()
						arrayListFuncs.Parent = _oqIbzhHynwVsrbyLVlqeEKqyGtv
						arrayListFuncs.Name = v.Name
						arrayListFuncs.Anchored = false
						arrayListFuncs.CFrame = ((_oqIbzhHynwVsrbyLVlqeEKqyGtv:WaitForChild('Handle').CFrame * v.Offset)) * CFrame.Angles(math.rad(0), math.rad(-(27+23)), math.rad(0))
					end
					if v.Name == 'iron' and
					Config.TexturePack.TexturePackForResources.Value == true  then

						_vjaLyWvsRQxWHEL() arrayListFuncs.CFrame = (arrayListFuncs.CFrame * CFrame.new(0, -0.24, 0))
					end
					if v.Name == 'diamond' and
					Config.TexturePack.TexturePackForResources.Value == true  then

						_vjaLyWvsRQxWHEL() arrayListFuncs.CFrame = (arrayListFuncs.CFrame * CFrame.new(0, 0.027, 0))
					end
					if v.Name == 'emerald' and
					Config.TexturePack.TexturePackForResources.Value == true  then

						_vjaLyWvsRQxWHEL() arrayListFuncs.CFrame = (arrayListFuncs.CFrame * CFrame.new(0, 0.001, 0))
					end
					if v.Name:find('pickaxe') and Config.TexturePack.TexturePackForPickaxes.Value == true  then

						_vjaLyWvsRQxWHEL() arrayListFuncs.CFrame = ((arrayListFuncs.CFrame * CFrame.new(-0.2, 0, -2.4)) + Vector3.new(0, 0, 2.12))
					end
					if v.Name:find('scythe') and Config.TexturePack.TexturePackForScythes.Value == true  then

						_vjaLyWvsRQxWHEL() arrayListFuncs.CFrame = (arrayListFuncs.CFrame * CFrame.new(-1.15, 0.2, -2.1))
					end
					if v.Name == 'rageblade' and
					Config.TexturePack.TexturePackForSwords.Value == true  then

						_vjaLyWvsRQxWHEL() arrayListFuncs.CFrame = (arrayListFuncs.CFrame * CFrame.new(0.7, 0, -1))
					end
					if v.Name:find('sword') and Config.TexturePack.TexturePackForSwords.Value == true  then

						_vjaLyWvsRQxWHEL() arrayListFuncs.CFrame = ((arrayListFuncs.CFrame * CFrame.new(0.6, 0, -1.1)) + Vector3.new(0, 0, 0.3))
					end
					local _PnJhoGDZYvbLLSFjKKTcdp = Instance.new('WeldConstraint')
					_PnJhoGDZYvbLLSFjKKTcdp.Parent = _zUpgHHhjnMbyimYMYINygsmgXTSgC
					_PnJhoGDZYvbLLSFjKKTcdp.Name = 'WeldConstraint'
					_PnJhoGDZYvbLLSFjKKTcdp.Part0 = arrayListFuncs
					_PnJhoGDZYvbLLSFjKKTcdp.Part1 = _oqIbzhHynwVsrbyLVlqeEKqyGtv:WaitForChild('Handle')
				end

			end

		end

	end)
end)
task.spawn(function()
	local function _EfJGbKCCLOSglNDltxmlchJBlqccxKBCscPjlXRMJ()
		if ReplicatedStorage:FindFirstChild('Sky') and Lighting:FindFirstChild('WinterSky')  then

			ReplicatedStorage:FindFirstChild('Sky').Parent = Lighting Lighting.WinterSky:Destroy()

		else
			if Lighting:FindFirstChild('WinterSky')  then

				Lighting.WinterSky:Destroy()
			end

		end
		if ReplicatedStorage:FindFirstChild('Sky') and Lighting:FindFirstChild('GalaxySky')  then

			ReplicatedStorage.Sky.Parent = Lighting Lighting.GalaxySky:Destroy()

		else
			if Lighting:FindFirstChild('GalaxySky')  then

				Lighting.GalaxySky:Destroy()
			end

		end

	end
	local function _nSxyBTXvwNQRwELLevkSWDCKXFfCc()
		if Config.CustomSky.Sky.WinterSky.Value == true  then
			task.spawn(function()
				local _ZAQskxIkqZuniUwPRAUbMAm = Instance.new('Part')
				_ZAQskxIkqZuniUwPRAUbMAm.Parent = Workspace
				_ZAQskxIkqZuniUwPRAUbMAm.Name = 'SnowPart'
				_ZAQskxIkqZuniUwPRAUbMAm.Transparency = 1
				_ZAQskxIkqZuniUwPRAUbMAm.CanCollide = false
				_ZAQskxIkqZuniUwPRAUbMAm.Anchored = true
				_ZAQskxIkqZuniUwPRAUbMAm.Size = Vector3.new((176+64), 0.5, (81+159))
				local _IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz = Instance.new('ParticleEmitter')
				_IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz.Parent = _ZAQskxIkqZuniUwPRAUbMAm
				_IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz.Name = 'Snow'
				_IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz.EmissionDirection = Enum.NormalId.Bottom
				_IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.16939899325371, 0), NumberSequenceKeypoint.new(0.23365999758244 ,0.62841498851776, 0.37158501148224), NumberSequenceKeypoint.new(0.56209099292755, 0.38797798752785, 0.2771390080452), NumberSequenceKeypoint.new(0.90577298402786, 0.51912599802017, 0), NumberSequenceKeypoint.new(1, 1, 0)})
				_IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz.SpreadAngle = Vector2.new((34+1), (2+33))
				_IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz.Lifetime = NumberRange.new(8, (9+5))
				_IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz.Rotation = NumberRange.new((68+42))
				_IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz.RotSpeed = NumberRange.new((223+77))
				_IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz.Texture = 'rbxassetid://8158344433'
				_IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz.Speed = NumberRange.new(8, (16+2))
				_IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz.Rate = (6+22)
				_IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.039760299026966, 1.3114800453186, 0.32786899805069), NumberSequenceKeypoint.new(0.7554469704628, 0.98360699415207, 0.44038599729538), NumberSequenceKeypoint.new(1, 0, 0)})
				local _zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK = Instance.new('ParticleEmitter')
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.Parent = _ZAQskxIkqZuniUwPRAUbMAm
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.Name = 'WindSnow'
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.EmissionDirection = Enum.NormalId.Bottom
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.16939899325371, 0), NumberSequenceKeypoint.new(0.23365999758244, 0.62841498851776, 0.37158501148224), NumberSequenceKeypoint.new(0.56209099292755, 0.38797798752785, 0.2771390080452), NumberSequenceKeypoint.new(0.90577298402786, 0.51912599802017, 0),NumberSequenceKeypoint.new(1, 1, 0)})
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.Acceleration = Vector3.new(0, 0, 1)
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.SpreadAngle = Vector2.new((33+2), (6+29))
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.Lifetime = NumberRange.new(8, (13+1))
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.Rotation = NumberRange.new((32+78))
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.RotSpeed = NumberRange.new((70+30))
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.Texture = 'rbxassetid://8158344433'
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.Speed = NumberRange.new(8, (15+3))
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.Rate = (4+24)
				_zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.039760299026966, 1.3114800453186, 0.32786899805069), NumberSequenceKeypoint.new(0.7554469704628, 0.98360699415207, 0.44038599729538), NumberSequenceKeypoint.new(1, 0, 0)})
				repeat task.wait()
				if IsAlive(LocalPlayer) == true  then

					_ZAQskxIkqZuniUwPRAUbMAm.CFrame = (LocalPlayer.Character.PrimaryPart.CFrame + Vector3.new(0, (18+82), 0))
				end

			until  shared[UninjectedKey] == true or Config.CustomSky.Sky.WinterSky.Value == false or
			Config.CustomSky.Value == false _ZAQskxIkqZuniUwPRAUbMAm:Destroy() _zIfuRigBeEIflhjxcHgBhCwpakXUqtsZsMK:Destroy() _IQxyVdlDGLXMUzqQkxiAzhRLyXgDHhVz:Destroy()
		end)
		task.spawn(function()
			if Lighting:FindFirstChild('Sky')  then

				Lighting.Sky.Parent = ReplicatedStorage
			end

		end)
		task.spawn(function()
			local createNotification = Instance.new('Sky')
			createNotification.Parent = Lighting
			createNotification.Name = 'WinterSky'
			createNotification.MoonAngularSize = (8+22)
			createNotification.SunAngularSize = (3+8)
			createNotification.MoonTextureId = 'rbxassetid://8139665943'
			createNotification.SunTextureId = 'rbxassetid://6196665106'
			createNotification.StarCount = (1616+3384)
			createNotification.SkyboxUp = 'rbxassetid://8139676647'
			createNotification.SkyboxLf = 'rbxassetid://8139676988'
			createNotification.SkyboxFt = 'rbxassetid://8139677111'
			createNotification.SkyboxBk = 'rbxassetid://8139677359'
			createNotification.SkyboxDn = 'rbxassetid://8139677253'
			createNotification.SkyboxRt = 'rbxassetid://8139676842'
		end)
		task.spawn(function()
			if Lighting:FindFirstChildOfClass('SunRaysEffect')  then

				Lighting:FindFirstChildOfClass('SunRaysEffect'):Destroy()
				local _tlsbzyZBUnLTWDorJpYyFkRDEsjW = Instance.new('SunRaysEffect')
				_tlsbzyZBUnLTWDorJpYyFkRDEsjW.Parent = Lighting
				_tlsbzyZBUnLTWDorJpYyFkRDEsjW.Name = 'SunRaysEffect'
				_tlsbzyZBUnLTWDorJpYyFkRDEsjW.Intensity = 0.03
			end

		end)
		task.spawn(function()
			if not Lighting:FindFirstChildOfClass('SunRaysEffect')  then
				local _FScytePdnlzbkSkrQGCpRbiyYXIMD = Instance.new('SunRaysEffect')
				_FScytePdnlzbkSkrQGCpRbiyYXIMD.Parent = Lighting
				_FScytePdnlzbkSkrQGCpRbiyYXIMD.Name = 'SunRay'
				_FScytePdnlzbkSkrQGCpRbiyYXIMD.Intensity = 0.03
			end

		end)
		task.spawn(function()
			if Lighting:FindFirstChildOfClass('BloomEffect')  then

				Lighting:FindFirstChildOfClass('BloomEffect'):Destroy()
				local _mNOxWqyNMcOJjpRNbgdGgfC = Instance.new('BloomEffect')
				_mNOxWqyNMcOJjpRNbgdGgfC.Parent = Lighting
				_mNOxWqyNMcOJjpRNbgdGgfC.Name = 'BloomEffect'
				_mNOxWqyNMcOJjpRNbgdGgfC.Threshold = 2
				_mNOxWqyNMcOJjpRNbgdGgfC.Intensity = 1
				_mNOxWqyNMcOJjpRNbgdGgfC.Size = 2
			end

		end)
		task.spawn(function()
			if not Lighting:FindFirstChildOfClass('BloomEffect')  then
				local _mNOxWqyNMcOJjpRNbgdGgfC = Instance.new('BloomEffect')
				_mNOxWqyNMcOJjpRNbgdGgfC.Parent = Lighting
				_mNOxWqyNMcOJjpRNbgdGgfC.Name = 'BloomEffect'
				_mNOxWqyNMcOJjpRNbgdGgfC.Threshold = 2
				_mNOxWqyNMcOJjpRNbgdGgfC.Intensity = 1
				_mNOxWqyNMcOJjpRNbgdGgfC.Size = 2
			end

		end)
		task.spawn(function()
			if Lighting:FindFirstChildOfClass('Atmosphere')  then

				Lighting:FindFirstChildOfClass('Atmosphere'):Destroy()
				local posB = Instance.new('Atmosphere')
				posB.Parent = Lighting
				posB.Name = 'Atmosphere'
				posB.Density = 0.3
				posB.Offset = 0.25
				posB.Color = Color3.new(0.776471, 0.776471, 0.776471)
				posB.Decay = Color3.new(0.407843, 0.439216, 0.486275)
				posB.Glare = 0
				posB.Haze = 0
			end

		end)
		task.spawn(function()
			if not Lighting:FindFirstChildOfClass('Atmosphere') and Config.Atmosphere.Value == false  then
				local posB = Instance.new('Atmosphere')
				posB.Parent = Lighting
				posB.Name = 'Atmosphere'
				posB.Density = 0.3
				posB.Offset = 0.25
				posB.Color = Color3.new(0.776471, 0.776471, 0.776471)
				posB.Decay = Color3.new(0.407843, 0.439216, 0.486275)
				posB.Glare = 0
				posB.Haze = 0
			end

		end)
		task.spawn(function()
			if Lighting:FindFirstChild('GalaxySky') then

				Lighting.GalaxySky:Destroy()
			end

		end)
	end
	if Config.CustomSky.Sky.WinterSky.Value == false  then
		if ReplicatedStorage:FindFirstChild('Sky') and Lighting:FindFirstChild('WinterSky')  then

			ReplicatedStorage:FindFirstChild('Sky').Parent = Lighting Lighting.WinterSky:Destroy()
		end

	end
	if Config.CustomSky.Sky.GalaxySky.Value == true  then
		if Lighting:FindFirstChild('Sky')  then

			Lighting.Sky.Parent = ReplicatedStorage
			local createNotification = Instance.new('Sky')
			local _LfZcIoJdGQuYrQNBDyRvCXKK = 8281961896
			createNotification.SkyboxBk = 'http://www.roblox.com/asset/?id=' .. _LfZcIoJdGQuYrQNBDyRvCXKK
			createNotification.SkyboxDn = 'http://www.roblox.com/asset/?id=' .. _LfZcIoJdGQuYrQNBDyRvCXKK
			createNotification.SkyboxFt = 'http://www.roblox.com/asset/?id=' .. _LfZcIoJdGQuYrQNBDyRvCXKK
			createNotification.SkyboxLf = 'http://www.roblox.com/asset/?id=' .. _LfZcIoJdGQuYrQNBDyRvCXKK
			createNotification.SkyboxRt = 'http://www.roblox.com/asset/?id=' .. _LfZcIoJdGQuYrQNBDyRvCXKK
			createNotification.SkyboxUp = 'http://www.roblox.com/asset/?id=' .. _LfZcIoJdGQuYrQNBDyRvCXKK
			createNotification.Parent = Lighting
			createNotification.Name = 'GalaxySky'
		end
		if Lighting:FindFirstChild('WinterSky')  then

			Lighting.WinterSky:Destroy()
			local createNotification = Instance.new('Sky')
			local _LfZcIoJdGQuYrQNBDyRvCXKK = 8281961896
			createNotification.SkyboxBk = 'http://www.roblox.com/asset/?id=' .. _LfZcIoJdGQuYrQNBDyRvCXKK
			createNotification.SkyboxDn = 'http://www.roblox.com/asset/?id=' .. _LfZcIoJdGQuYrQNBDyRvCXKK
			createNotification.SkyboxFt = 'http://www.roblox.com/asset/?id=' .. _LfZcIoJdGQuYrQNBDyRvCXKK
			createNotification.SkyboxLf = 'http://www.roblox.com/asset/?id=' .. _LfZcIoJdGQuYrQNBDyRvCXKK
			createNotification.SkyboxRt = 'http://www.roblox.com/asset/?id=' .. _LfZcIoJdGQuYrQNBDyRvCXKK
			createNotification.SkyboxUp = 'http://www.roblox.com/asset/?id=' .. _LfZcIoJdGQuYrQNBDyRvCXKK
			createNotification.Parent = Lighting
			createNotification.Name = 'GalaxySky'
			if Workspace:FindFirstChild('SnowPart')  then

				Workspace.SnowPart:Destroy()
			end
			if Workspace:FindFirstChild('Snow')  then

				Workspace.Snow:Destroy()
			end
			if Workspace:FindFirstChild('WindSnow')  then

				Workspace.WindSnow:Destroy()
			end

		end

	end

end
local _ksDuQwHKVMJCaeNJBlXwkOQhnynd = colorTo:CreateToggle({
Name = 'CustomSky', Function = function()
	if Config.CustomSky.Value == true  then

		_EfJGbKCCLOSglNDltxmlchJBlqccxKBCscPjlXRMJ() _nSxyBTXvwNQRwELLevkSWDCKXFfCc()

	else
		_EfJGbKCCLOSglNDltxmlchJBlqccxKBCscPjlXRMJ()
	end

end

, HoverText = 'Makes Your Sky Look Refreshing And Unique ' })
local createNotification = _ksDuQwHKVMJCaeNJBlXwkOQhnynd:CreateDropdown({
Name = 'Sky', HoverText = 'Decide Which Sky Will Be Added' }) createNotification:CreateToggle({
Name = 'WinterSky', Function = function() _EfJGbKCCLOSglNDltxmlchJBlqccxKBCscPjlXRMJ() _nSxyBTXvwNQRwELLevkSWDCKXFfCc()
end

, DefaultValue = true }) createNotification:CreateToggle({
Name = 'GalaxySky', Function = function() _EfJGbKCCLOSglNDltxmlchJBlqccxKBCscPjlXRMJ() _nSxyBTXvwNQRwELLevkSWDCKXFfCc()
end

, DefaultValue = false }) UnInjectEvent.Event:Connect(function() _EfJGbKCCLOSglNDltxmlchJBlqccxKBCscPjlXRMJ()
end)
end)
task.spawn(function()
	local _YHhqiNSLAnoFBbKNoaQDyQjWFTDfTENs = Instance.new('BlurEffect')
	_YHhqiNSLAnoFBbKNoaQDyQjWFTDfTENs.Parent = Lighting
	_YHhqiNSLAnoFBbKNoaQDyQjWFTDfTENs.Name = 'BlurEffect'
	_YHhqiNSLAnoFBbKNoaQDyQjWFTDfTENs.Enabled = true
	_YHhqiNSLAnoFBbKNoaQDyQjWFTDfTENs.Size = 0
	local _onLRhVNApwBkUgFpJtjDuBluSONRzoAYZqH = colorTo:CreateToggle({
	Name = 'MotionBlur', Function = function()
		_YHhqiNSLAnoFBbKNoaQDyQjWFTDfTENs.Enabled = true
		repeat task.wait()
		if Config.MotionBlur.Value == true and IsAlive(LocalPlayer) == true  then
			local _vIjWMSTeAvCogNnHWpLylqmCYaOMxfyzCicMCtgyeVyN = Vector3.new(Camera.CFrame.Position.X, 0, Camera.CFrame.Position.Z)
			task.wait(0.2)
			local _IUQvTwCingJydvIaoobDWYboIORoAh = Vector3.new(Camera.CFrame.Position.X, 0, Camera.CFrame.Position.Z)
			local cornerObj = (_vIjWMSTeAvCogNnHWpLylqmCYaOMxfyzCicMCtgyeVyN - _IUQvTwCingJydvIaoobDWYboIORoAh).Magnitude
			local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
			local _HuUvEwYyQswTMSQHjnroNxWXMPYUKYRIkKJaKJ = TweenService:Create(_YHhqiNSLAnoFBbKNoaQDyQjWFTDfTENs, tweenInfo, {Size = cornerObj}) _HuUvEwYyQswTMSQHjnroNxWXMPYUKYRIkKJaKJ:Play() _HuUvEwYyQswTMSQHjnroNxWXMPYUKYRIkKJaKJ.Completed:Connect(function()
				local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
				local _HuUvEwYyQswTMSQHjnroNxWXMPYUKYRIkKJaKJ = TweenService:Create(_YHhqiNSLAnoFBbKNoaQDyQjWFTDfTENs, tweenInfo, {Size = 0}) _HuUvEwYyQswTMSQHjnroNxWXMPYUKYRIkKJaKJ:Play()
				task.wait(1)
			end)
		end

	until  Config.MotionBlur.Value == false or shared[UninjectedKey] == true
	_YHhqiNSLAnoFBbKNoaQDyQjWFTDfTENs.Enabled = false
end

, HoverText = 'Blurs Your Screen When Based On The Camera Motion ' }) UnInjectEvent.Event:Connect(function() _YHhqiNSLAnoFBbKNoaQDyQjWFTDfTENs:Destroy()
end)
end)
task.spawn(function()
	local _LUuJJxnRqBGBv = Lighting.EnvironmentSpecularScale
	local _XHbrQbAHrUxzfgqb = Lighting.EnvironmentDiffuseScale
	local _bwwnkjLrPXbPbWpYpBbR = Lighting.GeographicLatitude
	local _oreuifCjfBcTYmKgDwqHxraoXJPwQS = Lighting.OutdoorAmbient
	local _NPbELISnIwsGhFPKbqjsYDwdoXwRLg = Lighting.GlobalShadows
	local _VAwGgLTAVIfyHMBWJPPcWxcCdmGbfOKYyYor = Lighting.Brightness
	local _VJtQEgyXJGDboriOY = Lighting.TimeOfDay
	local _ZhTcnYCXvFtMpQkDjngOKvnrDZbCTKRsWVXlJxskWiSo = Lighting.ClockTime
	local _KYFXTwOzSDVHefANDDAqjdBroNIkBxbAD = Lighting.Ambient
	local _ACXONAdeCUAEOGNykbTVaGjTnxihppjksgpeLzKzT = Lighting.Atmosphere.Density
	local _GYXpKUfcmAs = Lighting.Atmosphere.Offset
	local _jXkQJLjhtwipUEWb = Lighting.Atmosphere.Color
	local _gCcdgKuZzhRwJkBWRgdWctyPyOM = Lighting.Atmosphere.Decay
	local _ppYQgNuXRbrkFimxZRmwCqbVKRMvTsOsalLVahMHJryBhXPDzS = Lighting.Atmosphere.Glare
	local _fcKJfzXyfhlQmCbhtOwoSPcUkSFyWSeyaRaTgPdalsKjoc = Lighting.Atmosphere.Haze
	local _iroosfoqDEwvPvOMjQJjFtq = colorTo:CreateToggle({
	Name = 'OldTheme', Function = function()
		if Config.OldTheme.Value == true  then
			Lighting.EnvironmentSpecularScale = 1 Lighting.EnvironmentDiffuseScale = 1
			Lighting.GeographicLatitude = 0 Lighting.OutdoorAmbient = Color3.new(0.270588, 0.270588, 0.270588)
			Lighting.GlobalShadows = false Lighting.Brightness = 3
			Lighting.TimeOfDay = '13:00:00' Lighting.ClockTime = (6+7)
			Lighting.Ambient = Color3.new(0.270588, 0.270588, 0.270588)
			if Config.Atmosphere.Value == false  then

				Lighting.Atmosphere.Density = 0.1 Lighting.Atmosphere.Offset = 0.25
				Lighting.Atmosphere.Color = Color3.new(0.776471, 0.776471, 0.776471) Lighting.Atmosphere.Decay = Color3.new(0.407843, 0.439216, 0.486275)
				Lighting.Atmosphere.Glare = 0 Lighting.Atmosphere.Haze = 0
			end

		end
		if Config.OldTheme.Value == false  then
			Lighting.EnvironmentSpecularScale = _LUuJJxnRqBGBv Lighting.EnvironmentDiffuseScale = _XHbrQbAHrUxzfgqb
			Lighting.GeographicLatitude = _bwwnkjLrPXbPbWpYpBbR Lighting.OutdoorAmbient = _oreuifCjfBcTYmKgDwqHxraoXJPwQS
			Lighting.GlobalShadows = _NPbELISnIwsGhFPKbqjsYDwdoXwRLg Lighting.Brightness = _VAwGgLTAVIfyHMBWJPPcWxcCdmGbfOKYyYor
			Lighting.TimeOfDay = _VJtQEgyXJGDboriOY Lighting.ClockTime = _ZhTcnYCXvFtMpQkDjngOKvnrDZbCTKRsWVXlJxskWiSo
			Lighting.Ambient = _KYFXTwOzSDVHefANDDAqjdBroNIkBxbAD
			if Config.Atmosphere.Value == false  then

				Lighting.Atmosphere.Density = _ACXONAdeCUAEOGNykbTVaGjTnxihppjksgpeLzKzT Lighting.Atmosphere.Offset = _GYXpKUfcmAs
				Lighting.Atmosphere.Color = _jXkQJLjhtwipUEWb Lighting.Atmosphere.Decay = _gCcdgKuZzhRwJkBWRgdWctyPyOM
				Lighting.Atmosphere.Glare = _ppYQgNuXRbrkFimxZRmwCqbVKRMvTsOsalLVahMHJryBhXPDzS Lighting.Atmosphere.Haze = _fcKJfzXyfhlQmCbhtOwoSPcUkSFyWSeyaRaTgPdalsKjoc
			end

		end

	end

	, HoverText = 'Makes The Game Look Old ' }) UnInjectEvent.Event:Connect(function()
		Lighting.EnvironmentSpecularScale = _LUuJJxnRqBGBv
		Lighting.EnvironmentDiffuseScale = _XHbrQbAHrUxzfgqb
		Lighting.GeographicLatitude = _bwwnkjLrPXbPbWpYpBbR
		Lighting.OutdoorAmbient = _oreuifCjfBcTYmKgDwqHxraoXJPwQS
		Lighting.GlobalShadows = _NPbELISnIwsGhFPKbqjsYDwdoXwRLg
		Lighting.Brightness = _VAwGgLTAVIfyHMBWJPPcWxcCdmGbfOKYyYor
		Lighting.TimeOfDay = _VJtQEgyXJGDboriOY
		Lighting.ClockTime = _ZhTcnYCXvFtMpQkDjngOKvnrDZbCTKRsWVXlJxskWiSo
		Lighting.Ambient = _KYFXTwOzSDVHefANDDAqjdBroNIkBxbAD Lighting.Atmosphere.Density = _ACXONAdeCUAEOGNykbTVaGjTnxihppjksgpeLzKzT
		Lighting.Atmosphere.Offset = _GYXpKUfcmAs Lighting.Atmosphere.Color = _jXkQJLjhtwipUEWb
		Lighting.Atmosphere.Decay = _gCcdgKuZzhRwJkBWRgdWctyPyOM Lighting.Atmosphere.Glare = _ppYQgNuXRbrkFimxZRmwCqbVKRMvTsOsalLVahMHJryBhXPDzS
		Lighting.Atmosphere.Haze = _fcKJfzXyfhlQmCbhtOwoSPcUkSFyWSeyaRaTgPdalsKjoc
	end)
end)
task.spawn(function()
	local textBoxFrame
	local sectionFrame
	local colorB
	local notificationLabel
	local _wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC
	local _YkDwKcfyEIRvnvuxk
	local listLayout
	local _pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC
	local _aHvRyATyZvxNXF = colorTo:CreateToggle({
	Name = 'AuraEffect', Function = function()
		if Config.AuraEffect.Value == true and IsAlive(LocalPlayer) == true  then
			local colorParts = string.split(Config.AuraEffect.Color.Value, ',')
			local r = colorParts[1]
			local g = colorParts[2]
			local b = colorParts[3]
			textBoxFrame = Instance.new('ParticleEmitter')
			textBoxFrame.Parent = LocalPlayer.Character.PrimaryPart
			textBoxFrame.Name = 'AuraVisual1' textBoxFrame.FlipbookFramerate = NumberRange.new((19+6), (15+10))
			textBoxFrame.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4 textBoxFrame.LightEmission = 1
			textBoxFrame.Acceleration = Vector3.new(0, 1, 0) textBoxFrame.LockedToPart = true
			textBoxFrame.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.28, 0.58), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(0.7, 0.72),NumberSequenceKeypoint.new(1, 1, 0)}) textBoxFrame.SpreadAngle = Vector2.new((204+156), (28+332))
			textBoxFrame.Lifetime = NumberRange.new(0.5, 0.75) textBoxFrame.RotSpeed = NumberRange.new(-(55+305), (72+288))
			textBoxFrame.Rotation = NumberRange.new(-(39+11), (46+4)) textBoxFrame.Texture = 'rbxassetid://12026515010'
			textBoxFrame.ZOffset = 0.15 textBoxFrame.Speed = NumberRange.new(1.25)
			textBoxFrame.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(r, g, b))}) textBoxFrame.Drag = 1
			textBoxFrame.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.32, 0.94), NumberSequenceKeypoint.new(0.85, 1.75), NumberSequenceKeypoint.new(1, 1.67)}) textBoxFrame.Rate = (1+9)
			sectionFrame = Instance.new('ParticleEmitter')
			sectionFrame.Parent = LocalPlayer.Character.PrimaryPart
			sectionFrame.Name = 'AuraVisual1' sectionFrame.FlipbookFramerate = NumberRange.new((3+22), (1+24))
			sectionFrame.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4 sectionFrame.LightEmission = 1
			sectionFrame.LockedToPart = true sectionFrame.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.3, 0.85), NumberSequenceKeypoint.new(0.50, 0.76), NumberSequenceKeypoint.new(0.67, 0.85, 0), NumberSequenceKeypoint.new(1, 1)})
			sectionFrame.SpreadAngle = Vector2.new((349+11), (178+182)) sectionFrame.Lifetime = NumberRange.new(0.36, 0.5)
			sectionFrame.RotSpeed = NumberRange.new(-(79+281), (35+325)) sectionFrame.Rotation = NumberRange.new(-(49+1), (6+44))
			sectionFrame.Texture = 'rbxassetid://11381560992' sectionFrame.ZOffset = 0.15
			sectionFrame.Speed = NumberRange.new(1) sectionFrame.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(r, g, b))})
			sectionFrame.Drag = 1 sectionFrame.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.32, 1.5), NumberSequenceKeypoint.new(0.85, 2), NumberSequenceKeypoint.new(1, 2)})
			sectionFrame.Rate = (9+6)
			colorB = Instance.new('Attachment')
			colorB.Parent = LocalPlayer.Character.PrimaryPart
			colorB.Name = 'Attachment1'
			notificationLabel = Instance.new('ParticleEmitter')
			notificationLabel.Parent = colorB
			notificationLabel.Name = 'AuraVisual3' notificationLabel.FlipbookLayout = Enum.ParticleFlipbookLayout.None
			notificationLabel.LightEmission = 1 notificationLabel.LockedToPart = true
			notificationLabel.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.85), NumberSequenceKeypoint.new(1, 1)}) notificationLabel.Lifetime = NumberRange.new(0.75, 0.75)
			notificationLabel.Texture = 'rbxassetid://11381560992' notificationLabel.Speed = NumberRange.new(0, 0)
			notificationLabel.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(r, g, b))}) notificationLabel.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.5, 4), NumberSequenceKeypoint.new(1, 0)})
			notificationLabel.Rate = (7+3) notificationLabel.Enabled = false
			_wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC = Instance.new('Attachment')
			_wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC.Parent = LocalPlayer.Character.PrimaryPart
			_wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC.Name = 'BottomAttachment' _wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC.Position = Vector3.new(0, -3, 0)
			_YkDwKcfyEIRvnvuxk = Instance.new('Attachment')
			_YkDwKcfyEIRvnvuxk.Parent = LocalPlayer.Character.PrimaryPart
			_YkDwKcfyEIRvnvuxk.Name = 'TopAttachment' _YkDwKcfyEIRvnvuxk.Position = Vector3.new(0, 3, 0)
			listLayout = Instance.new('Beam')
			listLayout.Parent = _wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC
			listLayout.Name = 'AuraVisual4' listLayout.LightInfluence = 1
			listLayout.TextureLength = 0.1 listLayout.LightEmission = 1
			listLayout.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.5, 0.9),NumberSequenceKeypoint.new(1, 1)}) listLayout.TextureSpeed = 0.5
			listLayout.Attachment0 = _wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC listLayout.Attachment1 = _YkDwKcfyEIRvnvuxk
			listLayout.FaceCamera = true listLayout.Segments = (1+9)
			listLayout.Texture = 'http://www.roblox.com/asset/?id=6045867277' listLayout.ZOffset = 1
			listLayout.Width0 = 6 listLayout.Width1 = 6
			listLayout.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(r, g, b))}) _pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC = Instance.new('PointLight')
			_pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC.Parent = LocalPlayer.Character.PrimaryPart
			_pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC.Name = 'AuraVisual5'
			_pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC.Brightness = 1
			_pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC.Range = 8
			_pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC.Color = Color3.new(1, 1, 0.482353)
		end
		if Config.AuraEffect.Value == false  then
			if textBoxFrame  then

				textBoxFrame:Destroy()
			end
			if sectionFrame  then

				sectionFrame:Destroy()
			end
			if notificationLabel  then

				notificationLabel:Destroy()
			end
			if listLayout  then

				listLayout:Destroy()
			end
			if _pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC  then

				_pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC:Destroy()
			end

		end

	end

	, HoverText = 'Gives You A Cool Aura ' }) _aHvRyATyZvxNXF:CreateColorSlider({
	Name = 'Color', Function = function()
		if Config.AuraEffect.Value == true  then
			local colorParts = string.split(Config.AuraEffect.Color.Value, ',')
			local r = colorParts[1]
			local g = colorParts[2]
			local b = colorParts[3]
			if IsAlive(LocalPlayer) == true  then
				if textBoxFrame  then

					textBoxFrame.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(r, g, b))})
				end
				if sectionFrame  then

					sectionFrame.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(r, g, b))})
				end
				if notificationLabel  then

					notificationLabel.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(r, g, b))})
				end
				if listLayout  then

					listLayout.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(r, g, b))})
				end

			end

		end

	end

	, DefaultValue = Color3.new(1, 0.933333, 0.188235) }) Connections['AuraEffect'] = LocalPlayer.CharacterAdded:Connect(function()
		task.wait(2)
		if Config.AuraEffect.Value == true  then
			local colorParts = string.split(Config.AuraEffect.Color.Value, ',')
			local r = colorParts[1]
			local g = colorParts[2]
			local b = colorParts[3]
			textBoxFrame = Instance.new('ParticleEmitter')
			textBoxFrame.Parent = LocalPlayer.Character.PrimaryPart
			textBoxFrame.Name = 'AuraVisual1' textBoxFrame.FlipbookFramerate = NumberRange.new((21+4), (9+16))
			textBoxFrame.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4 textBoxFrame.LightEmission = 1
			textBoxFrame.Acceleration = Vector3.new(0, 1, 0) textBoxFrame.LockedToPart = true
			textBoxFrame.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.28, 0.58), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(0.7, 0.72),NumberSequenceKeypoint.new(1, 1, 0)}) textBoxFrame.SpreadAngle = Vector2.new((351+9), (351+9))
			textBoxFrame.Lifetime = NumberRange.new(0.5, 0.75) textBoxFrame.RotSpeed = NumberRange.new(-(282+78), (343+17))
			textBoxFrame.Rotation = NumberRange.new(-(33+17), (26+24)) textBoxFrame.Texture = 'rbxassetid://12026515010'
			textBoxFrame.ZOffset = 0.15 textBoxFrame.Speed = NumberRange.new(1.25)
			textBoxFrame.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(r, g, b))}) textBoxFrame.Drag = 1
			textBoxFrame.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.32, 0.94), NumberSequenceKeypoint.new(0.85, 1.75), NumberSequenceKeypoint.new(1, 1.67)}) textBoxFrame.Rate = (3+7)
			sectionFrame = Instance.new('ParticleEmitter')
			sectionFrame.Parent = LocalPlayer.Character.PrimaryPart
			sectionFrame.Name = 'AuraVisual1' sectionFrame.FlipbookFramerate = NumberRange.new((6+19), (4+21))
			sectionFrame.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4 sectionFrame.LightEmission = 1
			sectionFrame.LockedToPart = true sectionFrame.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.3, 0.85), NumberSequenceKeypoint.new(0.50, 0.76), NumberSequenceKeypoint.new(0.67, 0.85, 0), NumberSequenceKeypoint.new(1, 1)})
			sectionFrame.SpreadAngle = Vector2.new((117+243), (115+245)) sectionFrame.Lifetime = NumberRange.new(0.36, 0.5)
			sectionFrame.RotSpeed = NumberRange.new(-(221+139), (291+69)) sectionFrame.Rotation = NumberRange.new(-(30+20), (10+40))
			sectionFrame.Texture = 'rbxassetid://11381560992' sectionFrame.ZOffset = 0.15
			sectionFrame.Speed = NumberRange.new(1) sectionFrame.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(r, g, b))})
			sectionFrame.Drag = 1 sectionFrame.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.32, 1.5), NumberSequenceKeypoint.new(0.85, 2), NumberSequenceKeypoint.new(1, 2)})
			sectionFrame.Rate = (1+14)
			colorB = Instance.new('Attachment')
			colorB.Parent = LocalPlayer.Character.PrimaryPart
			colorB.Name = 'Attachment1'
			notificationLabel = Instance.new('ParticleEmitter')
			notificationLabel.Parent = colorB
			notificationLabel.Name = 'AuraVisual3' notificationLabel.FlipbookLayout = Enum.ParticleFlipbookLayout.None
			notificationLabel.LightEmission = 1 notificationLabel.LockedToPart = true
			notificationLabel.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.85), NumberSequenceKeypoint.new(1, 1)}) notificationLabel.Lifetime = NumberRange.new(0.75, 0.75)
			notificationLabel.Texture = 'rbxassetid://11381560992' notificationLabel.Speed = NumberRange.new(0, 0)
			notificationLabel.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(r, g, b))}) notificationLabel.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.5, 4), NumberSequenceKeypoint.new(1, 0)})
			notificationLabel.Rate = (9+1) notificationLabel.Enabled = false
			_wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC = Instance.new('Attachment')
			_wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC.Parent = LocalPlayer.Character.PrimaryPart
			_wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC.Name = 'BottomAttachment' _wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC.Position = Vector3.new(0, -3, 0)
			_YkDwKcfyEIRvnvuxk = Instance.new('Attachment')
			_YkDwKcfyEIRvnvuxk.Parent = LocalPlayer.Character.PrimaryPart
			_YkDwKcfyEIRvnvuxk.Name = 'TopAttachment' _YkDwKcfyEIRvnvuxk.Position = Vector3.new(0, 3, 0)
			listLayout = Instance.new('Beam')
			listLayout.Parent = _wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC
			listLayout.Name = 'AuraVisual4' listLayout.LightInfluence = 1
			listLayout.TextureLength = 0.1 listLayout.LightEmission = 1
			listLayout.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.5, 0.9),NumberSequenceKeypoint.new(1, 1)}) listLayout.TextureSpeed = 0.5
			listLayout.Attachment0 = _wpBFxJwbJORqpkcVbnyDkmvzfRZpxixFFpYhrZfMoC listLayout.Attachment1 = _YkDwKcfyEIRvnvuxk
			listLayout.FaceCamera = true listLayout.Segments = (5+5)
			listLayout.Texture = 'http://www.roblox.com/asset/?id=6045867277' listLayout.ZOffset = 1
			listLayout.Width0 = 6 listLayout.Width1 = 6
			listLayout.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(r, g, b)), ColorSequenceKeypoint.new(1, Color3.new(r, g, b))}) _pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC = Instance.new('PointLight')
			_pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC.Parent = LocalPlayer.Character.PrimaryPart
			_pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC.Name = 'AuraVisual5'
			_pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC.Brightness = 1
			_pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC.Range = 8
			_pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC.Color = Color3.new(1, 1, 0.482353)
		end

	end) UnInjectEvent.Event:Connect(function()
		if textBoxFrame  then

			textBoxFrame:Destroy()
		end
		if sectionFrame  then

			sectionFrame:Destroy()
		end
		if notificationLabel  then

			notificationLabel:Destroy()
		end
		if listLayout  then

			listLayout:Destroy()
		end
		if _pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC  then

			_pafgXpIxqprTfUVLyNmoZlSpJEclKoYKoVkLGaRC:Destroy()
		end

	end)
end)
task.spawn(function()
	if IsGhostMode == false  then
		local _tCMHywvovcAkC = {
		AlSploit = {'AlSploit On Top', 'Catvape Is Bunz', '#1 Script ', 'Skidware Crumbles To Alsploit', 'Best Script'}, Emoji = {string.char(), string.char(), string.char(), string.char(), string.char()},
		Toxic = {'Ez', 'Bop', 'Bam', 'Your Pvp Is Sloppy', 'L'} }
		local _VsUPnRNPDIHlWIS = colorTo:CreateToggle({
		Name = 'Indicators', Function = function()
			if Config.Indicators.Value == true  then

				Connections['IndicatorsConnection'] = Workspace.DescendantAdded:Connect(function(_EcYfAqejYzKcdkni)
					if _EcYfAqejYzKcdkni.Name == 'DamageIndicatorPart' and _EcYfAqejYzKcdkni:FindFirstChild('BillboardGui'):FindFirstChild('Frame'):FindFirstChildWhichIsA('TextLabel')  then
						local _CHlparZclBFGiR = _EcYfAqejYzKcdkni:FindFirstChild('BillboardGui'):FindFirstChild('Frame'):FindFirstChildWhichIsA('TextLabel').Text
						local colorParts = string.split(Config.Indicators.Color.Value, ',')
						local r = colorParts[1]
						local g = colorParts[2]
						local b = colorParts[3] _EcYfAqejYzKcdkni:FindFirstChild('BillboardGui'):FindFirstChild('Frame'):FindFirstChildWhichIsA('TextLabel').TextColor3 = Color3.new(r, g, b)
						if Config.Indicators.IndicatorWords.AlSploit.Value == true  then

							_EcYfAqejYzKcdkni:FindFirstChild('BillboardGui'):FindFirstChild('Frame'):FindFirstChildWhichIsA('TextLabel').Text = _tCMHywvovcAkC['AlSploit'][math.random(1, #_tCMHywvovcAkC['AlSploit'])] .. (Config.Indicators.KeepDamageValues.Value == true and ' ' .. '(' .. _CHlparZclBFGiR .. ')' or "")
						end
						if Config.Indicators.IndicatorWords.Emoji.Value == true  then

							_EcYfAqejYzKcdkni:FindFirstChild('BillboardGui'):FindFirstChild('Frame'):FindFirstChildWhichIsA('TextLabel').Text = _tCMHywvovcAkC['Emoji'][math.random(1, #_tCMHywvovcAkC['AlSploit'])] .. (Config.Indicators.KeepDamageValues.Value == true and ' ' .. '(' .. _CHlparZclBFGiR .. ')' or "")
						end
						if Config.Indicators.IndicatorWords.Toxic.Value == true  then

							_EcYfAqejYzKcdkni:FindFirstChild('BillboardGui'):FindFirstChild('Frame'):FindFirstChildWhichIsA('TextLabel').Text = _tCMHywvovcAkC['Toxic'][math.random(1, #_tCMHywvovcAkC['AlSploit'])] .. (Config.Indicators.KeepDamageValues.Value == true and ' ' .. '(' .. _CHlparZclBFGiR .. ')' or "")
						end

					end

				end)
			end
			if Config.Indicators.Value == false  then
				if Connections['IndicatorsConnection']  then

					Connections['IndicatorsConnection']:Disconnect()
				end

			end

		end

		, HoverText = 'Makes The Damage Indicator Cooler ' }) _VsUPnRNPDIHlWIS:CreateColorSlider({
		Name = 'Color', Function = function()
		end

		, DefaultValue = Color3.new(0.25098, 0, 1) })
		local _liPTBlbyvjejWC = _VsUPnRNPDIHlWIS:CreateDropdown({
		Name = 'IndicatorWords', HoverText = 'The Selected Word Categorr That Will Replace The Normal Indicator Word' })
		local _nphrKOMVcGvhgwPhhLDUMgWdCBjuAzvwERMzedXV = _liPTBlbyvjejWC:CreateToggle({
		Name = 'AlSploit', Function = function()
		end

		, DefaultValue = true })
		local _rSULUAMirxJ = _liPTBlbyvjejWC:CreateToggle({
		Name = 'Emoji', Function = function()
		end

		, DefaultValue = false })
		local _NQnrtwnEvKOFkiXnHAVqDDYwqIEc = _liPTBlbyvjejWC:CreateToggle({
		Name = 'Toxic', Function = function()
		end

		, DefaultValue = false })
		local _VtmeyTfvjMfHTDjLdluXaLBRPGyEvKMHSszJ = _VsUPnRNPDIHlWIS:CreateToggle({
		Name = 'KeepDamageValues', Function = function()
		end

		, DefaultValue = false })
	end

end)
task.spawn(function()
	if IsGhostMode == false  then
		local deltaTime
		local _cAIGmbqjhd = colorTo:CreateToggle({
		Name = 'AntiVoid', Function = function()
			if Config.AntiVoid.Value == true  then
				repeat task.wait()

			until  getAliveCount() ~= 0 or shared[UninjectedKey] == true or Config.AntiVoid.Value == false
			if Config.AntiVoid.Value == true and shared[UninjectedKey] == false  then
				local _ylBIopDCHbnpIAwOmgKKpoHbTxqqcKPzfyEJieiGSSFbxp = math.huge
				local _rPsNsxwHLMrdlfkpkDLRwJyJceGyqYmDoqck = (32557+967442)
				local _gnDrjmaUcntotbedwORPsEswtW = RaycastParams.new()
				_gnDrjmaUcntotbedwORPsEswtW.FilterDescendantsInstances = {blocks}
				_gnDrjmaUcntotbedwORPsEswtW.FilterType = Enum.RaycastFilterType.Include
				deltaTime = Instance.new('Part')
				deltaTime.Parent = Workspace
				deltaTime.Name = 'AntiVoidPart' deltaTime.Transparency = (Config.AntiVoid.Transparency.Value / (8+92))
				deltaTime.CanCollide = false deltaTime.Anchored = true
				deltaTime.Material = Enum.Material.Neon deltaTime.Position = Vector3.new(0, (70933+29066), 0)
				local colorParts = string.split(Config.AntiVoid.Color.Value, ',')
				local r = colorParts[1]
				local g = colorParts[2]
				local b = colorParts[3]
				deltaTime.Color = Color3.new(r, g, b)
				deltaTime.Size = Vector3.new((69378+30621), 1, (55333+44666))
				task.spawn(function()
					for i, v in next, blocks  do
						local _rStCcghjUivgCdVgrnKHgfJItXViuAfTuTENWnYjnQbkrmgltf = Workspace:Raycast((v.Position + Vector3.new(0, (903+97), 0)), Vector3.new(0, -(674+326), 0), _gnDrjmaUcntotbedwORPsEswtW)
						if _rStCcghjUivgCdVgrnKHgfJItXViuAfTuTENWnYjnQbkrmgltf and _rStCcghjUivgCdVgrnKHgfJItXViuAfTuTENWnYjnQbkrmgltf.Position  then

							_rPsNsxwHLMrdlfkpkDLRwJyJceGyqYmDoqck = _rStCcghjUivgCdVgrnKHgfJItXViuAfTuTENWnYjnQbkrmgltf.Position.Y
							if _rPsNsxwHLMrdlfkpkDLRwJyJceGyqYmDoqck <= _ylBIopDCHbnpIAwOmgKKpoHbTxqqcKPzfyEJieiGSSFbxp  then

								_ylBIopDCHbnpIAwOmgKKpoHbTxqqcKPzfyEJieiGSSFbxp = _rPsNsxwHLMrdlfkpkDLRwJyJceGyqYmDoqck
								deltaTime.Position = Vector3.new(0, (_rPsNsxwHLMrdlfkpkDLRwJyJceGyqYmDoqck - 4), 0)
							end

						end

					end

				end)
				task.spawn(function() Connections['AntiVoidConnection'] = deltaTime.Touched:Connect(function()
					if IsAlive(LocalPlayer) and deltaTime and LocalPlayer.Character.PrimaryPart.Position.Y <= Workspace.AntiVoidPart.Position.Y  then
						for i = 1, 3  do
							if IsAlive(LocalPlayer)  then

								LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, (32+68), LocalPlayer.Character.PrimaryPart.Velocity.Z)
							end

						end

					end

				end)
			end)
		end

	end
	if Config.AntiVoid.Value == false and deltaTime  then

		deltaTime:Destroy()
	end

end

, HoverText = 'Makes The Damage Indicator Cool ' }) _cAIGmbqjhd:CreateSlider({
Name = 'Transparency', Function = function()
	if Config.AntiVoid.Value == true and deltaTime  then
		deltaTime.Transparency = (Config.AntiVoid.Transparency.Value / (77+23))
	end

end

, MaximumValue = (11+89),
DefaultValue = (10+40) }) _cAIGmbqjhd:CreateColorSlider({ Name = 'Color',
Function = function()
	if Config.AntiVoid.Value == true and deltaTime  then
		local colorParts = string.split(Config.AntiVoid.Color.Value, ',')
		local r = colorParts[1]
		local g = colorParts[2]
		local b = colorParts[3]
		deltaTime.Color = Color3.new(r, g, b)
	end

end

, DefaultValue = Color3.new(0.282353, 0, 1) }) UnInjectEvent.Event:Connect(function()
	if deltaTime  then

		deltaTime:Destroy()
	end

end)
end

end)
task.spawn(function()
	local _FbFWyOqXqBurpmRhDQXcIHSYpdPcxHUnEbKiWTSTqRG = false
	local function _igmrgoVkzkkCHaiozbQTgstaPyFwDlTzrT()
		if _FbFWyOqXqBurpmRhDQXcIHSYpdPcxHUnEbKiWTSTqRG == false  then

			_FbFWyOqXqBurpmRhDQXcIHSYpdPcxHUnEbKiWTSTqRG = true
		end
		local _QXFqCTrXobMBXaANnDUwNDHcgLIqmXUnuRmXlyGc = Mouse.Hit.Position
		local keybindVal = (_QXFqCTrXobMBXaANnDUwNDHcgLIqmXUnuRmXlyGc - LocalPlayer.Character.PrimaryPart.Position).Magnitude
		local _DxslIzyIklyQldrxSHrLbh
		if keybindVal < _kwgvoVEIBbLrBLnUpkUMxWMjuS.MAX_IDLE_TELEPORT_DISTANCE and (_kwgvoVEIBbLrBLnUpkUMxWMjuS.MIN_IDLE_BEFORE_TELEPORT + 0.1) <= keybindVal / _kwgvoVEIBbLrBLnUpkUMxWMjuS.MAX_CONTINUOUS_SPEED  then

			LocalPlayer.Character.PrimaryPart.Anchored = true
			task.wait(_kwgvoVEIBbLrBLnUpkUMxWMjuS.MIN_IDLE_BEFORE_TELEPORT)
			LocalPlayer.Character.PrimaryPart.Anchored = false
			if IsGhostMode == true  then

				LocalPlayer.Character.Humanoid:MoveTo(_QXFqCTrXobMBXaANnDUwNDHcgLIqmXUnuRmXlyGc)

			else
				local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
				local _nFFFwxnSMnvavjeAotaMJla = TweenService:Create(LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(_QXFqCTrXobMBXaANnDUwNDHcgLIqmXUnuRmXlyGc)}) _nFFFwxnSMnvavjeAotaMJla:Play()
			end

		else
			local _HvhYbdsxUEJcPrAeg = LocalPlayer.Character.PrimaryPart.Position
			local _SlardLPaXIgshx = _QXFqCTrXobMBXaANnDUwNDHcgLIqmXUnuRmXlyGc - _HvhYbdsxUEJcPrAeg
			local keybindVal = _SlardLPaXIgshx.Magnitude
			local listLayout2 = _SlardLPaXIgshx.Unit
			local _jKyCqPnzkhNJKPBOmGMKAjkftaEdmcKWqCxtIRNEcQmgeZ = _kwgvoVEIBbLrBLnUpkUMxWMjuS.MAX_CONTINUOUS_SPEED
			local _TxMdScJdApHt = _kwgvoVEIBbLrBLnUpkUMxWMjuS.MAX_CONTINUOUS_FLY_TIME
			local _UxNpiHcyFNAgCbPSGGHxsgCwYdHqQigIyzbbTGiMPRVavRMsT = _jKyCqPnzkhNJKPBOmGMKAjkftaEdmcKWqCxtIRNEcQmgeZ * _TxMdScJdApHt
			local _UXAihQNKHvyRtSxZNYqqQBOeiQjpnWQYKKLCnNzzxVLW = math.min(keybindVal, _UxNpiHcyFNAgCbPSGGHxsgCwYdHqQigIyzbbTGiMPRVavRMsT)
			local _wwvbQAidWhxOFyPTcCFuggIKjAOippFDOHShkSgsEAwZDWSAE = _UXAihQNKHvyRtSxZNYqqQBOeiQjpnWQYKKLCnNzzxVLW / _jKyCqPnzkhNJKPBOmGMKAjkftaEdmcKWqCxtIRNEcQmgeZ
			_wwvbQAidWhxOFyPTcCFuggIKjAOippFDOHShkSgsEAwZDWSAE = math.min(_wwvbQAidWhxOFyPTcCFuggIKjAOippFDOHShkSgsEAwZDWSAE, _TxMdScJdApHt)
			local satVal = _HvhYbdsxUEJcPrAeg + (listLayout2 * _UXAihQNKHvyRtSxZNYqqQBOeiQjpnWQYKKLCnNzzxVLW)
			if IsGhostMode == true  then

				LocalPlayer.Character.Humanoid:MoveTo(satVal)

			else
				local tweenInfo = TweenInfo.new(_wwvbQAidWhxOFyPTcCFuggIKjAOippFDOHShkSgsEAwZDWSAE, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
				local _nFFFwxnSMnvavjeAotaMJla = TweenService:Create(LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(satVal)}) _nFFFwxnSMnvavjeAotaMJla:Play()
			end

		end

		_FbFWyOqXqBurpmRhDQXcIHSYpdPcxHUnEbKiWTSTqRG = false
	end
	local _JWopdFcFwvqWMSalpKthhtWc = colorTo:CreateToggle({
	Name = 'MouseTp', Function = function()
	end

	, HoverText = 'Teleports You To Your Mouse Position ' })
	local _vlctbnugUknqcnTkIUiZb = _JWopdFcFwvqWMSalpKthhtWc:CreateDropdown({
	Name = 'ActivationMethods', HoverText = 'How MouseTp Will Be Activated' }) _vlctbnugUknqcnTkIUiZb:CreateToggle({
	Name = 'MiddleButton', Function = function()
	end

	, DefaultValue = false }) _vlctbnugUknqcnTkIUiZb:CreateToggle({
	Name = 'LeftClick', Function = function()
	end

	, DefaultValue = true })
	if UserInputService.TouchEnabled == true  then

		Connections['MouseTpConnection'] = UserInputService.TouchTap:Connect(function(_xJjfpBZHqPXfSVGrjXBCCqmWISfjYiYGBEBUt)
			if _xJjfpBZHqPXfSVGrjXBCCqmWISfjYiYGBEBUt == false and
			Config.MouseTp.Value == true  then

				_igmrgoVkzkkCHaiozbQTgstaPyFwDlTzrT()
			end

		end)
	end

	Connections['MouseTpConnection2'] = UserInputService.InputBegan:Connect(function(moduleList, _xJjfpBZHqPXfSVGrjXBCCqmWISfjYiYGBEBUt)
		if moduleList.UserInputType == (Config.MouseTp.ActivationMethods.LeftClick.Value == true and Enum.UserInputType.MouseButton1 or (Config.MouseTp.ActivationMethods.MiddleButton.Value == true and Enum.UserInputType.MouseButton3 or nil)) and
		_xJjfpBZHqPXfSVGrjXBCCqmWISfjYiYGBEBUt == false and Config.MouseTp.Value == true  then

			_igmrgoVkzkkCHaiozbQTgstaPyFwDlTzrT()
		end

	end)
end)
task.spawn(function()
	local function _POekWLvJMDHBcegVCPxFYFJhKNXFBnhdwlDQdGcmzlgmdCH(sliderVal)
		if IsAlive(sliderVal) == true and Drawing  then
			local _pIYofXglCfftedgEupemPYllUbjquX = Camera
			local _OQsolbTkkWhHdRKMpMESZ = _pIYofXglCfftedgEupemPYllUbjquX.WorldToViewportPoint
			local _NoucDbnfXflZBbIHoGGyfctBoHKsMC = Drawing.new('Line')
			_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Transparency = 1
			_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Thickness = 1.5
			_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Visible = false
			task.spawn(function()
				repeat task.wait()
				if IsAlive(sliderVal) and Config.Tracers.Value == true  then
					local _iFALZVEbJDb, _ncDFNjlrAOkVxCYbDIeJOXYoNGWrIyozWEqsyxFxCddAOR = Camera:WorldToViewportPoint(sliderVal.Character.PrimaryPart.Position)
					_NoucDbnfXflZBbIHoGGyfctBoHKsMC.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
					_NoucDbnfXflZBbIHoGGyfctBoHKsMC.To = Vector2.new(_iFALZVEbJDb.X, _iFALZVEbJDb.Y)
					if _ncDFNjlrAOkVxCYbDIeJOXYoNGWrIyozWEqsyxFxCddAOR == true  then

						_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Visible = true
					end
					if _ncDFNjlrAOkVxCYbDIeJOXYoNGWrIyozWEqsyxFxCddAOR == false  then

						_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Visible = false
					end
					task.spawn(function()
						if Config.Tracers.ShowTeamates.Value == true and
						_ncDFNjlrAOkVxCYbDIeJOXYoNGWrIyozWEqsyxFxCddAOR == true  then
							if sliderVal.Team == LocalPlayer.Team  then
								_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Visible = true
							end

						end
						if Config.Tracers.ShowTeamates.Value == false or
						_ncDFNjlrAOkVxCYbDIeJOXYoNGWrIyozWEqsyxFxCddAOR == false  then
							if sliderVal.Team == LocalPlayer.Team  then
								_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Visible = false
							end

						end

					end)
					task.spawn(function()
						if Config.Tracers.ShowEnemies.Value == true and
						_ncDFNjlrAOkVxCYbDIeJOXYoNGWrIyozWEqsyxFxCddAOR == true  then
							if sliderVal.Team ~= LocalPlayer.Team  then

								_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Visible = true
							end

						end
						if Config.Tracers.ShowEnemies.Value == false and
						_ncDFNjlrAOkVxCYbDIeJOXYoNGWrIyozWEqsyxFxCddAOR == false  then
							if sliderVal.Team ~= LocalPlayer.Team  then

								_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Visible = false
							end

						end

					end)
					task.spawn(function()
						if Config.Tracers.UseTeamatesTeamColor.Value == true or
						Config.Tracers.UseEnemiesTeamColor.Value == true  then
							if Config.Tracers.UseTeamatesTeamColor.Value == true and
							sliderVal.Team == LocalPlayer.Team  then

								_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Color = sliderVal.TeamColor.Color
							end
							if Config.Tracers.UseEnemiesTeamColor.Value == true and sliderVal.Team ~= LocalPlayer.Team  then
								_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Color = sliderVal.TeamColor.Color
							end

						end
						if Config.Tracers.UseTeamatesTeamColor.Value == false or
						Config.Tracers.UseEnemiesTeamColor.Value == false  then
							if sliderVal.Team == LocalPlayer.Team  then
								local colorParts = string.split(Config.Tracers.TeamatesColor.Value, ',')
								local r = colorParts[1]
								local g = colorParts[2]
								local b = colorParts[3]
								_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Color = Color3.new(r, g, b)
							end
							if sliderVal.Team ~= LocalPlayer.Team  then
								local colorParts = string.split(Config.Tracers.EnemiesColor.Value, ',')
								local r = colorParts[1]
								local g = colorParts[2]
								local b = colorParts[3]
								_NoucDbnfXflZBbIHoGGyfctBoHKsMC.Color = Color3.new(r, g, b)
							end

						end

					end)
				end

			until  shared[UninjectedKey] == true or Config.Tracers.Value == false or not sliderVal or IsAlive(sliderVal) == false _NoucDbnfXflZBbIHoGGyfctBoHKsMC:Remove()
		end)
	end
	if not Drawing  then

		CreateNotification(3, 'Tracers Not Supported')
	end

end
local _RTgnIESnHsqigASz = colorTo:CreateToggle({
Name = 'Tracers', Function = function()
	task.spawn(function()
		repeat task.wait()

	until  getAliveCount() ~= 0 or Config.Tracers.Value == false or shared[UninjectedKey] == true
	if Config.Tracers.Value == true and shared[UninjectedKey] == false  then
		for i, v in next, Players:GetPlayers()  do
			if IsAlive(v) == true and v ~= LocalPlayer  then

				_POekWLvJMDHBcegVCPxFYFJhKNXFBnhdwlDQdGcmzlgmdCH(v)
			end

			Connections['TracersConnection'] = v.CharacterAdded:Connect(function(char)
				repeat task.wait()

			until  Config.Tracers.Value == false or shared[UninjectedKey] == true or IsAlive(Players:FindFirstChild(char.Name)) == true
			if Config.Tracers.Value == true and shared[UninjectedKey] == false and IsAlive(Players:FindFirstChild(char.Name)) == true and v ~= LocalPlayer  then

				_POekWLvJMDHBcegVCPxFYFJhKNXFBnhdwlDQdGcmzlgmdCH(v)
			end

		end)
	end

end

end)
end

, HoverText = 'Esp But With Tracers ' }) _RTgnIESnHsqigASz:CreateToggle({
Name = 'UseTeamatesTeamColor', Function = function()
end

, DefaultValue = false }) _RTgnIESnHsqigASz:CreateToggle({
Name = 'UseEnemiesTeamColor', Function = function()
end

, DefaultValue = false }) _RTgnIESnHsqigASz:CreateToggle({
Name = 'ShowTeamates', Function = function()
end

, DefaultValue = true }) _RTgnIESnHsqigASz:CreateToggle({
Name = 'ShowEnemies', Function = function()
end

, DefaultValue = true }) _RTgnIESnHsqigASz:CreateColorSlider({
Name = 'TeamatesColor', Function = function()
end

, DefaultValue = Color3.new(0.27451, 0.054902, 1) }) _RTgnIESnHsqigASz:CreateColorSlider({
Name = 'EnemiesColor', Function = function()
end

, DefaultValue = Color3.new(1, 0, 0) })
end)
task.spawn(function()
	if IsGhostMode == false  then
		local _mpuNzUmgdfetnpgLlvrgBxAZuLjq = false
		local function _lDKOvFsDaFrSRiVYLx()
			task.spawn(function()
				if getAliveCount() ~= 0 and IsAlive(LocalPlayer) == true  then
					local _JTmnTPQuEbfRoWHCpuHo = FindNearestBed(true, Config.Nuker.Range.Value)
					local _QBkiockiAajYVYYztAyEBHICcEfdamoCAIHm
					local _SzrqqGqJylT
					if Config.Nuker.MineLuckyBlocks.Value == true  then

						_QBkiockiAajYVYYztAyEBHICcEfdamoCAIHm = _PIIUcfpDcrXxWGZjlFNWWLPSrKgUppwpPwNFW(Config.Nuker.Range.Value)
					end
					if Config.Nuker.MineOres.Value == true  then

						_SzrqqGqJylT = _ezMEfBTDTaApo(Config.Nuker.Range.Value)
					end
					if _JTmnTPQuEbfRoWHCpuHo or _QBkiockiAajYVYYztAyEBHICcEfdamoCAIHm or _SzrqqGqJylT  then

						_mpuNzUmgdfetnpgLlvrgBxAZuLjq = (_JTmnTPQuEbfRoWHCpuHo or _QBkiockiAajYVYYztAyEBHICcEfdamoCAIHm or _SzrqqGqJylT)
					end
					if _JTmnTPQuEbfRoWHCpuHo  then
						local _JbYUQmiLpGhACBifgXQiUFjAzJAfUee = _nmnQmexiVMFHRC(_JTmnTPQuEbfRoWHCpuHo.Position)
						local _PJDUyTiFQzEnSwhKFXfMVjepTwJitxxrPxibkCDcGWeJT, _iIFcjnrdZZPmhGauBPRkhDNCkjmydjeeDEIAJZtfNmcfZq = _FwbOMMYBghD(_JTmnTPQuEbfRoWHCpuHo.Position)
						local _HDeZXmMhLfpfIiZyOeUFYTUCNdCTKvAzJdqph, _DEYIMpxYJsIYNdHEWLYfvAnaxwbdDZyuQetnPumy = _FwbOMMYBghD(_JTmnTPQuEbfRoWHCpuHo.Position + Vector3.new(0, 0, 3))
						local _iIFcjnrdZZPmhGauBPRkhDNCkjmydjeeDEIAJZtfNmcfZq = (_PJDUyTiFQzEnSwhKFXfMVjepTwJitxxrPxibkCDcGWeJT < _HDeZXmMhLfpfIiZyOeUFYTUCNdCTKvAzJdqph and _iIFcjnrdZZPmhGauBPRkhDNCkjmydjeeDEIAJZtfNmcfZq or _DEYIMpxYJsIYNdHEWLYfvAnaxwbdDZyuQetnPumy)
						if _JbYUQmiLpGhACBifgXQiUFjAzJAfUee == false  then

							_iIFcjnrdZZPmhGauBPRkhDNCkjmydjeeDEIAJZtfNmcfZq = _JTmnTPQuEbfRoWHCpuHo
						end

						_ONACCoYLIGVFuc(_iIFcjnrdZZPmhGauBPRkhDNCkjmydjeeDEIAJZtfNmcfZq.Position, true)
					end
					if not _JTmnTPQuEbfRoWHCpuHo  then

						_mpuNzUmgdfetnpgLlvrgBxAZuLjq = nil
						if _QBkiockiAajYVYYztAyEBHICcEfdamoCAIHm  then

							_ONACCoYLIGVFuc(_QBkiockiAajYVYYztAyEBHICcEfdamoCAIHm.Position)
						end
						if _SzrqqGqJylT  then

							_ONACCoYLIGVFuc(_SzrqqGqJylT.Position)
						end

					end

				end

			end)
		end
		local _gYIzZVyrcNJcnkzZuBuzmfndVNrBiFMcvjardDLXjtXLCSCXXf = colorTo:CreateToggle({
		Name = 'Nuker', Function = function()
			task.spawn(function()
				repeat task.wait(0.5)
				for i = 1, (3+7)  do
					task.wait(0.1) _lDKOvFsDaFrSRiVYLx()
				end
				if uiPadding.BlockBreakController  then

					uiPadding.BlockBreakController.blockBreaker:setCooldown(0.1) uiPadding.BlockBreakController.blockBreaker:setRange((10+20))
				end

			until  Config.Nuker.Value == false or shared[UninjectedKey] == true
			if uiPadding.BlockBreakController  then

				uiPadding.BlockBreakController.blockBreaker:setCooldown(0.1) uiPadding.BlockBreakController.blockBreaker:setRange((7+23))
			end

		end)
		task.spawn(function()
			repeat task.wait()
			if Config.Nuker.MiningAnimation.Value == true and _mpuNzUmgdfetnpgLlvrgBxAZuLjq and IsAlive(LocalPlayer) == true and getAliveCount() ~= 0 and buttonFrame.ViewModelController  then
				local colorVal = _gQWdlFHzWMNX(Config.Killaura.Range.Value)
				local _GTGdprJiDZdWdDlyDHwhkkoHphcZhYqtvfbfCWtCxy, _avQSwKfliRBexNBfLP = Camera:WorldToScreenPoint(_mpuNzUmgdfetnpgLlvrgBxAZuLjq.Position)
				if _avQSwKfliRBexNBfLP == true and not colorVal  then
					if buttonFrame.ViewModelController  then

						buttonFrame.ViewModelController:playAnimation((13+2))
						task.wait(0.2)
					end

				end

			end

		until  Config.Nuker.Value == false or shared[UninjectedKey] == true
		if uiPadding.BlockBreakController  then

			uiPadding.BlockBreakController.blockBreaker:setCooldown(0.3) uiPadding.BlockBreakController.blockBreaker:setRange((17+1))
		end

	end)
end

, HoverText = 'Automatically Breaks Blocks ' }) _gYIzZVyrcNJcnkzZuBuzmfndVNrBiFMcvjardDLXjtXLCSCXXf:CreateToggle({
Name = 'MiningAnimation', Function = function()
end

, DefaultValue = true }) _gYIzZVyrcNJcnkzZuBuzmfndVNrBiFMcvjardDLXjtXLCSCXXf:CreateToggle({
Name = 'MineLuckyBlocks', Function = function()
end

, DefaultValue = true }) _gYIzZVyrcNJcnkzZuBuzmfndVNrBiFMcvjardDLXjtXLCSCXXf:CreateToggle({
Name = 'MineOres', Function = function()
end

, DefaultValue = true }) _gYIzZVyrcNJcnkzZuBuzmfndVNrBiFMcvjardDLXjtXLCSCXXf:CreateSlider({
Name = 'Range', Function = function()
end

, MaximumValue = (13+17),
DefaultValue = (4+26) })
end

end)
task.spawn(function()
	local _nOQlnHXlmLsRoSo = {
	Halloween = 'rbxassetid://74330263398056', Egirl = 'rbxassetid://131295097389283' }
	local colorSeq
	local function _xGTIkvzQjCEHqiM(DecalId)
		local _cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF = Instance.new('Part')
		_cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF.Parent = LocalPlayer.Character
		_cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF.Name = 'Cape'
		_cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF.CanCollide = false
		_cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF.Material = Enum.Material.SmoothPlastic
		if Config.Cape.CapeImage.Halloween.Value == true  then
			_cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF.Color = Color3.new(0.105882, 0.105882, 0.105882)

		else
			_cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF.Color = Color3.new(0.882353, 0.882353, 0.882353)
		end

		_cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF.Size = Vector3.new(0.2, 0.2, 0.08)
		local _sEvWyvPZcqPCMxINdMeG = Instance.new('BlockMesh')
		_sEvWyvPZcqPCMxINdMeG.Parent = _cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF
		_sEvWyvPZcqPCMxINdMeG.Name = 'Mesh'
		_sEvWyvPZcqPCMxINdMeG.VertexColor = Vector3.new(1, 1, 1)
		_sEvWyvPZcqPCMxINdMeG.Scale = Vector3.new(9, 17.5, 0.5)
		local _sDPYvbxRhlBcGwRKuqkffVAoRhrYXqwvxCibTYMRCmrBViEV = Instance.new('Motor')
		_sDPYvbxRhlBcGwRKuqkffVAoRhrYXqwvxCibTYMRCmrBViEV.Parent = _cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF
		_sDPYvbxRhlBcGwRKuqkffVAoRhrYXqwvxCibTYMRCmrBViEV.Name = 'Motor'
		_sDPYvbxRhlBcGwRKuqkffVAoRhrYXqwvxCibTYMRCmrBViEV.Part1 = _cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF
		_sDPYvbxRhlBcGwRKuqkffVAoRhrYXqwvxCibTYMRCmrBViEV.Part0 = LocalPlayer.Character.UpperTorso
		_sDPYvbxRhlBcGwRKuqkffVAoRhrYXqwvxCibTYMRCmrBViEV.C0 = CFrame.new(0, 0.2, 1.2, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
		_sDPYvbxRhlBcGwRKuqkffVAoRhrYXqwvxCibTYMRCmrBViEV.C1 = CFrame.new(0, 1, 0.449999988, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
		local _LsxyhtVvOgjIeTBjEAwsllWyLtSubhxZCkUfi = Instance.new('Decal')
		_LsxyhtVvOgjIeTBjEAwsllWyLtSubhxZCkUfi.Parent = _cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF
		_LsxyhtVvOgjIeTBjEAwsllWyLtSubhxZCkUfi.Name = 'Decal'
		_LsxyhtVvOgjIeTBjEAwsllWyLtSubhxZCkUfi.Texture = DecalId
		_LsxyhtVvOgjIeTBjEAwsllWyLtSubhxZCkUfi.Face = Enum.NormalId.Back
		return _cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF
	end
	local _cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF = colorTo:CreateToggle({
	Name = 'Cape', Function = function()
		if Config.Cape.Value == true and IsAlive(LocalPlayer)  then

			colorSeq = _xGTIkvzQjCEHqiM(Config.Cape.CapeImage.Halloween.Value == true and _nOQlnHXlmLsRoSo['Halloween'] or _nOQlnHXlmLsRoSo['Egirl'])
		end
		if Config.Cape.Value == false  then
			if colorSeq  then

				colorSeq:Destroy() colorSeq = nil
			end

		end

	end

	, HoverText = 'Spooky Cape ' })
	task.spawn(function()
		repeat task.wait()
		if colorSeq and IsAlive(LocalPlayer) == true and colorSeq:FindFirstChild('Motor')  then
			if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0  then
				local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
				local _nlrdTRHGbVfTesEjpEMEew = TweenService:Create(colorSeq.Motor, tweenInfo, {CurrentAngle = -0.4}) _nlrdTRHGbVfTesEjpEMEew:Play()

			else
				local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
				local _nlrdTRHGbVfTesEjpEMEew = TweenService:Create(colorSeq.Motor, tweenInfo, {CurrentAngle = -0.2}) _nlrdTRHGbVfTesEjpEMEew:Play()
			end

		end

	until  shared[UninjectedKey] == true or Config.Cape.Value == false
	if colorSeq  then

		colorSeq:Destroy() colorSeq = nil
	end

end)
local _UqgbZkNZjQCikpUfYOWDALdaOfRXnWEJT = _cPIMPHSfazqWWwDfdNhNvJjFpZvPVpfaBIF:CreateDropdown({
Name = 'CapeImage', HoverText = 'What Image Will Be Displayed On Your Cape' }) _UqgbZkNZjQCikpUfYOWDALdaOfRXnWEJT:CreateToggle({
Name = 'Halloween', Function = function()
	if colorSeq and Config.Cape.CapeImage.Halloween.Value == true  then

		colorSeq.Decal.Texture = _nOQlnHXlmLsRoSo['Halloween']
		colorSeq.Color = Color3.new(0.105882, 0.105882, 0.105882)
	end

end

, DefaultValue = true }) _UqgbZkNZjQCikpUfYOWDALdaOfRXnWEJT:CreateToggle({
Name = 'Egirl', Function = function()
	if colorSeq and Config.Cape.CapeImage.Egirl.Value == true  then

		colorSeq.Decal.Texture = _nOQlnHXlmLsRoSo['Egirl']
		colorSeq.Color = Color3.new(0.882353, 0.882353, 0.882353)
	end

end

, DefaultValue = false })
repeat task.wait()

until  getAliveCount() ~= 0
task.wait(0.5) Connections['CapeConnection'] = LocalPlayer.CharacterAdded:Connect(function()
	repeat task.wait()

until  IsAlive(LocalPlayer) == true
task.wait(0.3)
if Config.Cape.Value == true  then

	colorSeq = _xGTIkvzQjCEHqiM(Config.Cape.CapeImage.Halloween.Value == true and _nOQlnHXlmLsRoSo['Halloween'] or _nOQlnHXlmLsRoSo['Egirl'])
end

end)
end)
task.spawn(function()
	local _sHoxbAhMwlPjKoSfvsoofZrNmHrQjeAuEEs = {}
	local _kdqWlDEmdgIspoNbpiJlPOQbEhnxqnJwDEUMDgepDbbV = { Color3.new(1, 0.31, 0.71), Color3.new(0.31, 0.63, 1), Color3.new(0.31, 1, 0.71), Color3.new(1, 0.86, 0.24), Color3.new(0.71, 0.31, 1), Color3.new(1, 0.43, 0.24) }
	local function _VHNSJBTFECbIrqyVGTCtwGEoul()
		local _JXsUFOcMIhWlfQyQzaQiJ = (Config.Trail.Length.Value / 5) * 1.5
		local _tJUkNCJJtJRxMkRfATo = (Config.Trail.Width.Value / (7+3))
		local _wpRvphPvBL = {}
		for i, v in next, _kdqWlDEmdgIspoNbpiJlPOQbEhnxqnJwDEUMDgepDbbV  do
			local _ieCaxmQUzO = ((i - 1) % #_kdqWlDEmdgIspoNbpiJlPOQbEhnxqnJwDEUMDgepDbbV) + 1 _wpRvphPvBL[#_wpRvphPvBL + 1] = ColorSequenceKeypoint.new((i - 1) / (#_kdqWlDEmdgIspoNbpiJlPOQbEhnxqnJwDEUMDgepDbbV - 1), _kdqWlDEmdgIspoNbpiJlPOQbEhnxqnJwDEUMDgepDbbV[_ieCaxmQUzO])
		end
		local _dApFNdOxFMSrOuzYYWxghziVvpVxLN = Instance.new('Attachment')
		_dApFNdOxFMSrOuzYYWxghziVvpVxLN.Position = Vector3.new(0, _tJUkNCJJtJRxMkRfATo, 0)
		_dApFNdOxFMSrOuzYYWxghziVvpVxLN.Parent = LocalPlayer.Character.PrimaryPart
		local colorB = Instance.new('Attachment')
		colorB.Position = Vector3.new(0, -_tJUkNCJJtJRxMkRfATo, 0)
		colorB.Parent = LocalPlayer.Character.PrimaryPart
		local titlePadding = Instance.new('Trail')
		titlePadding.Parent = LocalPlayer.Character.PrimaryPart
		titlePadding.Name = 'Trail'
		titlePadding.LightEmission = 1
		titlePadding.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.8, 0.3), NumberSequenceKeypoint.new(1, 1)})
		titlePadding.Attachment0 = _dApFNdOxFMSrOuzYYWxghziVvpVxLN
		titlePadding.Attachment1 = colorB
		titlePadding.WidthScale = NumberSequence.new(1)
		titlePadding.FaceCamera = true
		titlePadding.Lifetime = _JXsUFOcMIhWlfQyQzaQiJ
		local colorParts = string.split(Config.Trail.Color.Value, ',')
		local r = colorParts[1]
		local g = colorParts[2]
		local b = colorParts[3]
		local _pMieskdqNmMxLQacdeBtKtKsoQHe = Color3.new(r, g, b)
		titlePadding.Color = Config.Trail.Rainbow.Value == true and ColorSequence.new(_wpRvphPvBL) or ColorSequence.new(_pMieskdqNmMxLQacdeBtKtKsoQHe) table.insert(_sHoxbAhMwlPjKoSfvsoofZrNmHrQjeAuEEs, _dApFNdOxFMSrOuzYYWxghziVvpVxLN) table.insert(_sHoxbAhMwlPjKoSfvsoofZrNmHrQjeAuEEs, colorB) table.insert(_sHoxbAhMwlPjKoSfvsoofZrNmHrQjeAuEEs, titlePadding)
		local _ejlxFqGHfEBfyXcOLDazJIpMiqyRnxtLmfqywDohwTJleF = 0
		local _xkjUVGnNjhJUDHWHkGwwotctOuUReZlCVj = 0 Connections['TrailConnection'] = RunService.Heartbeat:Connect(function(speedInterval)
			if Config.Trail.Value == true and titlePadding  then
				titlePadding.Lifetime = (Config.Trail.Length.Value / 5) * 1.5 _dApFNdOxFMSrOuzYYWxghziVvpVxLN.Position = Vector3.new(0, (Config.Trail.Width.Value * 0.1), 0)
				colorB.Position = Vector3.new(0, -(Config.Trail.Width.Value * 0.1), 0)
				_xkjUVGnNjhJUDHWHkGwwotctOuUReZlCVj = _xkjUVGnNjhJUDHWHkGwwotctOuUReZlCVj + speedInterval
				if _xkjUVGnNjhJUDHWHkGwwotctOuUReZlCVj >= 1.2 / #_kdqWlDEmdgIspoNbpiJlPOQbEhnxqnJwDEUMDgepDbbV  then

					_xkjUVGnNjhJUDHWHkGwwotctOuUReZlCVj = 0
					_ejlxFqGHfEBfyXcOLDazJIpMiqyRnxtLmfqywDohwTJleF = (_ejlxFqGHfEBfyXcOLDazJIpMiqyRnxtLmfqywDohwTJleF + 1) % #_kdqWlDEmdgIspoNbpiJlPOQbEhnxqnJwDEUMDgepDbbV
					local _wpRvphPvBL = {}
					for i, v in next, _kdqWlDEmdgIspoNbpiJlPOQbEhnxqnJwDEUMDgepDbbV  do
						local _ieCaxmQUzO = ((i - 1 + _ejlxFqGHfEBfyXcOLDazJIpMiqyRnxtLmfqywDohwTJleF) % #_kdqWlDEmdgIspoNbpiJlPOQbEhnxqnJwDEUMDgepDbbV) + 1 _wpRvphPvBL[#_wpRvphPvBL + 1] = ColorSequenceKeypoint.new((i - 1) / (#_kdqWlDEmdgIspoNbpiJlPOQbEhnxqnJwDEUMDgepDbbV - 1), _kdqWlDEmdgIspoNbpiJlPOQbEhnxqnJwDEUMDgepDbbV[_ieCaxmQUzO])
					end
					local _zizTNeWxnrhQXQUAsmluO = Config.Trail.Rainbow.Value == true and ColorSequence.new(_wpRvphPvBL) or ColorSequence.new(_kdqWlDEmdgIspoNbpiJlPOQbEhnxqnJwDEUMDgepDbbV[1])
					for i, v in next, _sHoxbAhMwlPjKoSfvsoofZrNmHrQjeAuEEs  do
						if v:IsA('Trail')  then
							local colorParts = string.split(Config.Trail.Color.Value, ',')
							local r = colorParts[1]
							local g = colorParts[2]
							local b = colorParts[3]
							local _pMieskdqNmMxLQacdeBtKtKsoQHe = Color3.new(r, g, b)
							titlePadding.Color = (Config.Trail.Rainbow.Value == true and ColorSequence.new(_wpRvphPvBL) or ColorSequence.new(_pMieskdqNmMxLQacdeBtKtKsoQHe))
						end

					end

				end

			end

		end)
	end
	local _LlLSVJIHoRSvAYEbXkuyxGEJsTPFqEcDVdZTTtYQbBRLXJGFe = colorTo:CreateToggle({
	Name = 'Trail', Function = function()
		if Config.Trail.Value == true  then
			if IsAlive(LocalPlayer) == true  then

				_VHNSJBTFECbIrqyVGTCtwGEoul()
			end

		end
		if Config.Trail.Value == false  then
			for i, v in next, _sHoxbAhMwlPjKoSfvsoofZrNmHrQjeAuEEs  do
				if v  then

					v:Destroy()
				end

			end

			table.clear(_sHoxbAhMwlPjKoSfvsoofZrNmHrQjeAuEEs)
			if Connections['TrailConnection']  then

				Connections['TrailConnection']:Disconnect()
			end

		end

	end

	, HoverText = 'Gives A Cool Trail To Your Character ' }) _LlLSVJIHoRSvAYEbXkuyxGEJsTPFqEcDVdZTTtYQbBRLXJGFe:CreateToggle({
	Name = 'Rainbow', Function = function()
	end

	, DefaultValue = true }) _LlLSVJIHoRSvAYEbXkuyxGEJsTPFqEcDVdZTTtYQbBRLXJGFe:CreateSlider({
	Name = 'Length', Function = function(_avQSwKfliRBexNBfLP)
	end

	, MaximumValue = (13+7),
	DefaultValue = 5 }) _LlLSVJIHoRSvAYEbXkuyxGEJsTPFqEcDVdZTTtYQbBRLXJGFe:CreateSlider({ Name = 'Width',
	Function = function()
	end

	, MaximumValue = (5+5),
	DefaultValue = 3 }) _LlLSVJIHoRSvAYEbXkuyxGEJsTPFqEcDVdZTTtYQbBRLXJGFe:CreateColorSlider({ Name = 'Color',
	Function = function()
	end

	, DefaultValue = Color3.new(0.27451, 0.054902, 1) })
	task.spawn(function() Connections['TrailConnection2'] = LocalPlayer.CharacterAdded:Connect(function()
		repeat task.wait()

	until  IsAlive(LocalPlayer) == true
	task.wait(0.3)
	if Config.Trail.Value == true  then

		_VHNSJBTFECbIrqyVGTCtwGEoul()
	end

end)
end) UnInjectEvent.Event:Connect(function()
	for i, v in next, _sHoxbAhMwlPjKoSfvsoofZrNmHrQjeAuEEs  do
		if v  then

			v:Destroy()
		end

	end

	table.clear(_sHoxbAhMwlPjKoSfvsoofZrNmHrQjeAuEEs)
end)
end)
task.spawn(function()
	local espTab = colorTo:CreateToggle({
	Name = 'Esp', Function = function()
		repeat task.wait()

	until  getAliveCount() ~= 0 or Config.Esp.Value == false
	for i, v in next, Players:GetPlayers()  do
		if v ~= LocalPlayer  then
			if Config.Esp.Value == true and shared[UninjectedKey] == false  then
				if IsAlive(v) == true  then
					if Config.Esp.UseHighlight.Value == true  then
						if Config.Esp.ShowTeamates.Value == true and v.Team.TeamColor and
						v.Team.TeamColor == LocalPlayer.Team.TeamColor  then
							local highlight = Instance.new('Highlight')
							highlight.Parent = v.Character
							highlight.Name = 'Highlight'
							highlight.OutlineTransparency = 1
							highlight.FillTransparency = 0.5
							if Config.Esp.UseTeamatesColor.Value == true  then
								highlight.FillColor = v.TeamColor.Color
							end
							if Config.Esp.UseTeamatesColor.Value == false  then
								local colorParts = string.split(Config.Esp.TeamatesColor.Value, ',')
								local r = colorParts[1]
								local g = colorParts[2]
								local b = colorParts[3]
								highlight.FillColor = Color3.new(r, g, b)
							end

						end
						if Config.Esp.ShowEnemies.Value == true and v.Team.TeamColor ~= LocalPlayer.Team.TeamColor  then
							local highlight = Instance.new('Highlight')
							highlight.Parent = v.Character
							highlight.Name = 'Highlight'
							highlight.OutlineTransparency = 1
							highlight.FillTransparency = 0.5
							if Config.UseEnemiesColor.Value == true  then
								highlight.FillColor = v.TeamColor.Color
							end
							if Config.UseEnemiesColor.Value == false  then
								local colorParts = string.split(Config.Esp.EnemiesColor.Value, ',')
								local r = colorParts[1]
								local g = colorParts[2]
								local b = colorParts[3]
								highlight.FillColor = Color3.new(r, g, b)
							end

						end

					end
					if Config.Esp.UseHighlight.Value == false  then
						if Config.Esp.ShowTeamates.Value == true and v.Team and
						v.Team.TeamColor == LocalPlayer.Team.TeamColor  then
							local billboard = Instance.new('BillboardGui')
							local frame = Instance.new('Frame')
							local UIStroke = Instance.new('UIStroke')
							billboard.Parent = v.Character.PrimaryPart
							billboard.Name = 'Esp'
							billboard.AlwaysOnTop = true
							billboard.Size = UDim2.new(4, 0, 4, 0)
							frame.Parent = billboard
							frame.Name = 'Frame'
							frame.BackgroundTransparency = 1
							frame.Position = UDim2.new(0, 0, (v.Character.LowerTorso and (-v.Character.LowerTorso.Size.Y / 2) or (-v.PrimaryPart.Size.Y / 2)), 0)
							frame.Size = UDim2.new(1, 0, 1.5, 0)
							UIStroke.Parent = frame
							UIStroke.Name = 'Frame'
							UIStroke.Transparency = 0
							UIStroke.Thickness = 1.5
							if Config.Esp.UseTeamatesColor.Value == true  then
								UIStroke.Color = v.TeamColor.Color
							end
							if Config.Esp.UseTeamatesColor.Value == false  then
								local colorParts = string.split(Config.Esp.TeamatesColor.Value, ',')
								local r = colorParts[1]
								local g = colorParts[2]
								local b = colorParts[3]
								UIStroke.Color = Color3.new(r, g, b)
							end

						end
						if Config.Esp.ShowEnemies.Value == true and v.Team and v.Team.TeamColor ~= LocalPlayer.Team.TeamColor  then
							local billboard = Instance.new('BillboardGui')
							local frame = Instance.new('Frame')
							local UIStroke = Instance.new('UIStroke')
							billboard.Parent = v.Character.PrimaryPart
							billboard.Name = 'Esp'
							billboard.AlwaysOnTop = true
							billboard.Size = UDim2.new(4, 0, 4, 0)
							frame.Parent = billboard
							frame.Name = 'Frame'
							frame.BackgroundTransparency = 1
							frame.Position = UDim2.new(0, 0, (v.Character.LowerTorso and (-v.Character.LowerTorso.Size.Y / 2) or (-v.PrimaryPart.Size.Y / 2)), 0)
							frame.Size = UDim2.new(1, 0, 1.5, 0)
							UIStroke.Parent = frame
							UIStroke.Name = 'Frame'
							UIStroke.Transparency = 0
							UIStroke.Thickness = 1.5
							if Config.Esp.UseEnemiesColor.Value == true  then
								UIStroke.Color = v.TeamColor.Color
							end
							if Config.Esp.UseEnemiesColor.Value == false  then
								local colorParts = string.split(Config.Esp.EnemiesColor.Value, ',')
								local r = colorParts[1]
								local g = colorParts[2]
								local b = colorParts[3]
								UIStroke.Color = Color3.new(r, g, b)
							end

						end

					end

				end

			end

		end

	end
	if Config.Esp.Value == false  then
		for i, v in next, Players:GetPlayers()  do
			if IsAlive(v) == true and v.Character.PrimaryPart:FindFirstChild('Esp')  then

				v.Character.PrimaryPart:FindFirstChild('Esp'):Destroy()
			end
			if IsAlive(v) == true and v.Character:FindFirstChild('Highlight')  then

				v.Character:FindFirstChild('Highlight'):Destroy()
			end

		end

	end

end

, HoverText = 'Shows Where The Selected Players Are ' }) espTab:CreateToggle({
Name = 'UseTeamatesColor', Function = function()
end

, DefaultValue = false }) espTab:CreateToggle({
Name = 'UseEnemiesColor', Function = function()
end

, DefaultValue = false }) espTab:CreateToggle({
Name = 'UseHighlight', Function = function()
end

, DefaultValue = false }) espTab:CreateToggle({
Name = 'ShowTeamates', Function = function()
end

, DefaultValue = true }) espTab:CreateToggle({
Name = 'ShowEnemies', Function = function()
end

, DefaultValue = true }) espTab:CreateColorSlider({
Name = 'TeamatesColor', Function = function()
end

, DefaultValue = Color3.new(0.27451, 0.054902, 1) }) espTab:CreateColorSlider({
Name = 'EnemiesColor', Function = function()
end

, DefaultValue = Color3.new(1, 0, 0) })
repeat task.wait()

until  getAliveCount() ~= 0
for i, v in next, Players:GetPlayers()  do
	if v ~= LocalPlayer  then

		Connections['Esp'] = v.CharacterAdded:Connect(function()
			repeat task.wait()

		until  IsAlive(v)
		if Config.Esp.Value == true and shared[UninjectedKey] == false  then
			if Config.Esp.UseHighlight.Value == true  then
				if Config.Esp.ShowTeamates.Value == true and v.Team and
				v.Team.TeamColor == LocalPlayer.Team.TeamColor  then
					local highlight = Instance.new('Highlight')
					highlight.Parent = v.Character
					highlight.Name = 'Highlight'
					highlight.OutlineTransparency = 1
					highlight.FillTransparency = 0.5
					if Config.UseTeamatesColor.Value == true  then
						highlight.FillColor = v.TeamColor.Color
					end
					if Config.UseTeamatesColor.Value == false  then
						local colorParts = string.split(Config.Esp.TeamatesColor.Value, ',')
						local r = colorParts[1]
						local g = colorParts[2]
						local b = colorParts[3]
						highlight.FillColor = Color3.new(r, g, b)
					end

				end
				if Config.Esp.ShowEnemies.Value == true and v.Team.TeamColor ~= LocalPlayer.Team.TeamColor  then
					local highlight = Instance.new('Highlight')
					highlight.Parent = v.Character
					highlight.Name = 'Highlight'
					highlight.OutlineTransparency = 1
					highlight.FillTransparency = 0.5
					if Config.UseEnemiesColor.Value == true  then
						highlight.FillColor = v.TeamColor.Color
					end
					if Config.UseEnemiesColor.Value == false  then
						local colorParts = string.split(Config.Esp.EnemiesColor.Value, ',')
						local r = colorParts[1]
						local g = colorParts[2]
						local b = colorParts[3]
						highlight.FillColor = Color3.new(r, g, b)
					end

				end

			end
			if Config.Esp.UseHighlight.Value == false  then
				if Config.Esp.ShowTeamates.Value == true and v.Team and
				v.Team.TeamColor == LocalPlayer.Team.TeamColor  then
					local billboard = Instance.new('BillboardGui')
					local frame = Instance.new('Frame')
					local UIStroke = Instance.new('UIStroke')
					billboard.Parent = v.Character.PrimaryPart
					billboard.Name = 'Esp'
					billboard.AlwaysOnTop = true
					billboard.Size = UDim2.new(4, 0, 4, 0)
					frame.Parent = billboard
					frame.Name = 'Frame'
					frame.BackgroundTransparency = 1
					frame.Position = UDim2.new(0, 0, (v.Character.LowerTorso and (-v.Character.LowerTorso.Size.Y / 2) or (-v.Character.PrimaryPart.Size.Y / 2)), 0)
					frame.Size = UDim2.new(1, 0, 1.5, 0)
					UIStroke.Parent = frame
					UIStroke.Name = 'Frame'
					UIStroke.Transparency = 0
					UIStroke.Thickness = 1.5
					if Config.Esp.UseTeamatesColor.Value == true  then
						UIStroke.Color = v.TeamColor.Color
					end
					if Config.Esp.UseTeamatesColor.Value == false  then
						local colorParts = string.split(Config.Esp.TeamatesColor.Value, ',')
						local r = colorParts[1]
						local g = colorParts[2]
						local b = colorParts[3]
						UIStroke.Color = Color3.new(r, g, b)
					end

				end
				if Config.Esp.ShowEnemies.Value == true and v.Team.TeamColor ~= LocalPlayer.Team.TeamColor  then
					local billboard = Instance.new('BillboardGui')
					local frame = Instance.new('Frame')
					local UIStroke = Instance.new('UIStroke')
					billboard.Parent = v.Character.PrimaryPart
					billboard.Name = 'Esp'
					billboard.AlwaysOnTop = true
					billboard.Size = UDim2.new(4, 0, 4, 0)
					frame.Parent = billboard
					frame.Name = 'Frame'
					frame.BackgroundTransparency = 1
					frame.Position = UDim2.new(0, 0, (v.Character.LowerTorso and (-v.Character.LowerTorso.Size.Y / 2) or (-v.Character.PrimaryPart.Size.Y / 2)), 0)
					frame.Size = UDim2.new(1, 0, 1.5, 0)
					UIStroke.Parent = frame
					UIStroke.Name = 'Frame'
					UIStroke.Transparency = 0
					UIStroke.Thickness = 1.5
					if Config.Esp.UseEnemiesColor.Value == true  then
						UIStroke.Color = v.TeamColor.Color
					end
					if Config.Esp.UseEnemiesColor.Value == false  then
						local colorParts = string.split(Config.Esp.EnemiesColor.Value, ',')
						local r = colorParts[1]
						local g = colorParts[2]
						local b = colorParts[3]
						UIStroke.Color = Color3.new(r, g, b)
					end

				end

			end

		end

	end)
end

end

UnInjectEvent.Event:Connect(function()
	for i, v in next, Players:GetPlayers()  do
		if IsAlive(v) == true and v.Character.PrimaryPart:FindFirstChild('Esp')  then

			v.Character.PrimaryPart:FindFirstChild('Esp'):Destroy()
		end
		if IsAlive(v) == true and v.Character:FindFirstChild('Highlight')  then

			v.Character:FindFirstChild('Highlight'):Destroy()
		end

	end

end)
end)
task.spawn(function()
	local gamePercentLabel = createGamePercentLabel()
	local playersPerTeam = 0
	local totalEnemySlots = 0
	local enemyCount = 0
	local teamCount = #Teams:GetTeams() - 2
	for i, v in next, game.Players:GetPlayers()  do
		if v.Team ~= LocalPlayer.Team  then

			enemyCount = enemyCount + 1
		end

	end

	playersPerTeam = math.round(enemyCount / math.max(teamCount, 1))
	totalEnemySlots = playersPerTeam * teamCount
	local enemyBeds = {}
	for i, v in next, CollectionService:GetTagged('bed')  do
		local bedColor = (v:FindFirstChild('Bed') and v:FindFirstChild('Bed').BrickColor or v:FindFirstChild('bed') and v:FindFirstChild('bed'):FindFirstChild('Bed') and v:FindFirstChild('bed'):FindFirstChild('Bed').BrickColor or nil)
		if bedColor and bedColor ~= LocalPlayer.Team.TeamColor  then

			enemyBeds[bedColor] = bedColor.Name
		end

	end
	local bedlessEnemies = 0
	local beddedEnemies = 0
	local gamePercentToggle = miscTab:CreateToggle({
	Name = 'GamePercentageDisplay', Function = function()
		if Config.GamePercentageDisplay.Value == true  then
			gamePercentLabel.TextTransparency = 0
			task.spawn(function()
				repeat task.wait(1)
				bedlessEnemies = 0
				beddedEnemies = 0 enemyCount = 0
				enemyBeds = {}
				for i, v in next, CollectionService:GetTagged('bed')  do
					local bedColor = (v:FindFirstChild('Bed') and v:FindFirstChild('Bed').BrickColor or v:FindFirstChild('bed') and v:FindFirstChild('bed'):FindFirstChild('Bed') and v:FindFirstChild('bed'):FindFirstChild('Bed').BrickColor or nil)
					if bedColor and bedColor ~= LocalPlayer.Team.TeamColor  then

						enemyBeds[bedColor] = bedColor.Name
					end

				end
				for i, v in next, game.Players:GetPlayers()  do
					if v.Team ~= LocalPlayer.Team  then

						enemyCount = enemyCount + 1
					end

				end
				for i, v in next, game.Players:GetPlayers()  do
					if v.Team ~= LocalPlayer.Team  then
						local hasBed = false
						for bedKey, ownerName in next, enemyBeds  do
							if ownerName == 'Flame yellowish orange'  then

								ownerName = 'orange'
							end
							local teamName = 'None'
							if v.Team  then

								teamName = (v.Team.TeamColor.Name:lower() == 'flame yellowish orange' and 'orange' or v.Team.TeamColor.Name:lower())
							end
							if string.find(ownerName:lower(), teamName)  then

								hasBed = true break
							end

						end
						if hasBed  then

							beddedEnemies = beddedEnemies + 1
						end

					end

				end

				bedlessEnemies = enemyCount - beddedEnemies
				local weightedScore = beddedEnemies * 1 + bedlessEnemies * 0.5
				local percentVal = math.round(((totalEnemySlots - weightedScore) / math.max(totalEnemySlots, 1)) * (15+85))
				gamePercentLabel.Text = 'Game Percentage: ' .. percentVal .. '%'

			until  Config.GamePercentageDisplay.Value == false or shared[UninjectedKey] == true
		end)
	end
	if Config.GamePercentageDisplay.Value == false  then
		gamePercentLabel.TextTransparency = 1
	end

end

, HoverText = 'Displays The Game Finishih Percentage ' }) UnInjectEvent.Event:Connect(function() gamePercentLabel:Destroy()
end)
end)
task.spawn(function()
	local mobileButtons = {}
	local mobileKeybindToggle = miscTab:CreateToggle({
	Name = 'MobileKeybindButtons', Function = function()
	end

	, HoverText = 'Displays Mobile Shortcuts For Keybinds ' })
	repeat task.wait(0.5)
	if Config.MobileKeybindButtons.Value == true  then
		for i, v in next, Config  do
			if v.Keybind ~= '...' and not mobileButtons[i]  then

				mobileButtons[i] = createMobileButton(i)
			end
			if mobileButtons[i] and v.Keybind == '...'  then

				mobileButtons[i]:Destroy() mobileButtons[i] = nil
			end

		end

	end
	if Config.MobileKeybindButtons.Value == false  then
		for i, v in next, mobileButtons  do

			mobileButtons[i]:Destroy() mobileButtons[i] = nil
		end

	end

until  shared[UninjectedKey] == true
end)
task.spawn(function()
	local coordsLabel = createCoordsLabel()
	local coordsToggle = miscTab:CreateToggle({
	Name = 'CoordinatesDisplay', Function = function()
		if Config.CoordinatesDisplay.Value == true  then
			coordsLabel.TextTransparency = 0
			task.spawn(function()
				repeat task.wait()
				if IsAlive(LocalPlayer) == true  then

					coordsLabel.Text = 'XYZ: (' .. math.round(LocalPlayer.Character.PrimaryPart.Position.X) .. ', ' .. math.round(LocalPlayer.Character.PrimaryPart.Position.Y) .. ', ' .. math.round(LocalPlayer.Character.PrimaryPart.Position.Z) .. ')'
				end
				if IsAlive(LocalPlayer) == false  then

					coordsLabel.Text = 'XYZ: (Nan, Nan, Nan)'
				end

			until  Config.CoordinatesDisplay.Value == false or shared[UninjectedKey] == true
		end)
	end
	if Config.CoordinatesDisplay.Value == false  then
		coordsLabel.TextTransparency = 1
	end

end

, HoverText = 'Displays Your Coordinates ' }) UnInjectEvent.Event:Connect(function() coordsLabel:Destroy()
end)
end)
task.spawn(function()
	local guiColorToggle = miscTab:CreateToggle({
	Name = 'ChangeGuiColor', Function = function()
		if Config.ChangeGuiColor.Value == true  then
			local colorParts = string.split(Config.ChangeGuiColor.ToggleColor.Value, ',')
			local r = colorParts[1]
			local g = colorParts[2]
			local b = colorParts[3]
			guiColor = Color3.new(r, g, b) ChangeGuiColorEvent:Fire()
		end
		if Config.ChangeGuiColor.Value == false  then

			guiColor = Color3.new(0.439216, 0.0666667, 1) ChangeGuiColorEvent:Fire()
		end

	end

	, HoverText = "Changes The Color Of AlSploit's Gui " }) guiColorToggle:CreateColorSlider({
	Name = 'ToggleColor', Function = function()
		if Config.ChangeGuiColor.Value == true  then
			local colorParts = string.split(Config.ChangeGuiColor.ToggleColor.Value, ',')
			local r = colorParts[1]
			local g = colorParts[2]
			local b = colorParts[3]
			guiColor = Color3.new(r, g, b) ChangeGuiColorEvent:Fire()
		end

	end

	, DefaultValue = Color3.new(0.439216, 0.0666667, 1) })
end)
task.spawn(function()
	local restartToggle = miscTab:CreateToggle({
	Name = 'RestartAlSploit', Function = function()
		if Config.RestartAlSploit.Value == true  then

			Config.RestartAlSploit.Value = false UnInjectEvent:Fire()
			if deleteFile  then

				deleteFile('AlSploitConfiguration.json')
			end

		end

	end

	, HoverText = 'Restarts AlSploit ' })
end)
task.spawn(function()
	local airtimeLabel = createAirtimeLabel()
	local airtimeToggle = miscTab:CreateToggle({
	Name = 'AirtimeDisplay', Function = function()
		if Config.AirtimeDisplay.Value == true  then
			airtimeLabel.TextTransparency = 0
			local airtimeStart = tick()
			task.spawn(function()
				repeat task.wait(0.1)
				if IsAlive(LocalPlayer) == true  then
					if isOnGround(LocalPlayer) == true  then

						airtimeStart = tick()
					end

				end
				if IsAlive(LocalPlayer) == false  then

					airtimeStart = tick()
				end

				airtimeLabel.Text = 'Airtime: ' .. DecimalRound(tick() - airtimeStart, 1)

			until  Config.AirtimeDisplay.Value == false or shared[UninjectedKey] == true
		end)
	end
	if Config.AirtimeDisplay.Value == false  then
		airtimeLabel.TextTransparency = 1
	end

end

, HoverText = 'Displays Your Airtime (2.5 Seconds Results In A Lagback) ' }) UnInjectEvent.Event:Connect(function() airtimeLabel:Destroy()
end)
end)
task.spawn(function()
	local speedLabel = createSpeedLabel()
	local speedInterval = 0.15
	local speedToggle = miscTab:CreateToggle({
	Name = 'SpeedDisplay', Function = function()
		if Config.SpeedDisplay.Value == true  then
			speedLabel.TextTransparency = 0
			task.spawn(function()
				repeat task.wait()

			until  IsAlive(LocalPlayer) == true
			local lastPos = Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, 0, LocalPlayer.Character.PrimaryPart.Position.Z)
			local lastTick = tick()
			repeat task.wait(0)
			local nowTick = tick()
			local elapsed = nowTick - lastTick
			if elapsed >= speedInterval  then
				if IsAlive(LocalPlayer) == true  then
					local currPos = Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, 0, LocalPlayer.Character.PrimaryPart.Position.Z)
					local speedVal = (currPos - lastPos).Magnitude / elapsed
					speedLabel.Text = 'Speed: ' .. math.round(speedVal) lastPos = currPos
					lastTick = nowTick
				end

			end
			if IsAlive(LocalPlayer) == false  then

				speedLabel.Text = 'Speed: Nan'
			end

		until  Config.SpeedDisplay.Value == false or shared[UninjectedKey] == true
	end)
end
if Config.SpeedDisplay.Value == false  then
	speedLabel.TextTransparency = 1
end

end

, HoverText = 'Displays Your Speed ' }) UnInjectEvent.Event:Connect(function() speedLabel:Destroy()
end)
end)
task.spawn(function()
	local fpsToggle = miscTab:CreateToggle({
	Name = 'FpsUnlocker', Function = function()
		if Config.FpsUnlocker.Value == true and
		Config.FpsUnlocker.NoFpsCap.Value == false and setFpsCap  then

			setFpsCap(Config.FpsUnlocker.Fps.Value >= 0 and Config.FpsUnlocker.Fps.Value or 1)
		end
		if Config.FpsUnlocker.Value == false and setFpsCap  then

			setFpsCap(Config.FpsUnlocker.Fps.Value >= 0 and Config.FpsUnlocker.Fps.Value or 1)
		end
		if Config.FpsUnlocker.Value == true and not setFpsCap  then

			CreateNotification(3, 'Unable To Unlock Fps')
		end

	end

	, HoverText = 'Unlocks Your Fps To The Desired Value ' }) fpsToggle:CreateToggle({
	Name = 'NoFpsCap', Function = function()
		if Config.FpsUnlocker.Value == true and
		Config.FpsUnlocker.NoFpsCap.Value == true and setFpsCap  then

			setFpsCap((205+795))
		end
		if Config.FpsUnlocker.Value == true and
		Config.FpsUnlocker.NoFpsCap.Value == false and setFpsCap  then

			setFpsCap(Config.FpsUnlocker.Fps.Value >= 0 and Config.FpsUnlocker.Fps.Value or 1)
		end
		if not setFpsCap  then

			CreateNotification(3, 'Unable To Unlock Fps')
		end

	end

	, DefaultValue = true }) fpsToggle:CreateSlider({
	Name = 'Fps', Function = function()
		if Config.FpsUnlocker.Value == true and
		Config.FpsUnlocker.NoFpsCap.Value == false and setFpsCap  then

			setFpsCap(Config.FpsUnlocker.Fps.Value)
		end
		if not setFpsCap  then

			CreateNotification(3, 'Unable To Unlock Fps')
		end

	end

	, MaximumValue = (213+147),
	DefaultValue = (74+286) }) UnInjectEvent.Event:Connect(function()
		if setFpsCap  then

			setFpsCap(Config.FpsUnlocker.Fps.Value)
		end

	end)
end)
task.spawn(function()
	local function predictWinner(targetPlayer, LocalPlayer)
		local targetHealth = targetPlayer.Character:GetAttribute('Health')
		local localHealth = LocalPlayer.Character:GetAttribute('Health')
		local targetDmg, targetHasWeapon = getWeaponDamage(targetPlayer)
		local localDmg, localHasWeapon = getWeaponDamage(LocalPlayer)
		local targetArmorMult = getArmorMultiplier(targetPlayer)
		local localArmorMult = getArmorMultiplier(LocalPlayer)
		local localHitsNeeded = 0
		local targetHitsNeeded = 0
		local predictedWinner
		if targetHasWeapon and localHasWeapon  then
			local effectiveTargetDmg = (targetDmg - (targetDmg * localArmorMult))
			local effectiveLocalDmg = (localDmg - (localDmg * targetArmorMult))
			localHitsNeeded = (localHealth / effectiveTargetDmg) targetHitsNeeded = (targetHealth / effectiveLocalDmg)
		end
		if not targetHasWeapon or not localHasWeapon  then

			localHitsNeeded = -targetHealth
			targetHitsNeeded = -localHealth
		end

		predictedWinner = (localHitsNeeded < targetHitsNeeded and targetPlayer or LocalPlayer)
		return predictedWinner
	end
	local targetHudToggle = miscTab:CreateToggle({
	Name = 'TargetHud', Function = function()
		local targetHudToggle, UIStroke, targetNameLabel, healthBar, targetHealthLabel, targetStatus, Status = createTargetHud()
		targetHudToggle.Visible = false
		repeat task.wait()
		if getAliveCount() ~= 0 and IsAlive(LocalPlayer) and Config.TargetHud.Value == true  then
			local targetPlayer = FindNearestPlayer(Config.TargetHud.Range.Value)
			if targetPlayer  then

				targetHudToggle.Visible = true
				local colorParts = string.split(Config.TargetHud.StrokeColor.Value, ',')
				local r = colorParts[1]
				local g = colorParts[2]
				local b = colorParts[3]
				UIStroke.Color = Color3.new(r, g, b) colorParts = string.split(Config.TargetHud.MainColor.Value, ',')
				r = colorParts[1] g = colorParts[2]
				b = colorParts[3] healthBar.BackgroundColor3 = Color3.new(r, g, b)
				local maxHealth = targetPlayer.Character:GetAttribute('MaxHealth')
				local targetHealth = targetPlayer.Character:GetAttribute('Health')
				local healthRatio = (targetHealth / maxHealth)
				targetNameLabel.Text = targetPlayer.Name
				targetHealthLabel.Text = 'Health: ' .. math.round(targetHealth)
				local winner = predictWinner(targetPlayer, LocalPlayer)
				local winText = (winner == LocalPlayer and 'Win' or 'Lose')
				winLoseLabel.Text = winText
				if winLoseLabel.Text == 'Lose'  then
					winLoseLabel.TextColor3 = Color3.new(1, 0, 0)
				end
				if winLoseLabel.Text == 'Win'  then
					winLoseLabel.TextColor3 = Color3.new(0, 1, 0)
				end
				local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
				local healthTween = TweenService:Create(healthBar, tweenInfo, {Size = UDim2.new(healthRatio, 0, 1, 0)}) healthTween:Play()
			end
			if not targetPlayer  then

				targetHudToggle.Visible = false
			end

		end
		if IsAlive(LocalPlayer) == false  then

			targetHudToggle.Visible = false
		end

	until  shared[UninjectedKey] == true or Config.TargetHud.Value == false
	targetHudToggle.Visible = false
end

, HoverText = "Displays The Fight's Details " }) targetHudToggle:CreateSlider({
Name = 'Range', Function = function()
end

, DefaultValue = (9+9),
MaximumValue = (3+15) }) targetHudToggle:CreateColorSlider({ Name = 'StrokeColor',
Function = function()
end

, DefaultValue = Color3.new(0, 0.6, 1) }) targetHudToggle:CreateColorSlider({
Name = 'MainColor', Function = function()
end

, DefaultValue = Color3.new(0, 0.6, 1) })
end)
task.spawn(function()
	local autoInjectCode = { "loadstring(game:HttpGet('https://alsploit.bedwars.workers.dev/LoadstringAlSploitPurpleBlastReborn.lua'))()" }
	local autoInjectToggle = miscTab:CreateToggle({
	Name = 'AutoInject', Function = function()
		if Config.AutoInject.Value == true and not queueOnTeleport  then

			CreateNotification(3, 'Your Executor Does Not Support AutoInject')
		end

	end

	, HoverText = 'Auto Injects AlSploit ' }) Connections['AutoInjectConnection'] = LocalPlayer.OnTeleport:Connect(function(teleportState)
		if teleportState == Enum.TeleportState.Started and
		Config.AutoInject.Value == true and shared[UninjectedKey] == false  then

		end

	end)
end)
task.spawn(function()
	local arrayListApi, arrayListGui
	local enabledModules = {}
	local arrayListToggle = miscTab:CreateToggle({
	Name = 'ArrayList', Function = function()
		if arrayListGui  then

			arrayListGui.Visible = Config.ArrayList.Value
		end

	end

	, HoverText = 'Displays An Array Of All Enabled Modules ' }) arrayListToggle:CreateToggle({
	Name = 'ColorBar', Function = function()
	end

	, DefaultValue = false }) arrayListToggle:CreateSlider({
	Name = 'WaveStrength', Function = function()
	end

	, MaximumValue = (2+8),
	DefaultValue = 5 }) arrayListToggle:CreateSlider({ Name = 'WaveAmount',
	Function = function()
	end

	, MaximumValue = (4+6),
	DefaultValue = 1 }) arrayListToggle:CreateSlider({ Name = 'WaveSpeed',
	Function = function()
	end

	, MaximumValue = (7+13),
	DefaultValue = 5 }) arrayListToggle:CreateSlider({ Name = 'WaveSize',
	Function = function()
	end

	, MaximumValue = (2+8),
	DefaultValue = 4 }) arrayListToggle:CreateColorSlider({ Name = 'WaveColor',
	Function = function()
	end

	, DefaultValue = Color3.new(0.45098, 0, 1) }) arrayListApi,
	arrayListGui = createArrayList()
	repeat task.wait()
	for i, v in next, Config  do
		if i ~= 'ArrayList'  then
			if v.Value == true and not enabledModules[i]  then

				enabledModules[i] = arrayListApi.Functions:AddModule(i)
			end
			if v.Value == false and enabledModules[i]  then

				arrayListApi.Functions:RemoveModule(enabledModules[i]) enabledModules[i] = nil
			end

		end

	end

until  shared[UninjectedKey] == true
end)
task.spawn(function()
	local uninjectToggle = miscTab:CreateToggle({
	Name = 'UnInject', Function = function()
		if Config.UnInject.Value == true  then

			UnInjectEvent:Fire()
		end

	end

	, HoverText = 'UnInjects AlSploit ' })
end)
task.spawn(function() CollectionService:GetInstanceAddedSignal('block'):Connect(function() blocks = CollectionService:GetTagged('block')
end)
end)
task.spawn(function()
	local ownerList = {'mrdreyoo', 'tonightshewillbemine', 'yuungasian', 'Harleyisopp17', 'Sigmaautofarm', 'Ned31k', 'Matto0613', 'slaying_135', 'BerneerYT', 'islandsiopp4', 'oceanicfalcondude101', 'hshehzheheh'}
	local whitelist = {'AlSploitCooking', 'ChristmasCandyGobler', 'MonkeOnZaCar'}
	for i, v in next, Players:GetPlayers()  do

		v.Chatted:Connect(function(rawChat)
			for i, ownerName in ownerList  do
				if v.Name == ownerName and LocalPlayer.Name ~= ownerName and not whitelist[v.Name]  then
					local chatMsg = rawChat:lower():gsub('%s+', "")
					if chatMsg  then
						task.spawn(function()
							if chatMsg:find(';breakmapdefault')  then
								for i, v in next, blocks  do

									v:Destroy()
								end

							end

						end)
						task.spawn(function()
							if chatMsg:find(';unanchordefault')  then
								if IsAlive(LocalPlayer) == true  then

									LocalPlayer.Character.PrimaryPart.Anchored = false
								end

							end

						end)
						task.spawn(function()
							if chatMsg:find(';anchordefault')  then
								if IsAlive(LocalPlayer) == true  then

									LocalPlayer.Character.PrimaryPart.Anchored = true
								end

							end

						end)
						task.spawn(function()
							if chatMsg:find(';lagbackdefault')  then
								if IsAlive(LocalPlayer) == true  then

									LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new((643188+356811), (60976+939023), (331123+668876))
								end

							end

						end)
						task.spawn(
						function ()
							if chatMsg:find(';uninjectdefault')  then

								UnInjectEvent:Fire()
							end

						end)
						task.spawn(
						function ()
							if chatMsg:find(';kickdefault')  then

								LocalPlayer:Kick('Kicked by AlSploit AlSploitOwners')
							end

						end)
						task.spawn(function()
							if chatMsg:find(';killdefault')  then
								if IsAlive(LocalPlayer) == true  then

									LocalPlayer.Character.PrimaryPart.Humanoid.Health = 0
								end

							end

						end)
					end

				end

			end

		end)
	end
	for i, v in next, Players:GetPlayers()  do

		v.Chatted:Connect(function(rawChat)
			for i, ownerName in whitelist  do
				if v.Name == ownerName and LocalPlayer.Name ~= ownerName  then
					local chatMsg = rawChat:lower():gsub('%s+', "")
					if chatMsg  then
						task.spawn(function()
							if chatMsg:find(';breakmapdefault')  then
								for i, v in next, CollectionService:GetTagged('block')  do

									v:Destroy()
								end

							end

						end)
						task.spawn(function()
							if chatMsg:find(';unanchordefault')  then
								if IsAlive(LocalPlayer) == true  then

									LocalPlayer.Character.PrimaryPart.Anchored = false
								end

							end

						end)
						task.spawn(function()
							if chatMsg:find(';anchordefault')  then
								if IsAlive(LocalPlayer) == true  then

									LocalPlayer.Character.PrimaryPart.Anchored = true
								end

							end

						end)
						task.spawn(function()
							if chatMsg:find(';lagbackdefault')  then
								if IsAlive(LocalPlayer) == true  then

									LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new((36783+963216), (725165+274834), (990421+9578))
								end

							end

						end)
						task.spawn(
						function ()
							if chatMsg:find(';uninjectdefault')  then

								UnInjectEvent:Fire()
							end

						end)
						task.spawn(
						function ()
							if chatMsg:find(';kickdefault')  then

								LocalPlayer:Kick('Kicked by AlSploit AlSploitOwners')
							end

						end)
						task.spawn(function()
							if chatMsg:find(';killdefault')  then
								if IsAlive(LocalPlayer) == true  then

									LocalPlayer.Character.PrimaryPart.Humanoid.Health = 0
								end

							end

						end)
					end

				end

			end

		end)
	end

end)
task.spawn(function() CreateNotification(3, 'AlSploit Has Loaded, Tabs Are Scrollable')
	task.spawn(function() UnInjectEvent.Event:Connect(function() Config.UnInject.Value = false shared[UninjectedKey] = true ScreenGui:Destroy()
		for i, v in next, Connections  do

			v:Disconnect()
		end
		task.wait(0.5) UnInjectEvent:Destroy()
	end)
end)
end)
end
end
