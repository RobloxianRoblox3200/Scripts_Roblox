local a=game:GetService'HttpService'local b=game:GetService'Players'local c=game
:GetService'ProximityPromptService'local d=game:GetService'ReplicatedStorage'
local e=game:GetService'RunService'local f=game:GetService'SoundService'local g=
game:GetService'Workspace'local h=game:GetService'ContentProvider'local i=game:
GetService'CoreGui'do if getgenv().doors then return end getgenv().doors=true
end do local j j=hookfunction(h.PreloadAsync,function(k,l,m)if table.find(l,i)
then local n=function(n,o)if n:match'^rbxasset://'or n:match'^rbxthumb://'then
return m(n,o)end end warn'Anticheat Check Detected'return j(k,l,n)end return j(k
,l,m)end)end local j=
[[https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/]]local k=
loadstring(game:HttpGet(j..'Library.lua'))()local l=loadstring(game:HttpGet(j..
'addons/SaveManager.lua'))()local m=loadstring(game:HttpGet(j..
'addons/ThemeManager.lua'))()local n=b.LocalPlayer local o=g.CurrentCamera local
p=Instance.new'Sound'local q=Instance.new'PointLight'local r=Instance.new
'SurfaceLight'local s=d:WaitForChild'GameData'local t=d:WaitForChild'Bricks'
local u={PadlockHint=t:WaitForChild'PadlockHint',EngageMinigame=t:WaitForChild
'EngageMinigame',ClutchHeartbeat=t:WaitForChild'ClutchHeartbeat',Screech=t:
WaitForChild'Screech'}local v={}local w=0 local x=function(x,y)k:Notify(x)if y
and Toggles.SOUND_NOTIFIER.Value then p.TimePosition=0.25 p:Play()end end local
y do y={}y.attached={}y.__index=y local z=Vector3.new(1,0,1)function y.new(A)
local B=setmetatable({instance=A,destructed=false},y)B._destroyListener=B.
instance.AncestryChanged:Connect(function(C,D)if D==nil then B:destroy()end end)
return B:constructor(A)end function y.constructor(A,B)A.root=B:WaitForChild(
'HumanoidRootPart',5)A.humanoid=B:WaitForChild('Humanoid',5)y.attached[B]=A task
.defer(A.onStart,A)return A end function y.onStart(A)A.instance.ChildAdded:
Connect(function(B)if B:IsA'Tool'then A:onToolAdded(B)end end)end function y.
onToolAdded(A,B)if B.Name=='LibraryHintPaper'then if not Toggles.PADLOCK_CODE.
Value then return end local C=B:WaitForChild('UI',1)if C then local D={}for E=1,
5 do local F=C:FindFirstChild(tostring(E),1)if F then local G=v[F.
ImageRectOffset.X/50]if G~=nil then D[E]=G end end end local E=''for F=1,5 do
local G=D[F]E=E..(G or'_')end k:Notify('[Code Parser]: '..E,10)end end end
function y.onPhysics(A,B,C)local D=Options.SPRINT_BOOST.Value if D>0 and Toggles
.SPRINT_ENABLED.Value and Options.SPRINT_KEYBIND:GetState()then local E=A.
humanoid.MoveDirection*z if E.Magnitude>0 then A.instance:TranslateBy(E*D*C)end
end end function y.destroy(A)if A.destructed then return else A.destructed=true
A._destroyListener:Disconnect()end y.attached[A.instance]=nil end end local z do
z={}z.attached={}z.__index=z function z.new(A)local B=setmetatable({instance=A,
destructed=false},z)B._destroyListener=B.instance.AncestryChanged:Connect(
function(C,D)if D==nil then B:destroy()end end)return B:constructor(A)end
function z.constructor(A,B)A.root=B:WaitForChild('HumanoidRootPart',5)A.humanoid
=B:WaitForChild('Humanoid',5)z.attached[B]=A task.defer(A.onStart,A)return A end
function z.onStart(A)end function z.render(A)end function z.destroy(A)if A.
destructed then return else A.destructed=true A._destroyListener:Disconnect()end
z.attached[A.instance]=nil end end local A do A={}A.__index=A function A.new(B)
local C=setmetatable({instance=B,destructed=false},A)C._destroyListener=b.
PlayerRemoving:Connect(function(D)if D==B then C:destroy()end end)return C:
constructor(B)end function A.constructor(B,C)task.defer(B.onStart,B)return B end
function A.onStart(B)local C=B.instance C.CharacterAdded:Connect(function(D)B:
onCharacterAdded(D)end)local D=C.Character if D then B:onCharacterAdded(D)end
end function A.onCharacterAdded(B,C)z.new(C)end function A.destroy(B)if B.
destructed then return else B.destructed=true end end end local B do B={}B.
attached={}B.__index=B local C=o.WorldToViewportPoint local D,E=Vector2.new,
CFrame.new local F=E(0,1,0)function B.new(G)local H=setmetatable({instance=G,
destructed=false},B)H._destroyListener=H.instance.AncestryChanged:Connect(
function(I,J)if J==nil then H:destroy()end end)return H:constructor(G)end
function B.constructor(G,H)local I=H local J=I:WaitForChild('FigureRagdoll',2.5)
G.root=J:WaitForChild('Root',2.5)G.quad=Drawing.new'Quad'task.defer(function()G:
onStart()B.attached[H]=G end)return G end function B.onStart(G)local H=G.quad H.
Visible=false H.Transparency=0.75 H.Color=Color3.new(1,0,0)H.Thickness=3 end
function B.render(G)local H=G.quad local I=G.root if Toggles.FIGURE_ESP.Value
then local J=I.CFrame*F local K=I.Size*1.75 local L=C(o,(J*E(K.X,K.Y,0)).
Position)local M=C(o,(J*E(-K.X,K.Y,0)).Position)local N=C(o,(J*E(-K.X,-K.Y,0)).
Position)local O=C(o,(J*E(K.X,-K.Y,0)).Position)if math.min(L.Z,M.Z,N.Z,O.Z)>0
then H.PointA=D(M.X,M.Y)H.PointB=D(L.X,L.Y)H.PointC=D(O.X,O.Y)H.PointD=D(N.X,N.Y
)H.Visible=true else H.Visible=false end else H.Visible=false end end function B
.destroy(G)if G.destructed then return else G.destructed=true G._destroyListener
:Disconnect()end B.attached[G.instance]=nil G.quad:Remove()end end local C do C=
{}C.attached={}C.__index=C local D=o.WorldToViewportPoint local E,F=Vector2.new,
CFrame.new function C.new(G)local H=setmetatable({instance=G,destructed=false},C
)H._destroyListener=H.instance.AncestryChanged:Connect(function(I,J)if J==nil
then H:destroy()end end)return H:constructor(G)end function C.constructor(G,H)G.
quad=Drawing.new'Quad'G.root=H.PrimaryPart or H:WaitForChild('RushNew',5)task.
defer(function()G:onStart()C.attached[H]=G end)return G end function C.onStart(G
)local H=G.quad H.Visible=false H.Transparency=0.75 H.Color=Color3.new(1,0,0)H.
Thickness=2 end local G=Vector3.new(0.4,0.8,0)function C.render(H)local I=H.quad
local J=H.root if Toggles.RUSH_ESP.Value then local K=J.CFrame local L=J.Size*G
local M=D(o,(K*F(L.X,L.Y,0)).Position)local N=D(o,(K*F(-L.X,L.Y,0)).Position)
local O=D(o,(K*F(-L.X,-L.Y,0)).Position)local P=D(o,(K*F(L.X,-L.Y,0)).Position)
if math.min(M.Z,N.Z,O.Z,P.Z)>0 then I.PointA=E(N.X,N.Y)I.PointB=E(M.X,M.Y)I.
PointC=E(P.X,P.Y)I.PointD=E(O.X,O.Y)I.Visible=true else I.Visible=false end else
I.Visible=false end end function C.destroy(H)if H.destructed then return else H.
destructed=true H._destroyListener:Disconnect()end C.attached[H.instance]=nil H.
quad:Remove()end end local D do D={}D.attached={}D.__index=D local E=o.
WorldToViewportPoint local F,G=Vector2.new,CFrame.new function D.new(H,I)local J
=setmetatable({instance=H,destructed=false},D)J._destroyListener=J.instance.
AncestryChanged:Connect(function(K,L)if L==nil then J:destroy()end end)return J:
constructor(H,I)end function D.constructor(H,I,J)H.roomNumber=J H.quad=Drawing.
new'Quad'task.defer(function()H:onStart()D.attached[I]=H end)return H end
function D.onStart(H)local I=H.quad I.Visible=false I.Transparency=0.6 I.
Thickness=2 end function D.render(H)local I=H.quad local J=H.instance.Door if s.
LatestRoom.Value-H.roomNumber>2 then I.Visible=false return end if Toggles.
DOOR_ESP.Value then local K=J.CFrame local L=J.Size/2 local M=E(o,(K*G(L.X,L.Y,0
)).Position)local N=E(o,(K*G(-L.X,L.Y,0)).Position)local O=E(o,(K*G(-L.X,-L.Y,0)
).Position)local P=E(o,(K*G(L.X,-L.Y,0)).Position)if math.min(M.Z,N.Z,O.Z,P.Z)>0
then I.PointA=F(N.X,N.Y)I.PointB=F(M.X,M.Y)I.PointC=F(P.X,P.Y)I.PointD=F(O.X,O.Y
)I.Color=Options.DOOR_ESP_COLOR.Value I.Visible=true else I.Visible=false end
else I.Visible=false end end function D.destroy(H)if H.destructed then return
else H.destructed=true H._destroyListener:Disconnect()end D.attached[H.instance]
=nil H.quad:Remove()end end local E do E={}E.attached={}E.__index=E local F=o.
WorldToViewportPoint local G,H=Vector2.new,CFrame.new local I=H(0,0,-0.5)
function E.new(J,K)local L=setmetatable({instance=J,destructed=false},E)L.
_destroyListener=L.instance.AncestryChanged:Connect(function(M,N)if N==nil then
L:destroy()end end)return L:constructor(J,K)end function E.constructor(J,K,L)J.
roomNum=L J.root=K:WaitForChild('Main',2.5)J.occupied=K:WaitForChild(
'HiddenPlayer',2.5)J.quad=Drawing.new'Quad'task.defer(function()J:onStart()E.
attached[K]=J end)return J end function E.onStart(J)if J.destructed then return
end local K=J.quad K.Visible=false K.Thickness=2 end function E.render(J)local K
=J.quad local L=J.root local M=J.occupied.Value if not M and Toggles.
WARDROBE_ESP.Value then local N=L.CFrame*I local O=L.Size*0.55 local P=F(o,(N*H(
O.X,O.Y,0)).Position)local Q=F(o,(N*H(-O.X,O.Y,0)).Position)local R=F(o,(N*H(-O.
X,-O.Y,0)).Position)local S=F(o,(N*H(O.X,-O.Y,0)).Position)if math.min(P.Z,Q.Z,R
.Z,S.Z)>0 then K.PointA=G(Q.X,Q.Y)K.PointB=G(P.X,P.Y)K.PointC=G(S.X,S.Y)K.PointD
=G(R.X,R.Y)K.Color=Options.WARDROBE_ESP_COLOR.Value K.Transparency=(s.LatestRoom
.Value-J.roomNum>1)and 0.1 or 0.4 K.Visible=true else K.Visible=false end else K
.Visible=false end end function E.destroy(J)if J.destructed then return else J.
destructed=true J._destroyListener:Disconnect()end E.attached[J.instance]=nil J.
quad:Remove()end end local F do F={}F.attached={}F.__index=F local G=o.
WorldToViewportPoint local H=Vector2.new(0,3)function F.new(I,J)local K=
setmetatable({instance=I,destructed=false},F)K._destroyListener=K.instance.
AncestryChanged:Connect(function(L,M)if M==nil then K:destroy()end end)return K:
constructor(I,J)end function F.constructor(I,J,K)I.name=K or J.Name I.label=
Drawing.new'Text'I.indicator=Drawing.new'Circle'I.outline=Drawing.new'Circle'
task.defer(function()I:onStart()F.attached[J]=I end)return I end function F.
onStart(I)local J,K,L=I.label,I.indicator,I.outline J.Text=I.name J.Size=18 J.
Center=true J.Outline=true J.Visible=false K.Thickness=1 K.NumSides=12 K.Radius=
5 K.Filled=true K.Visible=false L.Color=Color3.new()L.Thickness=2 L.NumSides=12
L.Radius=5 L.Filled=false L.Visible=false L.ZIndex=2 end function F.render(I)
local J,K,L=I.label,I.indicator,I.outline if Toggles.OBTAINABLE_ESP.Value then
local M,N=G(o,I.instance.Position)local O=N and M.Z>2.5 if O then local P=
Vector2.new(M.X,M.Y)J.Position=P+H K.Position=P L.Position=P local Q=Options.
OBTAINABLE_ESP_COLOR.Value J.Color=Q K.Color=Q end J.Visible=O K.Visible=O L.
Visible=O else J.Visible=false K.Visible=false L.Visible=false end end function
F.destroy(I)if I.destructed then return else I.destructed=true I.
_destroyListener:Disconnect()end F.attached[I.instance]=nil I.label:Remove()I.
indicator:Remove()I.outline:Remove()end end local G do G={}G.attached={}G.
__index=G local H=o.WorldToViewportPoint local I=Vector2.new(0,3)function G.new(
J,K)local L=setmetatable({instance=J,destructed=false},G)L._destroyListener=L.
instance.AncestryChanged:Connect(function(M,N)if N==nil then L:destroy()end end)
return L:constructor(J,K)end function G.constructor(J,K,L)J.name=L or K.Name J.
label=Drawing.new'Text'J.indicator=Drawing.new'Circle'J.outline=Drawing.new
'Circle'task.defer(function()J:onStart()G.attached[K]=J end)return J end
function G.onStart(J)local K,L,M=J.label,J.indicator,J.outline K.Text=J.name K.
Size=18 K.Center=true K.Outline=true K.Visible=false L.Thickness=1 L.NumSides=12
L.Radius=5 L.Filled=true L.Visible=false M.Color=Color3.new()M.Thickness=2 M.
NumSides=12 M.Radius=5 M.Filled=false M.Visible=false M.ZIndex=2 end function G.
render(J)local K,L,M=J.label,J.indicator,J.outline if Toggles.INTERACTABLE_ESP.
Value then local N,O=H(o,J.instance.Position)local P=O and N.Z>2.5 if P then
local Q=Vector2.new(N.X,N.Y)K.Position=Q+I L.Position=Q M.Position=Q local R=
Options.INTERACTABLE_ESP_COLOR.Value K.Color=R L.Color=R end K.Visible=P L.
Visible=P M.Visible=P else K.Visible=false L.Visible=false M.Visible=false end
end function G.destroy(J)if J.destructed then return else J.destructed=true J.
_destroyListener:Disconnect()end G.attached[J.instance]=nil J.label:Remove()J.
indicator:Remove()J.outline:Remove()end end local H do H={}H.__index=H function
H.new(I)local J=setmetatable({instance=I,destructed=false},H)J._destroyListener=
J.instance.AncestryChanged:Connect(function(K,L)if L==nil then J:destroy()end
end)return J:constructor(I)end function H.constructor(I,J)task.defer(I.onStart,I
)return I end function H.onStart(I)local J=I.instance if J.Name=='50'then task.
defer(I.onLibrary,I)task.defer(I.onFigure,I)elseif J.Name=='100'then task.defer(
I.onFigure,I)end local K=function(K)I:onDescendant(K)end J.DescendantAdded:
Connect(K)for L,M in ipairs(J:GetDescendants())do K(M)if L%500==0 then task.
wait()end end end function H.onDescendant(I,J)local K=J.Parent if J.Name=='Main'
then if K.Name=='LeverForGate'then G.new(J,'Lever')elseif K.Name=='Lighter'then
F.new(J,'Lighter')elseif K.Name=='Vitamins'then F.new(J,'Vitamins')elseif K.Name
=='Lockpick'then F.new(J,'Lockpicks')elseif K.Name=='Bandage'then F.new(J,
'Bandages')end elseif K.Name=='Door'then if J.Name=='Door'and J:IsA'MeshPart'
then D.new(K,tonumber(I.instance.Name))local L=K:FindFirstChild'Lock'if L then G
.new(L,'Lock')end end elseif K.Name=='KeyObtain'then if J.Name=='Hitbox'then F.
new(J,'Key')end elseif J.Name=='Wardrobe'then E.new(J,tonumber(I.instance.Name))
end end function H.onFigure(I)local J=I.instance local K=J:WaitForChild(
'FigureSetup',2.5)local L=B.new(K)end function H.onLibrary(I)local J=I.instance
local K=function(K)if K.Name=='Super Cool Bookshelf With Hint Book'then local L=
K:WaitForChild('LiveHintBook',2.5)if L then local M=L:WaitForChild('Base',2.5)if
M then F.new(M,'Book')end end end end local L=J:WaitForChild('Assets',5)for M,N
in ipairs(L:GetChildren())do task.defer(K,N)end L.ChildAdded:Connect(K)end
function H.destroy(I)if I.destructed then return else I.destructed=true I.
_destroyListener:Disconnect()end end end k:SetWatermark
'Linoria Community (OminousVibes)'k:Notify'Loading UI...'do local I=k:
CreateWindow'Doors'do local J=I:AddTab'Gameplay'do local K=J:AddLeftTabbox
'Modifications'local L=K:AddTab'Character Mods'L:AddToggle('SPRINT_ENABLED',{
Text='Sprint Enabled',Default=false,Tooltip=
'Enables Sprinting by pressing the Keybind'}):AddKeyPicker('SPRINT_KEYBIND',{
Text='Sprint',Default='LeftShift'})L:AddSlider('SPRINT_BOOST',{Text=
'Sprint Boost (in seconds)',Min=0,Max=20,Default=0,Rounding=1,Suffix=' studs'})L
:AddToggle('GLOW_ENABLED',{Text='Body Glow',Default=false,Tooltip=
'Adds a subtle glow for better vision'})L:AddSlider('GLOW_BRIGHTNESS',{Text=
'Glow Brightness',Min=0,Max=100,Default=0,Rounding=0,Suffix=''})local M=K:AddTab
'World Mods'M:AddToggle('REMOVE_AMBIENCE',{Text='Remove Ambience',Default=false,
Tooltip='Removes the unnecessary sounds from the world'})end do local K=J:
AddLeftTabbox'Assists'local L=K:AddTab'Minigame Assists'L:AddToggle(
'PADLOCK_CODE',{Text='Padlock Parser',Default=true,Tooltip=
'Parses the Padlock code using your Books and Paper'})L:AddToggle('BREAKER_WIN',
{Text='Breaker Assist',Default=true,Tooltip=
[[Electrical breaker will be fully completed regardless of the actual state of the switches (Room 100)]]
})L:AddToggle('AUTO_HEARTBEAT',{Text='Always Win Heartbeat Minigame',Default=
true,Tooltip='Always win the heartbeat minigame (Room 50 & 100)'})local M=K:
AddTab'Entity Assists'M:AddToggle('AUTO_SCREECH',{Text='Anti-Screech',Default=
true,Tooltip='Screech attacks no longer damage you.'})end do local K=J:
AddRightTabbox'Notifiers'local L=K:AddTab'Alerts'L:AddToggle('EVENT_NOTIFIER',{
Text='Event Notifier',Default=true,Tooltip=
'Notifies you when certain events occur'})L:AddToggle('DEBUG_NOTIFIER',{Text=
'Debug Notifier',Default=true,Tooltip='Notifies you of certain script changes'})
L:AddButton('Example Alert (Testing)',function()x(
[[[Example Alert]: This is a test alert to get you familiar with the script's notification system!]]
,true)end)local M=K:AddTab'Advanced'M:AddToggle('SOUND_NOTIFIER',{Text=
'Sound Alert',Default=true,Tooltip='Important Alerts will have sound cues!'})end
end do local J=I:AddTab'Blatant'do local K=J:AddLeftGroupbox'Prompts'K:
AddToggle('INSTANT_PROMPT',{Text='Instant Interact',Default=true,Tooltip=
'Instantly interacts with prompts'})K:AddToggle('AUTO_PROMPT',{Text=
'Automatic Interact',Default=true,Tooltip='Automaticall interacts with prompts'}
):AddKeyPicker('AUTO_PROMPT_KEYBIND',{Text='Auto-Interact',Default='V'})end end
do local J=I:AddTab'Visuals'do local K=J:AddLeftTabbox'Visuals'local L=K:AddTab
'Entity Visuals'L:AddToggle('RUSH_ESP',{Text='Rush/Ambush ESP',Default=true,
Tooltip='ESP for both Rush and Ambush Entities'})L:AddToggle('FIGURE_ESP',{Text=
'Figure ESP',Default=true,Tooltip="ESP for the entity 'Figure'"})local M=K:
AddTab'Object Visuals'M:AddToggle('DOOR_ESP',{Text='Door ESP',Default=false,
Tooltip='ESP for doors'}):AddColorPicker('DOOR_ESP_COLOR',{Title='ESP Color',
Default=Color3.new(0,0.5,1)})M:AddToggle('WARDROBE_ESP',{Text='Wardrobe ESP',
Default=false,Tooltip='ESP for Wardrobe'}):AddColorPicker('WARDROBE_ESP_COLOR',{
Title='ESP Color',Default=Color3.new(0,1,0.9)})M:AddToggle('OBTAINABLE_ESP',{
Text='Obtainable ESP',Default=true,Tooltip='ESP for items that can be picked up'
}):AddColorPicker('OBTAINABLE_ESP_COLOR',{Title='ESP Color',Default=Color3.new(1
,1,0)})M:AddToggle('INTERACTABLE_ESP',{Text='Interactable ESP',Default=true,
Tooltip='ESP for interactable items'}):AddColorPicker('INTERACTABLE_ESP_COLOR',{
Title='ESP Color',Default=Color3.new(1,1,1)})end do local K=J:AddRightGroupbox
'World Render'end end do local J=I:AddTab'Credits'local K=J:AddLeftGroupbox
'Credits'K:AddLabel'OminousVibes - Creator'K:AddLabel'Inori @v3rm - UI Library'K
:AddLabel'Aztup @v3rm - Breaker Assist'K:AddDivider()K:AddLabel'Contributors:'K:
AddLabel'> IAmAGoodScammer @v3rm'K:AddLabel'> Bob24 @v3rm'K:AddLabel
'> brickmane @v3rm'K:AddLabel'> yuuiz#1336 @Discord'K:AddDivider()K:AddLabel
'Donators:'K:AddLabel'> reversing#2937 @Discord'local L=J:AddRightGroupbox
'Socials'L:AddButton('Discord Server',function()setclipboard
'https://discord.gg/8PATx7UKXZ'end)end do local J=I:AddTab'Settings'm:
SetLibrary(k)l:SetLibrary(k)m:SetFolder'OminousVibes'l:SetFolder
'OminousVibes/doors'l:IgnoreThemeSettings()l:SetIgnoreIndexes{'MenuKeybind'}l:
BuildConfigSection(J)m:ApplyToTab(J)local K=J:AddLeftGroupbox'Menu'K:AddButton(
'Unload',function()k:Unload()end)K:AddLabel'Menu bind':AddKeyPicker(
'MenuKeybind',{Default='End',NoUI=true,Text='Menu keybind'})K:AddToggle(
'Keybinds',{Text='Show Keybinds Menu',Default=true}):OnChanged(function()k.
KeybindFrame.Visible=Toggles.Keybinds.Value end)K:AddToggle('Watermark',{Text=
'Show Watermark',Default=true}):OnChanged(function()k:SetWatermarkVisibility(
Toggles.Watermark.Value)end)end end k:Notify
'UI Built! [Right Ctrl or Right Shift]'l:LoadAutoloadConfig()do local I local J,
K=typeof,unpack local L=game.IsA I=hookmetamethod(game,'__namecall',function(M,
...)if not checkcaller()then if J(M)=='Instance'then if L(M,'RemoteEvent')then
if M==u.ClutchHeartbeat then if Toggles.AUTO_HEARTBEAT.Value then local N={...}
if not N[2]then w=(w+1)%2 if w==0 then N[2]=true else return end end return I(M,
K(N))end elseif M==u.Screech then if Toggles.AUTO_SCREECH.Value then local N={
...}N[1]=true return I(M,K(N))end end end end end return I(M,...)end)end local I
=function(I,J)for K,L in pairs(y.attached)do L:onPhysics(I,J)end end local J=
function(J)do local K=Toggles.GLOW_ENABLED.Value if K then local L=Options.
GLOW_BRIGHTNESS.Value q.Brightness=L/100 r.Brightness=L/200 local M=o.
CameraSubject.Parent if M then local N=M.PrimaryPart if N then q.Parent=N r.
Parent=N end end end q.Enabled=K r.Enabled=K end for K,L in pairs(z.attached)do
L:render(J)end for M,N in pairs(B.attached)do N:render(J)end for O,P in pairs(C.
attached)do P:render(J)end for Q,R in pairs(D.attached)do R:render(J)end for S,T
in pairs(E.attached)do T:render(J)end for U,V in pairs(G.attached)do V:render(J)
end for W,X in pairs(F.attached)do X:render(J)end end local W=function(W)if
Toggles.EVENT_NOTIFIER.Value then local X=s.ChaseStart.Value-W if 0<X and X<3
then x("[Event Notifier]: There is an event in '"..tostring(X).."' rooms!",false
)end end end local X=function()if Toggles.EVENT_NOTIFIER.Value then x(
[[[Event Notifier]: Screech spawned, quickly turn around to look at it!]],true)
end end local aa=function(Y)if Y=='ElevatorBreaker'then local Z do local _,aa=
type,table.find local ab=is_synapse_function or iskrnlclosure repeat task.wait(
0.5)for ac,ad in ipairs(getgc())do if _(ad)=='function'and islclosure(ad)and not
ab(ad)then local ae=getconstants(ad)if aa(ae,'BreakerSwitch')and aa(ae,
'GetChildren')and ae[9]==1 then if Toggles.DEBUG_NOTIFIER.Value then x(
'Breaker Switch found!',true)end Z=ad break end end if ac%500==0 then task.wait(
)end end until Z~=nil end local aa aa=hookfunction(Z,function(...)if Toggles.
BREAKER_WIN.Value then return 10 end return aa(...)end)end end local ab=function
(ab)A.new(ab)end local ac=function(ac)y.new(ac)end local ad=function(ad)if ad.
Name=='RushMoving'then if Toggles.EVENT_NOTIFIER.Value then x(
'[Event Notifier]: Rush spawned, hide quickly!',true)end C.new(ad)elseif ad.Name
=='AmbushMoving'then if Toggles.EVENT_NOTIFIER.Value then x(
[[[Event Notifier]: Ambush spawned, hide quickly! He can return up to 3-4 times!]]
,true)end C.new(ad)elseif ad.Name=='Lookman'then if Toggles.EVENT_NOTIFIER.Value
then x('[Event Notifier]: Eyes spawned, look away!',true)end end end local ae=
function(ae)H.new(ae)end e.Stepped:Connect(I)e.RenderStepped:Connect(J)b.
PlayerAdded:Connect(ab)n.CharacterAdded:Connect(ac)g.ChildAdded:Connect(ad)g.
CurrentRooms.ChildAdded:Connect(ae)s.LatestRoom.Changed:Connect(W)u.Screech.
OnClientEvent:Connect(X)u.EngageMinigame.OnClientEvent:Connect(aa)u.PadlockHint.
OnClientEvent:Connect(function(Y,Z,_)if Y and Z then v[Y]=tostring(Z)else v={}
end end)if n.Character then task.defer(ac,n.Character)end for Y,Z in ipairs(b:
GetPlayers())do if Z~=n then task.defer(ab,Z)end end for _,af in ipairs(g.
CurrentRooms:GetChildren())do task.defer(ae,af)end g:GetPropertyChangedSignal
'CurrentCamera':Connect(function()local ag=g.CurrentCamera if ag then o=ag end
end)c.PromptButtonHoldBegan:Connect(function(ag,ah)if Toggles.INSTANT_PROMPT.
Value then task.spawn(fireproximityprompt,ag)end end)c.PromptShown:Connect(
function(ag,ah)if Toggles.AUTO_PROMPT.Value and Options.AUTO_PROMPT_KEYBIND:
GetState()then task.spawn(fireproximityprompt,ag)end end)p.Name=a:GenerateGUID(
false)p.SoundId='rbxassetid://6026984224'p.Volume=6 p.Parent=f q.Range=40 r.
Range=200 return k:Notify'[Doors] Loaded! (v4)'
