local A, C, L, G = unpack(DuffedUI)
local AddOnName, Engine = ...
local AddOn = LibStub('AceAddon-3.0'):NewAddon('AddOnSkins', 'AceConsole-3.0', 'AceEvent-3.0', 'AceTimer-3.0', 'AceHook-3.0')

Engine[1] = AddOn
AddOnSkins = Engine

AddOn.Locale = L
AddOn.Title = select(2, GetAddOnInfo(AddOnName))
AddOn.Version = GetAddOnMetadata(AddOnName, 'Version')

local Frame = CreateFrame('Frame')
Frame:Hide()
Frame:SetTemplate()

AddOn.DownloadLink = 'http://www.tukui.org/addons/index.php?act=view&id=221'
AddOn.LSM = LibStub('LibSharedMedia-3.0')
AddOn.Blank = AddOn.LSM:Fetch('background', 'Solid')
AddOn.NormTex = AddOn.LSM:Fetch('statusbar', 'Duffed')
AddOn.Font = AddOn.LSM:Fetch('font', 'PT Sans Narrow Bold')
AddOn.PixelFont = AddOn.LSM:Fetch('font', 'Visitor TT2 BRK')
AddOn.ActionBarFont = AddOn.LSM:Fetch('font', 'Arial')
AddOn.UIScale = UIParent:GetScale()
AddOn.Mult = 768/strmatch(GetCVar('gxResolution'), '%d+x(%d+)')/AddOn.UIScale
AddOn.BackdropColor = { Frame:GetBackdropColor() }
AddOn.BorderColor = { Frame:GetBackdropBorderColor() }

AddOn.DataTextFontSize = C['datatext'].fontsize
AddOn.InfoLeft = G.Panels.DataTextLeft
AddOn.InfoRight = G.Panels.DataTextRight
AddOn.ChatBackgroundRight = G.Panels.RightChatBackground
AddOn.ChatBackgroundLeft = G.Panels.LeftChatBackground
AddOn.TabsRightBackground = G.Panels.RightChatTabsBackground
AddOn.TabsLeftBackground = G.Panels.LeftChatTabsBackground
AddOn.Minimap = G.Maps.Minimap
AddOn.ActionBar1 = DuffedUIBar1
AddOn.ActionBar2 = DuffedUIBar2
AddOn.ActionBar3 = DuffedUIBar3
AddOn.ActionBar4 = DuffedUIBar4

function AddOn:Delay(delay, func, ...)
	A.Delay(delay, func, ...)
end