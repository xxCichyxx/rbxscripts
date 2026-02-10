--!nolint
--!nocheck

--[[
    @link https://github.com/Proton-Utilities/Myriad
	
    @author Proton-Utilities
    @repository Myriad

    This file was automatically @generated with ProCMP, it is not intended for manual editing.
--]]

_P = {
    genDate = "2026-02-06T03:16:55.018960400+00:00",
    cfg = "Release",
    vers = "v1.2.0"
}

local a={cache={}}do do local b=function()local b b={cache={},load=function(c)if
not b.cache[c]then b.cache[c]={c=b[c]()}end return b.cache[c].c end}do function
b.a()local c={}c.Clone=function(d)local e if type(d)=='function'then e=
clonefunction and clonefunction(d)elseif typeof(d)=='Instance'then e=cloneref
and cloneref(d)end return e or d end c.ProtectUI=function(d)local e,f=pcall(
function()return gethui()end)local g,h=pcall(function()local g=c.Clone(game:
GetService'CoreGui')if g and g.ClassName then return g end return end)local i,j=
pcall(function()d.Parent=e and f or g and h or c.Clone(game:GetService'Players')
.LocalPlayer.PlayerGui end)return i and d or j end return c end function b.b()
return 1 end function b.c()local c={}function c.Apply(d,e,f)for g,h in pairs(d)
do if f and table.find(f,g)then continue end pcall(function()e[g]=h end)end
return e end function c.ReactiveTable(d,e)local f,g=table.clone(d or{}),{}local
h={__index=function(h,i)return f[i]end,__newindex=function(h,i,j)f[i]=j if e
then e(f)end end,__len=function()return#f end,__pairs=function()return pairs(f)
end,__ipairs=function()return ipairs(f)end,__metatable=false}return
setmetatable(g,h)end function c.Wrap(d,e,f,g)local h={}setmetatable(h,{__index=
function(i,j)if d[j]~=nil then return d[j]elseif f then local k,l=pcall(function
()return f[j]end)if k then return l end end return end,__newindex=function(i,j,k
)local l=e[j]if l then l(k)if not(g and table.find(g,j))then d[j]=k end elseif f
then local m=pcall(function()f[j]=k end)if not m then d[j]=k end else d[j]=k end
end})return h end return c end function b.d()local c,d,e=b.load'b',b.load'c',{}
function e.Value(f)local g={}return d.Wrap({Value=f,Connect=function(h,i)table.
insert(g,i)return i end},{Value=function(h)for i,j in pairs(g)do pcall(j,h)end
end})end function e.Create(f)return function(g)g=g or{}local h=Instance.new(f)
for i,j in pairs(g)do if i=='__dynamicKeys'and type(j)=='table'then for k,l in
pairs(j)do pcall(function()h[k]=l.Value end)l:Connect(function(m)task.defer(
pcall,function()if g.__contextKeys and g.__contextKeys._general then g.
__contextKeys._general()end h[k]=g.__contextKeys and g.__contextKeys[k]and g.
__contextKeys[k]()or m end)end)end continue end if typeof(j)=='table'and j.
__unique then j.Parent=h end pcall(function()h[i]=j end)end return setmetatable(
{__unique=true},{__metatable=h,__index=function(i,j)if j=='__instance'then
return h end local k=h[j]if typeof(k)=='function'then return function(l,...)
return k(h,...)end else return k end end,__newindex=function(i,j,k)h[j]=k end})
end end return e end function b.e()local c=b.load'a'local d=function(d)return c.
Clone(game:GetService(d))end return{HttpService=(d'HttpService'),TweenService=(d
'TweenService'),RunService=(d'RunService'),UserInputService=(d'UserInputService'
),GuiService=(d'GuiService'),Workspace=(d'Workspace'),Players=(d'Players'),
Lighting=(d'Lighting')}end function b.f()return{abc=
'rbxassetid://100440409146443',abs='rbxassetid://92363621005271',absBrakesignal=
'rbxassetid://96650934172241',absBrakesignalSlash='rbxassetid://99031194280970',
absCircle='rbxassetid://131263640878114',accessibility=
'rbxassetid://123674923606554',accessibilityBadgeArrowUpRight=
'rbxassetid://131591143368145',airConditionerHorizontal=
'rbxassetid://87575263873354',airConditionerVertical=
'rbxassetid://106787802446841',airplane='rbxassetid://127042155092569',
airplaneArrival='rbxassetid://125165623922032',airplaneCircle=
'rbxassetid://117680366547881',airplaneDeparture='rbxassetid://114170964619388',
airplayaudio='rbxassetid://132916942955864',airplayaudioBadgeExclamationmark=
'rbxassetid://136447514823399',airplayaudioCircle='rbxassetid://88830131647623',
airplayvideo='rbxassetid://84461284428154',airplayvideoBadgeExclamationmark=
'rbxassetid://118815409444339',airplayvideoCircle='rbxassetid://76641158810884',
airpodGen3Left='rbxassetid://120194681953744',airpodGen3Right=
'rbxassetid://104554594654809',airpodLeft='rbxassetid://127082905729968',
airpodproLeft='rbxassetid://95793086337265',airpodproRight=
'rbxassetid://74684142613428',airpodRight='rbxassetid://97787903919466',airpods=
'rbxassetid://136964903160287',airpodsChargingcase=
'rbxassetid://127604967961172',airpodsChargingcaseWireless=
'rbxassetid://128040173837707',airpodsGen3='rbxassetid://79095121374595',
airpodsGen3ChargingcaseWireless='rbxassetid://79120104892509',airpodsmax=
'rbxassetid://102938893282204',airpodspro='rbxassetid://116114855183538',
airpodsproChargingcaseWireless='rbxassetid://111093760650540',
airpodsproChargingcaseWirelessRadiowavesLeftAndRight=
'rbxassetid://137171665646568',airportExpress='rbxassetid://103598731296602',
airportExtreme='rbxassetid://81211335346183',airportExtremeTower=
'rbxassetid://135286452960382',airPurifier='rbxassetid://87703577858510',airtag=
'rbxassetid://101507304635423',airtagRadiowavesForward=
'rbxassetid://88004630385643',alarm='rbxassetid://132188666358118',
alarmWavesLeftAndRight='rbxassetid://105400305752811',alignHorizontalCenter=
'rbxassetid://95921584129344',alignHorizontalLeft='rbxassetid://106940079409954'
,alignHorizontalRight='rbxassetid://101931127005354',alignVerticalBottom=
'rbxassetid://92406406320406',alignVerticalCenter='rbxassetid://122679867744486'
,alignVerticalTop='rbxassetid://101426271263942',allergens=
'rbxassetid://87768241115636',alt='rbxassetid://89032163581958',
alternatingcurrent='rbxassetid://101357264837592',amplifier=
'rbxassetid://100107786740728',angle='rbxassetid://74330288838897',ant=
'rbxassetid://94075524151725',antCircle='rbxassetid://96475495112465',
antennaRadiowavesLeftAndRight='rbxassetid://72723891852899',
antennaRadiowavesLeftAndRightCircle='rbxassetid://117240621000245',
antennaRadiowavesLeftAndRightSlash='rbxassetid://102128620863450',app=
'rbxassetid://101315629151886',appBadge='rbxassetid://102624785615875',
appBadgeCheckmark='rbxassetid://99120212063507',appclip=
'rbxassetid://132400920175025',appDashed='rbxassetid://97103574854305',appGift=
'rbxassetid://139735193386777',appleLogo='rbxassetid://79874646000726',
applepencil='rbxassetid://71508629094546',applepencilAdapterUsbC=
'rbxassetid://104042719277026',applepencilAndScribble=
'rbxassetid://85245799946302',applepencilGen1='rbxassetid://113532794795052',
applepencilGen2='rbxassetid://139584787357503',applepencilTip=
'rbxassetid://133105725054284',applescript='rbxassetid://113292612764892',
appleTerminal='rbxassetid://105620027353765',appleTerminalOnRectangle=
'rbxassetid://108117667376805',appletv='rbxassetid://84883082397458',
appletvremoteGen1='rbxassetid://119012046125113',appletvremoteGen2=
'rbxassetid://93801259888316',appletvremoteGen3='rbxassetid://131349462839025',
appletvremoteGen4='rbxassetid://101881302490457',applewatch=
'rbxassetid://129677660779802',applewatchAndArrowForward=
'rbxassetid://94636880937571',applewatchRadiowavesLeftAndRight=
'rbxassetid://79517882888121',applewatchSideRight='rbxassetid://77458279744932',
applewatchSlash='rbxassetid://106487744048553',applewatchWatchface=
'rbxassetid://117435831221666',appsIpad='rbxassetid://121355599129544',
appsIpadLandscape='rbxassetid://74514301508288',appsIphone=
'rbxassetid://118931901091531',appsIphoneBadgePlus=
'rbxassetid://104454579409348',appsIphoneLandscape='rbxassetid://91558115971997'
,appwindowSwipeRectangle='rbxassetid://79439081300205',aqiHigh=
'rbxassetid://72062504551012',aqiLow='rbxassetid://126600553985406',aqiMedium=
'rbxassetid://82709779091864',arcadeStick='rbxassetid://93492689048821',
arcadeStickAndArrowDown='rbxassetid://107150850066094',arcadeStickAndArrowLeft=
'rbxassetid://80931908224133',arcadeStickAndArrowLeftAndArrowRight=
'rbxassetid://113538637882184',arcadeStickAndArrowRight=
'rbxassetid://118437259875645',arcadeStickAndArrowUp=
'rbxassetid://99939791639299',arcadeStickAndArrowUpAndArrowDown=
'rbxassetid://120462278152727',arcadeStickConsole='rbxassetid://70725038182070',
archivebox='rbxassetid://135383976129056',archiveboxCircle=
'rbxassetid://101202683672622',arkit='rbxassetid://73289369029656',
arkitBadgeXmark='rbxassetid://100220549336778',arrow2Squarepath=
'rbxassetid://127170986892509',arrow3Trianglepath='rbxassetid://92055746162910',
arrowBackward='rbxassetid://112330339418031',arrowBackwardCircle=
'rbxassetid://133754892259320',arrowBackwardSquare='rbxassetid://71210181227209'
,arrowBackwardToLine='rbxassetid://131149659554320',arrowBackwardToLineCircle=
'rbxassetid://105992196112787',arrowBackwardToLineSquare=
'rbxassetid://115127988659041',arrowCirclepath='rbxassetid://82375876675933',
arrowClockwise='rbxassetid://134482647457048',arrowClockwiseCircle=
'rbxassetid://124617274153370',arrowClockwiseHeart='rbxassetid://89932974116238'
,arrowClockwiseIcloud='rbxassetid://119564317606359',arrowClockwiseSquare=
'rbxassetid://82037007154063',arrowCounterclockwise=
'rbxassetid://80049773948475',arrowCounterclockwiseCircle=
'rbxassetid://82641775112281',arrowCounterclockwiseIcloud=
'rbxassetid://76284977441664',arrowCounterclockwiseSquare=
'rbxassetid://95456182343093',arrowDown='rbxassetid://120893366817058',
arrowDownAndLineHorizontalAndArrowUp='rbxassetid://105096454812767',arrowDownApp
='rbxassetid://101156186420690',arrowDownApplewatch=
'rbxassetid://120002286004487',arrowDownBackward='rbxassetid://84372422969086',
arrowDownBackwardAndArrowUpForward='rbxassetid://115506026700307',
arrowDownBackwardAndArrowUpForwardCircle='rbxassetid://132088763650225',
arrowDownBackwardAndArrowUpForwardSquare='rbxassetid://77579180067022',
arrowDownBackwardCircle='rbxassetid://139319262138804',arrowDownBackwardSquare=
'rbxassetid://87936482941174',arrowDownBackwardToptrailingRectangle=
'rbxassetid://80094690053160',arrowDownCircle='rbxassetid://135687701059912',
arrowDownCircleDotted='rbxassetid://101541376073384',arrowDownDoc=
'rbxassetid://126263364298576',arrowDownForward='rbxassetid://138429343266815',
arrowDownForwardAndArrowUpBackward='rbxassetid://105132150648607',
arrowDownForwardAndArrowUpBackwardCircle='rbxassetid://98096628303846',
arrowDownForwardAndArrowUpBackwardSquare='rbxassetid://118896379730302',
arrowDownForwardCircle='rbxassetid://114742817046266',arrowDownForwardSquare=
'rbxassetid://122244741025675',arrowDownForwardTopleadingRectangle=
'rbxassetid://92753107479824',arrowDownHeart='rbxassetid://76691901422122',
arrowDownLeft='rbxassetid://130189990980427',arrowDownLeftAndArrowUpRight=
'rbxassetid://120882682390032',arrowDownLeftAndArrowUpRightCircle=
'rbxassetid://97211898865142',arrowDownLeftAndArrowUpRightSquare=
'rbxassetid://84482192272392',arrowDownLeftArrowUpRight=
'rbxassetid://132740716083533',arrowDownLeftArrowUpRightCircle=
'rbxassetid://93754869362186',arrowDownLeftArrowUpRightSquare=
'rbxassetid://130585360415797',arrowDownLeftCircle=
'rbxassetid://131608148845778',arrowDownLeftSquare='rbxassetid://88308766003484'
,arrowDownLeftToprightRectangle='rbxassetid://114551511358264',
arrowDownLeftVideo='rbxassetid://136029105755243',arrowDownMessage=
'rbxassetid://104206901132398',arrowDownRight='rbxassetid://118950468930444',
arrowDownRightAndArrowUpLeft='rbxassetid://107180286189567',
arrowDownRightAndArrowUpLeftCircle='rbxassetid://97521353204554',
arrowDownRightAndArrowUpLeftSquare='rbxassetid://137365362823760',
arrowDownRightCircle='rbxassetid://87286697787942',arrowDownRightSquare=
'rbxassetid://91789149246769',arrowDownRightTopleftRectangle=
'rbxassetid://117892888765494',arrowDownSquare='rbxassetid://76474747966331',
arrowDownToLine='rbxassetid://83105765761411',arrowDownToLineCircle=
'rbxassetid://90947227270873',arrowDownToLineCompact=
'rbxassetid://126559109803157',arrowDownToLineSquare=
'rbxassetid://76781097145495',arrowForward='rbxassetid://112440157421837',
arrowForwardCircle='rbxassetid://96454424569563',arrowForwardSquare=
'rbxassetid://90430974943165',arrowForwardToLine='rbxassetid://93446567012878',
arrowForwardToLineCircle='rbxassetid://138601264218304',arrowForwardToLineSquare
='rbxassetid://115341155712775',arrowkeys='rbxassetid://126979603862785',
arrowLeft='rbxassetid://112148732853002',arrowLeftAndLineVerticalAndArrowRight=
'rbxassetid://114567668927782',arrowLeftAndRight='rbxassetid://79428652692177',
arrowLeftAndRightCircle='rbxassetid://115633173343620',
arrowLeftAndRightRighttriangleLeftRighttriangleRight=
'rbxassetid://103119872066027',arrowLeftAndRightSquare=
'rbxassetid://110450073968496',arrowLeftAndRightTextVertical=
'rbxassetid://75763739968686',arrowLeftArrowRight='rbxassetid://120431304356715'
,arrowLeftArrowRightCircle='rbxassetid://99428433695571',
arrowLeftArrowRightSquare='rbxassetid://87908581484568',arrowLeftCircle=
'rbxassetid://92906985394534',arrowLeftSquare='rbxassetid://108649833569730',
arrowLeftToLine='rbxassetid://91535624617729',arrowLeftToLineCircle=
'rbxassetid://109191609726535',arrowLeftToLineCompact=
'rbxassetid://137013662504945',arrowLeftToLineSquare=
'rbxassetid://88530682642886',arrowRectanglepath='rbxassetid://122042553990804',
arrowRight='rbxassetid://113471694745518',arrowRightAndLineVerticalAndArrowLeft=
'rbxassetid://91576414580063',arrowRightCircle='rbxassetid://105967295580928',
arrowRightDocOnClipboard='rbxassetid://84583825314018',arrowRightSquare=
'rbxassetid://93389575694266',arrowRightToLine='rbxassetid://90990542985129',
arrowRightToLineCircle='rbxassetid://98641567674577',arrowRightToLineCompact=
'rbxassetid://71624979668985',arrowRightToLineSquare=
'rbxassetid://102598223319183',arrowshapeBackward='rbxassetid://139167863296495'
,arrowshapeBackwardCircle='rbxassetid://107550168752276',arrowshapeBounceForward
='rbxassetid://90684323957302',arrowshapeBounceRight=
'rbxassetid://93105621166904',arrowshapeDown='rbxassetid://91829213579792',
arrowshapeDownCircle='rbxassetid://75580018546670',arrowshapeForward=
'rbxassetid://91304613238570',arrowshapeForwardCircle=
'rbxassetid://118241293673963',arrowshapeLeft='rbxassetid://122480071123738',
arrowshapeLeftArrowshapeRight='rbxassetid://91916390208501',arrowshapeLeftCircle
='rbxassetid://114939573825311',arrowshapeRight='rbxassetid://109069611579824',
arrowshapeRightCircle='rbxassetid://89120927231982',arrowshapeTurnUpBackward=
'rbxassetid://139873237324835',arrowshapeTurnUpBackward2=
'rbxassetid://127362384731831',arrowshapeTurnUpBackward2Circle=
'rbxassetid://115334220360651',arrowshapeTurnUpBackwardBadgeClock=
'rbxassetid://108299886317610',arrowshapeTurnUpBackwardCircle=
'rbxassetid://94708728708136',arrowshapeTurnUpForward=
'rbxassetid://96433164067727',arrowshapeTurnUpForwardCircle=
'rbxassetid://101016787745031',arrowshapeTurnUpLeft=
'rbxassetid://117847648137876',arrowshapeTurnUpLeft2=
'rbxassetid://132172917650912',arrowshapeTurnUpLeft2Circle=
'rbxassetid://113031615933213',arrowshapeTurnUpLeftCircle=
'rbxassetid://113730508554004',arrowshapeTurnUpRight=
'rbxassetid://72549478489418',arrowshapeTurnUpRightCircle=
'rbxassetid://94130254046801',arrowshapeUp='rbxassetid://127139131306591',
arrowshapeUpCircle='rbxassetid://137551401253095',arrowshapeZigzagForward=
'rbxassetid://130854328680399',arrowshapeZigzagRight=
'rbxassetid://129803929902665',arrowTriangle2Circlepath=
'rbxassetid://97876840821545',arrowTriangle2CirclepathCamera=
'rbxassetid://110761440206205',arrowTriangle2CirclepathCircle=
'rbxassetid://137167033413367',arrowTriangle2CirclepathDocOnClipboard=
'rbxassetid://102874106989561',arrowTriangle2CirclepathIcloud=
'rbxassetid://89703160887614',arrowtriangleBackward=
'rbxassetid://108402823194656',arrowtriangleBackwardCircle=
'rbxassetid://126152740388605',arrowtriangleBackwardSquare=
'rbxassetid://128338590587813',arrowTriangleBranch=
'rbxassetid://106848864851086',arrowTriangleCapsulepath=
'rbxassetid://79935404561753',arrowtriangleDown='rbxassetid://72787893293395',
arrowtriangleDownCircle='rbxassetid://104919990370784',arrowtriangleDownSquare=
'rbxassetid://133033956423659',arrowtriangleForward=
'rbxassetid://132838813881036',arrowtriangleForwardCircle=
'rbxassetid://103401920692169',arrowtriangleForwardSquare=
'rbxassetid://101790327314181',arrowtriangleLeft='rbxassetid://91265849254908',
arrowtriangleLeftAndLineVerticalAndArrowtriangleRight=
'rbxassetid://74633712708743',arrowtriangleLeftCircle=
'rbxassetid://96932146280238',arrowtriangleLeftSquare=
'rbxassetid://80111170074465',arrowTriangleMerge='rbxassetid://135675192910274',
arrowTrianglePull='rbxassetid://92844954623247',arrowtriangleRight=
'rbxassetid://112980405706132',
arrowtriangleRightAndLineVerticalAndArrowtriangleLeft=
'rbxassetid://127030796163985',arrowtriangleRightCircle=
'rbxassetid://99969752782206',arrowtriangleRightSquare=
'rbxassetid://99173850468552',arrowTriangleSwap='rbxassetid://127274138579155',
arrowTriangleTurnUpRightCircle='rbxassetid://81052567291587',
arrowTriangleTurnUpRightDiamond='rbxassetid://88682763036554',arrowtriangleUp=
'rbxassetid://130152840566831',arrowtriangleUpArrowtriangleDownWindowLeft=
'rbxassetid://96115161860321',arrowtriangleUpArrowtriangleDownWindowRight=
'rbxassetid://116578098264532',arrowtriangleUpCircle=
'rbxassetid://116726453583909',arrowtriangleUpSquare=
'rbxassetid://91339965289186',arrowTurnDownLeft='rbxassetid://91442849259875',
arrowTurnDownRight='rbxassetid://107664517513606',arrowTurnLeftDown=
'rbxassetid://112415091718387',arrowTurnLeftUp='rbxassetid://77538578090691',
arrowTurnRightDown='rbxassetid://109618367644978',arrowTurnRightUp=
'rbxassetid://132379012556481',arrowTurnUpForwardIphone=
'rbxassetid://120567714696276',arrowTurnUpLeft='rbxassetid://111182069278648',
arrowTurnUpRight='rbxassetid://127383771921504',arrowUp=
'rbxassetid://111856178352737',arrowUpAndDown='rbxassetid://91105704080398',
arrowUpAndDownAndArrowLeftAndRight='rbxassetid://119442452388381',
arrowUpAndDownAndSparkles='rbxassetid://82082346977957',arrowUpAndDownCircle=
'rbxassetid://82400034655781',arrowUpAndDownRighttriangleUpRighttriangleDown=
'rbxassetid://89990169721189',arrowUpAndDownSquare=
'rbxassetid://121369852320103',arrowUpAndDownTextHorizontal=
'rbxassetid://128271955363044',arrowUpAndLineHorizontalAndArrowDown=
'rbxassetid://106453726801380',arrowUpAndPersonRectanglePortrait=
'rbxassetid://125809959389147',arrowUpAndPersonRectangleTurnLeft=
'rbxassetid://112611140372325',arrowUpAndPersonRectangleTurnRight=
'rbxassetid://79601046498181',arrowUpArrowDown='rbxassetid://117712483401629',
arrowUpArrowDownCircle='rbxassetid://83035492810608',arrowUpArrowDownSquare=
'rbxassetid://115130978941629',arrowUpBackward='rbxassetid://107983217917470',
arrowUpBackwardAndArrowDownForward='rbxassetid://109026531462630',
arrowUpBackwardAndArrowDownForwardCircle='rbxassetid://110092087112749',
arrowUpBackwardAndArrowDownForwardSquare='rbxassetid://110682801676144',
arrowUpBackwardBottomtrailingRectangle='rbxassetid://115337472931506',
arrowUpBackwardCircle='rbxassetid://79903026800100',arrowUpBackwardSquare=
'rbxassetid://89344345422929',arrowUpBin='rbxassetid://103441767152543',
arrowUpCircle='rbxassetid://88743831776989',arrowUpCircleBadgeClock=
'rbxassetid://95368924706561',arrowUpDoc='rbxassetid://130298316589925',
arrowUpDocOnClipboard='rbxassetid://99871373237994',arrowUpForward=
'rbxassetid://124167135098864',arrowUpForwardAndArrowDownBackward=
'rbxassetid://122592705614034',arrowUpForwardAndArrowDownBackwardCircle=
'rbxassetid://128471028094648',arrowUpForwardAndArrowDownBackwardSquare=
'rbxassetid://137585471458270',arrowUpForwardApp='rbxassetid://131933740133848',
arrowUpForwardBottomleadingRectangle='rbxassetid://110999766641418',
arrowUpForwardCircle='rbxassetid://84932697750141',arrowUpForwardSquare=
'rbxassetid://105444809401712',arrowUpHeart='rbxassetid://83799612279671',
arrowUpLeft='rbxassetid://89584947457099',arrowUpLeftAndArrowDownRight=
'rbxassetid://133598790392386',arrowUpLeftAndArrowDownRightCircle=
'rbxassetid://80058763516940',arrowUpLeftAndArrowDownRightSquare=
'rbxassetid://75206026448263',arrowUpLeftAndDownRightAndArrowUpRightAndDownLeft=
'rbxassetid://117463534086629',arrowUpLeftAndDownRightMagnifyingglass=
'rbxassetid://99438628725161',arrowUpLeftArrowDownRight=
'rbxassetid://95766864812549',arrowUpLeftArrowDownRightCircle=
'rbxassetid://106024952650012',arrowUpLeftArrowDownRightSquare=
'rbxassetid://124857889894711',arrowUpLeftBottomrightRectangle=
'rbxassetid://78150263178639',arrowUpLeftCircle='rbxassetid://135419340258594',
arrowUpLeftSquare='rbxassetid://125710552388487',arrowUpMessage=
'rbxassetid://77428852209968',arrowUpRight='rbxassetid://127621375626588',
arrowUpRightAndArrowDownLeft='rbxassetid://101550387789265',
arrowUpRightAndArrowDownLeftCircle='rbxassetid://139655733055978',
arrowUpRightAndArrowDownLeftRectangle='rbxassetid://125852488466248',
arrowUpRightAndArrowDownLeftSquare='rbxassetid://130088797723364',
arrowUpRightBottomleftRectangle='rbxassetid://123634959623435',
arrowUpRightCircle='rbxassetid://87672337890293',arrowUpRightSquare=
'rbxassetid://100256620819416',arrowUpRightVideo='rbxassetid://109165767612830',
arrowUpSquare='rbxassetid://102337880166856',arrowUpToLine=
'rbxassetid://92193992915403',arrowUpToLineCircle='rbxassetid://95928377013785',
arrowUpToLineCompact='rbxassetid://93450807056034',arrowUpToLineSquare=
'rbxassetid://121356256036839',arrowUpTrash='rbxassetid://136982732917435',
arrowUturnBackward='rbxassetid://78250853479442',arrowUturnBackwardCircle=
'rbxassetid://71359517271199',arrowUturnBackwardCircleBadgeEllipsis=
'rbxassetid://78974954556644',arrowUturnBackwardSquare=
'rbxassetid://131836344415760',arrowUturnDown='rbxassetid://127565271196418',
arrowUturnDownCircle='rbxassetid://131605343986849',arrowUturnDownSquare=
'rbxassetid://134417927642187',arrowUturnForward='rbxassetid://117370895244584',
arrowUturnForwardCircle='rbxassetid://124855208121735',arrowUturnForwardSquare=
'rbxassetid://85497760936396',arrowUturnLeft='rbxassetid://95143979400512',
arrowUturnLeftCircle='rbxassetid://112874051033671',
arrowUturnLeftCircleBadgeEllipsis='rbxassetid://81250043023237',
arrowUturnLeftSquare='rbxassetid://90011875127193',arrowUturnRight=
'rbxassetid://99994475531343',arrowUturnRightCircle=
'rbxassetid://112768238689058',arrowUturnRightSquare=
'rbxassetid://77154714933245',arrowUturnUp='rbxassetid://118464251843876',
arrowUturnUpCircle='rbxassetid://104690230461758',arrowUturnUpSquare=
'rbxassetid://103879252728271',aspectratio='rbxassetid://108017962786655',
asterisk='rbxassetid://135733799281280',asteriskCircle=
'rbxassetid://94002783368127',at='rbxassetid://123781978634436',atBadgeMinus=
'rbxassetid://131415499619133',atBadgePlus='rbxassetid://87035690727729',
atCircle='rbxassetid://122313756366525',atom='rbxassetid://78600959704648',
australiandollarsign='rbxassetid://81507067071133',australiandollarsignCircle=
'rbxassetid://78244495216255',australiandollarsignSquare=
'rbxassetid://125724737766857',australsign='rbxassetid://83481295842654',
australsignCircle='rbxassetid://96531120709701',australsignSquare=
'rbxassetid://73994125116439',automaticBrakesignal=
'rbxassetid://140256406585296',automaticHeadlightHighBeam=
'rbxassetid://92403405363212',automaticHeadlightLowBeam=
'rbxassetid://108776917846957',autostartstop='rbxassetid://77380688725931',
autostartstopSlash='rbxassetid://88305884098022',
autostartstopTrianglebadgeExclamationmark='rbxassetid://99812312476607',avRemote
='rbxassetid://140422938965747',axle2='rbxassetid://77816815434149',
axle2DriveshaftDisengaged='rbxassetid://71544277492160',axle2FrontAndRearEngaged
='rbxassetid://114394723695103',axle2FrontDisengaged=
'rbxassetid://76811726503902',axle2FrontEngaged='rbxassetid://93754956923695',
axle2RearDisengaged='rbxassetid://107454941272936',axle2RearEngaged=
'rbxassetid://122267575954087',axle2RearLock='rbxassetid://82332614339521',
backpack='rbxassetid://138470539701582',backpackCircle=
'rbxassetid://133623902024586',backward='rbxassetid://132891262469005',
backwardCircle='rbxassetid://110874661858454',backwardEnd=
'rbxassetid://133316887211041',backwardEndAlt='rbxassetid://131463770655563',
backwardEndCircle='rbxassetid://120552658756659',backwardFrame=
'rbxassetid://79607616390210',badgePlusRadiowavesForward=
'rbxassetid://132464432229186',badgePlusRadiowavesRight=
'rbxassetid://107805764320302',bag='rbxassetid://98838042666176',bagBadgeMinus=
'rbxassetid://75393349013094',bagBadgePlus='rbxassetid://85996805561778',
bagBadgeQuestionmark='rbxassetid://79526326813516',bagCircle=
'rbxassetid://73082954287278',bahtsign='rbxassetid://117968192591538',
bahtsignCircle='rbxassetid://74465184790378',bahtsignSquare=
'rbxassetid://131162278838168',balloon='rbxassetid://99823122145564',balloon2=
'rbxassetid://93507693460257',bandage='rbxassetid://130780589444721',banknote=
'rbxassetid://108069782154566',barcode='rbxassetid://136753767679432',
barcodeViewfinder='rbxassetid://118601521304332',barometer=
'rbxassetid://135390591486370',baseball='rbxassetid://105717198391714',
baseballCircle='rbxassetid://92833075753616',baseballDiamondBases=
'rbxassetid://110684655482592',basket='rbxassetid://93773308549052',basketball=
'rbxassetid://137444151625842',basketballCircle='rbxassetid://72528201476323',
bathtub='rbxassetid://81614353294538',battery0percent=
'rbxassetid://81581331009197',battery100percent='rbxassetid://125062056047608',
battery100percentBolt='rbxassetid://111370651983069',battery100percentCircle=
'rbxassetid://127835112877390',battery25percent='rbxassetid://73260132652169',
battery50percent='rbxassetid://138488004814227',battery75percent=
'rbxassetid://114027737135751',batteryblock='rbxassetid://108402200743221',
batteryblockSlash='rbxassetid://113307132229111',beachUmbrella=
'rbxassetid://114722837605511',beatsEarphones='rbxassetid://128677622725363',
beatsFitPro='rbxassetid://122083986744951',beatsFitProChargingcase=
'rbxassetid://120936645934230',beatsFitProLeft='rbxassetid://116602459616537',
beatsFitProRight='rbxassetid://119699746025879',beatsHeadphones=
'rbxassetid://102560034462751',beatsPowerbeats='rbxassetid://110704356814585',
beatsPowerbeats3='rbxassetid://99495669230030',beatsPowerbeats3Left=
'rbxassetid://127696382982014',beatsPowerbeats3Right=
'rbxassetid://92002254150732',beatsPowerbeatsLeft='rbxassetid://94031639892774',
beatsPowerbeatspro='rbxassetid://91388282815385',beatsPowerbeatsproChargingcase=
'rbxassetid://129174227736582',beatsPowerbeatsproLeft=
'rbxassetid://132454103156247',beatsPowerbeatsproRight=
'rbxassetid://121014913156174',beatsPowerbeatsRight=
'rbxassetid://139808468287937',beatsStudiobudLeft='rbxassetid://123610938062441'
,beatsStudiobudRight='rbxassetid://92812822483138',beatsStudiobuds=
'rbxassetid://87614277962771',beatsStudiobudsChargingcase=
'rbxassetid://136547753864530',beatsStudiobudsplus='rbxassetid://71975225998517'
,beatsStudiobudsplusChargingcase='rbxassetid://125879752007426',
beatsStudiobudsplusLeft='rbxassetid://111603577383991',beatsStudiobudsplusRight=
'rbxassetid://118741913661751',bedDouble='rbxassetid://126743498549074',
bedDoubleCircle='rbxassetid://93060808599688',bell=
'rbxassetid://108730354061577',bellAndWavesLeftAndRight=
'rbxassetid://135794959340299',bellBadge='rbxassetid://126861827876338',
bellBadgeCircle='rbxassetid://120944439956890',bellBadgeSlash=
'rbxassetid://97481645339034',bellBadgeWaveform='rbxassetid://116078028991384',
bellCircle='rbxassetid://89781868535223',bellSlash=
'rbxassetid://106134669703906',bellSlashCircle='rbxassetid://82705838720523',
bellSquare='rbxassetid://120750810111193',bicycle='rbxassetid://73108279549194',
bicycleCircle='rbxassetid://114098204063015',binoculars=
'rbxassetid://113174504252721',binocularsCircle='rbxassetid://109842784819874',
bird='rbxassetid://105045939393151',birdCircle='rbxassetid://116806463752157',
birthdayCake='rbxassetid://121877168692995',bitcoinsign=
'rbxassetid://111289432710524',bitcoinsignCircle='rbxassetid://111900725194210',
bitcoinsignSquare='rbxassetid://102186923930539',blindsHorizontalClosed=
'rbxassetid://131273464201939',blindsHorizontalOpen=
'rbxassetid://80664504714325',blindsVerticalClosed=
'rbxassetid://138542860108094',blindsVerticalOpen='rbxassetid://97675169021680',
bold='rbxassetid://83774109857539',boldItalicUnderline=
'rbxassetid://107993526243245',boldUnderline='rbxassetid://116346273632115',bolt
='rbxassetid://77814408500232',boltBadgeAutomatic='rbxassetid://73516208495655',
boltBadgeCheckmark='rbxassetid://92057948269674',boltBadgeClock=
'rbxassetid://91664084918442',boltBadgeXmark='rbxassetid://132991794262973',
boltBatteryblock='rbxassetid://127600797242051',boltBrakesignal=
'rbxassetid://78092425535693',boltCar='rbxassetid://122505580659266',
boltCarCircle='rbxassetid://99602827629942',boltCircle=
'rbxassetid://104194065853669',boltHeart='rbxassetid://74340142617776',
boltHorizontal='rbxassetid://140147034069655',boltHorizontalCircle=
'rbxassetid://96064124853270',boltHorizontalIcloud=
'rbxassetid://139269108237141',boltRingClosed='rbxassetid://72946728121681',
boltShield='rbxassetid://101835060527618',boltSlash=
'rbxassetid://72834901637431',boltSlashCircle='rbxassetid://121063130817047',
boltSquare='rbxassetid://110722856720397',boltTrianglebadgeExclamationmark=
'rbxassetid://95601421061653',bonjour='rbxassetid://119338913505343',book=
'rbxassetid://124521438156260',bookAndWrench='rbxassetid://75665502438670',
bookCircle='rbxassetid://93034857300426',bookClosed=
'rbxassetid://125163356428251',bookClosedCircle='rbxassetid://102723323908022',
bookmark='rbxassetid://83006767513596',bookmarkCircle=
'rbxassetid://87706305557149',bookmarkSlash='rbxassetid://85980073948000',
bookmarkSquare='rbxassetid://128061657297278',bookPages=
'rbxassetid://94438500659706',booksVertical='rbxassetid://139165548005884',
booksVerticalCircle='rbxassetid://118418837844188',brain=
'rbxassetid://129788246923948',brainHeadProfile='rbxassetid://78520739010036',
brakesignal='rbxassetid://104910257831620',brakesignalDashed=
'rbxassetid://135892472888282',brazilianrealsign='rbxassetid://100249158064866',
brazilianrealsignCircle='rbxassetid://100582404893766',brazilianrealsignSquare=
'rbxassetid://80811936202304',briefcase='rbxassetid://124399879307020',
briefcaseCircle='rbxassetid://112640004758209',bubble=
'rbxassetid://121181767293645',bubbleCircle='rbxassetid://100446732387558',
bubbleLeft='rbxassetid://132260167571866',bubbleLeftAndBubbleRight=
'rbxassetid://108345337858311',bubbleLeftAndExclamationmarkBubbleRight=
'rbxassetid://98835807201120',bubbleLeftAndTextBubbleRight=
'rbxassetid://80847191799259',bubbleLeftCircle='rbxassetid://101780262453207',
bubbleMiddleBottom='rbxassetid://121682393260567',bubbleMiddleTop=
'rbxassetid://128275401894534',bubbleRight='rbxassetid://123596782040427',
bubbleRightCircle='rbxassetid://92487414704155',bubblesAndSparkles=
'rbxassetid://100289524317057',building='rbxassetid://74497526931655',building2=
'rbxassetid://135140327189124',building2CropCircle='rbxassetid://72550003313773'
,buildingColumns='rbxassetid://108085258638798',buildingColumnsCircle=
'rbxassetid://93580334594628',burn='rbxassetid://89637301912553',burst=
'rbxassetid://92440263503096',bus='rbxassetid://115545056568030',busDoubledecker
='rbxassetid://82490981170964',buttonAngledbottomHorizontalLeft=
'rbxassetid://112508711185074',buttonAngledbottomHorizontalRight=
'rbxassetid://83042582871795',buttonAngledtopVerticalLeft=
'rbxassetid://129728846581610',buttonAngledtopVerticalRight=
'rbxassetid://79101463236867',buttonHorizontal='rbxassetid://85760977216388',
buttonHorizontalTopPress='rbxassetid://85724854788946',buttonProgrammable=
'rbxassetid://128094815365200',buttonProgrammableSquare=
'rbxassetid://137938822603298',buttonRoundedbottomHorizontal=
'rbxassetid://122394857086713',buttonRoundedtopHorizontal=
'rbxassetid://135194862562191',buttonVerticalLeftPress=
'rbxassetid://98503025569985',buttonVerticalRightPress=
'rbxassetid://122635214533801',cabinet='rbxassetid://81281632410063',cablecar=
'rbxassetid://133177411473534',cableCoaxial='rbxassetid://103420466609414',
cableConnector='rbxassetid://95250523182971',cableConnectorHorizontal=
'rbxassetid://70561861308742',calendar='rbxassetid://79737535968642',
calendarBadgeCheckmark='rbxassetid://92566052530481',calendarBadgeClock=
'rbxassetid://133151027082077',calendarBadgeExclamationmark=
'rbxassetid://103967581920764',calendarBadgeMinus='rbxassetid://77213466439908',
calendarBadgePlus='rbxassetid://135617859505274',calendarCircle=
'rbxassetid://139255178536196',calendarDayTimelineLeading=
'rbxassetid://110169793705336',calendarDayTimelineLeft=
'rbxassetid://83107748344167',calendarDayTimelineRight=
'rbxassetid://128069220873510',calendarDayTimelineTrailing=
'rbxassetid://94165568872184',camera='rbxassetid://89945218134735',
cameraAperture='rbxassetid://121021899879686',cameraBadgeClock=
'rbxassetid://90354003604291',cameraBadgeEllipsis='rbxassetid://77877495990287',
cameraCircle='rbxassetid://117792452185137',cameraFilters=
'rbxassetid://88884914634550',cameraMacro='rbxassetid://121686355573677',
cameraMacroCircle='rbxassetid://132499999252329',cameraMeteringCenterWeighted=
'rbxassetid://135180300846700',cameraMeteringCenterWeightedAverage=
'rbxassetid://80836917877860',cameraMeteringMatrix=
'rbxassetid://122445534316129',cameraMeteringMultispot=
'rbxassetid://80813301305780',cameraMeteringNone='rbxassetid://74827096541791',
cameraMeteringPartial='rbxassetid://112665922615550',cameraMeteringSpot=
'rbxassetid://131215279883358',cameraMeteringUnknown=
'rbxassetid://126456725091662',cameraOnRectangle='rbxassetid://116668205210476',
cameraShutterButton='rbxassetid://79414983850348',cameraViewfinder=
'rbxassetid://137705914346946',candybarphone='rbxassetid://116310078266047',
capslock='rbxassetid://123582242109746',capsule='rbxassetid://106985446772776',
capsulePortrait='rbxassetid://89385301062049',captionsBubble=
'rbxassetid://89989991166798',car='rbxassetid://115153742682128',car2=
'rbxassetid://116564015801554',carbonDioxideCloud='rbxassetid://133052361872033'
,carbonMonoxideCloud='rbxassetid://131055011171872',carCircle=
'rbxassetid://132581565652122',carFerry='rbxassetid://104827520064780',
carFrontWavesDown='rbxassetid://71909428020274',carFrontWavesUp=
'rbxassetid://121003264407064',carRear='rbxassetid://90389088164488',
carRearAndCollisionRoadLane='rbxassetid://113072294097363',
carRearAndCollisionRoadLaneSlash='rbxassetid://95948320037424',
carRearAndTireMarks='rbxassetid://85848895837438',carRearAndTireMarksSlash=
'rbxassetid://105424568839530',carRearRoadLane='rbxassetid://126400036756316',
carRearRoadLaneDashed='rbxassetid://93490888998771',carRearWavesUp=
'rbxassetid://80379521726788',carrot='rbxassetid://128338494668133',carseatLeft=
'rbxassetid://124545647301837',carseatLeft1='rbxassetid://84991921100225',
carseatLeft2='rbxassetid://125508996576995',carseatLeft3=
'rbxassetid://128807976947540',carseatLeftAndHeatWaves=
'rbxassetid://89340686855058',carseatLeftBackrestUpAndDown=
'rbxassetid://99156812446355',carseatLeftFan='rbxassetid://85239862425416',
carseatLeftForwardAndBackward='rbxassetid://85883335040617',carseatLeftMassage=
'rbxassetid://137727800253714',carseatLeftUpAndDown=
'rbxassetid://112260720116054',carseatRight='rbxassetid://72498729253038',
carseatRight1='rbxassetid://86480375690352',carseatRight2=
'rbxassetid://96594379970529',carseatRight3='rbxassetid://122376174266552',
carseatRightAndHeatWaves='rbxassetid://138333397539530',
carseatRightBackrestUpAndDown='rbxassetid://114831566768144',carseatRightFan=
'rbxassetid://123689986058189',carseatRightForwardAndBackward=
'rbxassetid://133004310755748',carseatRightMassage=
'rbxassetid://117334096975830',carseatRightUpAndDown=
'rbxassetid://70729000477643',carSide='rbxassetid://109616461699485',
carSideAirCirculate='rbxassetid://73877967301036',carSideAirFresh=
'rbxassetid://133762480386821',carSideAndExclamationmark=
'rbxassetid://106343950431395',carSideArrowtriangleDown=
'rbxassetid://73802432977067',carSideArrowtriangleUp=
'rbxassetid://79548639152596',carSideArrowtriangleUpArrowtriangleDown=
'rbxassetid://100048646452150',carSideFrontOpen='rbxassetid://136367260185019',
carSideHillDown='rbxassetid://96457938763632',carSideHillUp=
'rbxassetid://111323010786312',carSideLock='rbxassetid://134729528233973',
carSideLockOpen='rbxassetid://135145360628317',
carSideRearAndCollisionAndCarSideFront='rbxassetid://120814411842447',
carSideRearAndCollisionAndCarSideFrontSlash='rbxassetid://90060210242892',
carSideRearAndExclamationmarkAndCarSideFront='rbxassetid://127169373734278',
carSideRearAndWave3AndCarSideFront='rbxassetid://95489511581489',carSideRearOpen
='rbxassetid://85197467865979',cart='rbxassetid://71113964288896',cartBadgeMinus
='rbxassetid://83371939881266',cartBadgePlus='rbxassetid://117262987573775',
cartBadgeQuestionmark='rbxassetid://78032512277063',cartCircle=
'rbxassetid://95648168138395',
carTopDoorFrontLeftAndFrontRightAndRearLeftAndRearRightOpen=
'rbxassetid://108598631957590',carTopDoorFrontLeftAndFrontRightAndRearLeftOpen=
'rbxassetid://130484365029093',carTopDoorFrontLeftAndFrontRightAndRearRightOpen=
'rbxassetid://101557881323023',carTopDoorFrontLeftAndFrontRightOpen=
'rbxassetid://132390047435333',carTopDoorFrontLeftAndRearLeftAndRearRightOpen=
'rbxassetid://78637858995180',carTopDoorFrontLeftAndRearLeftOpen=
'rbxassetid://77496058782553',carTopDoorFrontLeftAndRearRightOpen=
'rbxassetid://70934670701281',carTopDoorFrontLeftOpen=
'rbxassetid://83046254227023',carTopDoorFrontRightAndRearLeftAndRearRightOpen=
'rbxassetid://130499786065614',carTopDoorFrontRightAndRearLeftOpen=
'rbxassetid://83329821885376',carTopDoorFrontRightAndRearRightOpen=
'rbxassetid://137845766165561',carTopDoorFrontRightOpen=
'rbxassetid://101010465641416',carTopDoorRearLeftAndRearRightOpen=
'rbxassetid://140635292616652',carTopDoorRearLeftOpen=
'rbxassetid://92523230565215',carTopDoorRearRightOpen=
'rbxassetid://77498034305859',carTopDoorSlidingLeftOpen=
'rbxassetid://131575928322126',carTopDoorSlidingRightOpen=
'rbxassetid://96829472136151',carTopFrontleftArrowtriangle=
'rbxassetid://74249929591233',carTopFrontrightArrowtriangle=
'rbxassetid://109439050535736',carTopLaneDashedArrowtriangleInward=
'rbxassetid://107753556864574',carTopLaneDashedBadgeSteeringwheel=
'rbxassetid://88219271332073',carTopLaneDashedDepartureLeft=
'rbxassetid://70900086945448',carTopLaneDashedDepartureRight=
'rbxassetid://118329210410561',carTopRadiowavesFront=
'rbxassetid://78359206006645',carTopRadiowavesRear='rbxassetid://95204667543944'
,carTopRadiowavesRearLeft='rbxassetid://80735865854484',
carTopRadiowavesRearLeftAndRearRight='rbxassetid://123738562081264',
carTopRadiowavesRearRight='rbxassetid://108911165934290',
carTopRadiowavesRearRightBadgeExclamationmark='rbxassetid://125767316989449',
carTopRadiowavesRearRightBadgeXmark='rbxassetid://119234831010228',
carTopRearleftArrowtriangle='rbxassetid://132477167189845',
carTopRearrightArrowtriangle='rbxassetid://121164497326761',carWindowLeft=
'rbxassetid://70748317264596',carWindowLeftBadgeExclamationmark=
'rbxassetid://128276495074253',carWindowLeftBadgeXmark=
'rbxassetid://79678942064243',carWindowLeftExclamationmark=
'rbxassetid://82765470370277',carWindowLeftXmark='rbxassetid://120073506868750',
carWindowRight='rbxassetid://104730160216324',carWindowRightBadgeExclamationmark
='rbxassetid://103368616894295',carWindowRightBadgeXmark=
'rbxassetid://115233984600523',carWindowRightExclamationmark=
'rbxassetid://125449141066791',carWindowRightXmark=
'rbxassetid://105589769492092',caseGylph='rbxassetid://72684442825623',cat=
'rbxassetid://86250189983975',catCircle='rbxassetid://116692607667199',cedisign=
'rbxassetid://138194758451812',cedisignCircle='rbxassetid://70892433228320',
cedisignSquare='rbxassetid://114577853488285',cellularbars=
'rbxassetid://118727231524691',centsign='rbxassetid://113858962126518',
centsignCircle='rbxassetid://78942375468913',centsignSquare=
'rbxassetid://109963001152676',chair='rbxassetid://99351023008668',chairLounge=
'rbxassetid://124785536550390',chandelier='rbxassetid://97485955489896',
character='rbxassetid://114226612873891',characterBookClosed=
'rbxassetid://103867459841635',characterBubble='rbxassetid://106288947807251',
characterCursorIbeam='rbxassetid://139717327157810',characterDuployan=
'rbxassetid://126435179210700',characterMagnify='rbxassetid://131262156040245',
characterPhonetic='rbxassetid://71143117808156',characterSutton=
'rbxassetid://85613883152868',characterTextbox='rbxassetid://138841230915690',
chartBar='rbxassetid://120914655002595',chartBarDocHorizontal=
'rbxassetid://88206449206082',chartBarXaxis='rbxassetid://95434020393724',
chartBarXaxisAscending='rbxassetid://137366011712039',
chartBarXaxisAscendingBadgeClock='rbxassetid://127422554007788',chartDotsScatter
='rbxassetid://137901928504735',chartLineDowntrendXyaxis=
'rbxassetid://94170918152103',chartLineDowntrendXyaxisCircle=
'rbxassetid://72965720912136',chartLineFlattrendXyaxis=
'rbxassetid://124173279630795',chartLineFlattrendXyaxisCircle=
'rbxassetid://129203535753585',chartLineUptrendXyaxis=
'rbxassetid://91058186938159',chartLineUptrendXyaxisCircle=
'rbxassetid://88433500523242',chartPie='rbxassetid://118850574017813',
chartXyaxisLine='rbxassetid://71242960230090',checklist=
'rbxassetid://96123412349358',checklistChecked='rbxassetid://122249488419579',
checklistUnchecked='rbxassetid://134179298991627',checkmark=
'rbxassetid://80083151652572',checkmarkApplewatch='rbxassetid://110475735660132'
,checkmarkBubble='rbxassetid://95299383343238',checkmarkCircle=
'rbxassetid://121827912892409',checkmarkCircleBadgeQuestionmark=
'rbxassetid://109911703727305',checkmarkCircleBadgeXmark=
'rbxassetid://125191621241355',checkmarkCircleTrianglebadgeExclamationmark=
'rbxassetid://102919651395256',checkmarkDiamond='rbxassetid://81113321311196',
checkmarkGobackward='rbxassetid://137921605172447',checkmarkIcloud=
'rbxassetid://135240021766953',checkmarkMessage='rbxassetid://99999620075692',
checkmarkRectangle='rbxassetid://134026532600049',checkmarkRectanglePortrait=
'rbxassetid://128354501518090',checkmarkRectangleStack=
'rbxassetid://126501144040860',checkmarkSeal='rbxassetid://76205965014688',
checkmarkShield='rbxassetid://128784966069296',checkmarkSquare=
'rbxassetid://125568270907833',chevronBackward='rbxassetid://127673100954233',
chevronBackward2='rbxassetid://112420395416746',chevronBackwardCircle=
'rbxassetid://120258319549735',chevronBackwardSquare=
'rbxassetid://103813658867200',chevronBackwardToLine=
'rbxassetid://73724127355493',chevronCompactDown='rbxassetid://123343315778119',
chevronCompactLeft='rbxassetid://139766380434950',chevronCompactRight=
'rbxassetid://120598715794326',chevronCompactUp='rbxassetid://113243988937759',
chevronDown='rbxassetid://99166577372338',chevronDownCircle=
'rbxassetid://138287742474054',chevronDownSquare='rbxassetid://127265632433023',
chevronForward='rbxassetid://94291254481690',chevronForward2=
'rbxassetid://97296978339607',chevronForwardCircle='rbxassetid://90929840523469'
,chevronForwardSquare='rbxassetid://94543441555166',chevronForwardToLine=
'rbxassetid://97974884959841',chevronLeft='rbxassetid://117321898070552',
chevronLeft2='rbxassetid://108003712086139',chevronLeftCircle=
'rbxassetid://76379402917087',chevronLeftForwardslashChevronRight=
'rbxassetid://111664725689720',chevronLeftSquare='rbxassetid://80698792237138',
chevronLeftToLine='rbxassetid://79628568689866',chevronRight=
'rbxassetid://109778622420693',chevronRight2='rbxassetid://78199972337874',
chevronRightCircle='rbxassetid://105626450271578',chevronRightSquare=
'rbxassetid://90408944876173',chevronRightToLine='rbxassetid://124411396279525',
chevronUp='rbxassetid://95197501590678',chevronUpChevronDown=
'rbxassetid://119655894508741',chevronUpCircle='rbxassetid://81279484459134',
chevronUpSquare='rbxassetid://95431538878093',chineseyuanrenminbisign=
'rbxassetid://75882360999685',chineseyuanrenminbisignCircle=
'rbxassetid://135786634031595',chineseyuanrenminbisignSquare=
'rbxassetid://79544727771157',circle='rbxassetid://74410186179968',
circleAndLineHorizontal='rbxassetid://92654051225554',circlebadge=
'rbxassetid://126366967492086',circlebadge2='rbxassetid://116487408579648',
circleBadgeCheckmark='rbxassetid://118978624242448',circleBadgeExclamationmark=
'rbxassetid://130393081242396',circleBadgeMinus='rbxassetid://124877272219219',
circleBadgePlus='rbxassetid://118985536139784',circleBadgeQuestionmark=
'rbxassetid://111471516894446',circleBadgeXmark='rbxassetid://111853652482990',
circleBottomrighthalfCheckered='rbxassetid://122575558098594',circleCircle=
'rbxassetid://103394163979695',circleDashed='rbxassetid://136105292255368',
circleDashedRectangle='rbxassetid://85645366423225',circleDotted=
'rbxassetid://95633055010341',circleDottedAndCircle=
'rbxassetid://122294143799868',circleDottedCircle='rbxassetid://99752875727555',
circleGrid2x1='rbxassetid://84143860653224',circleGrid2x2=
'rbxassetid://139778243806459',circleGrid3x3='rbxassetid://120098734006282',
circleGrid3x3Circle='rbxassetid://130310006903024',circleGridCross=
'rbxassetid://123340667472948',circleHexagongrid='rbxassetid://78813009330205',
circleHexagongridCircle='rbxassetid://106106095478285',circleHexagonpath=
'rbxassetid://134952566153330',circleLefthalfStripedHorizontal=
'rbxassetid://92754097690861',circleLefthalfStripedHorizontalInverse=
'rbxassetid://120946268346026',circleRectangleDashed=
'rbxassetid://79965725599780',circleSlash='rbxassetid://102561151406059',
circleSquare='rbxassetid://82264224373098',clear='rbxassetid://112156642973884',
clipboard='rbxassetid://81027244001527',clock='rbxassetid://71865878247301',
clockArrow2Circlepath='rbxassetid://120448260426448',clockArrowCirclepath=
'rbxassetid://83500708276723',clockBadge='rbxassetid://95543881222190',
clockBadgeCheckmark='rbxassetid://110889511043247',clockBadgeExclamationmark=
'rbxassetid://96219827415804',clockBadgeQuestionmark=
'rbxassetid://121937201035118',clockBadgeXmark='rbxassetid://100578139064509',
clockCircle='rbxassetid://104879643385324',cloud='rbxassetid://72439815109377',
cloudBolt='rbxassetid://138545210167719',cloudBoltCircle=
'rbxassetid://113867033834751',cloudBoltRain='rbxassetid://82572191900241',
cloudBoltRainCircle='rbxassetid://71520224958159',cloudCircle=
'rbxassetid://138009396818670',cloudDrizzle='rbxassetid://101174065846367',
cloudDrizzleCircle='rbxassetid://134490921738321',cloudFog=
'rbxassetid://135490835996578',cloudFogCircle='rbxassetid://116570711195787',
cloudHail='rbxassetid://92728162041412',cloudHailCircle=
'rbxassetid://128302721450852',cloudHeavyrain='rbxassetid://132393131962904',
cloudHeavyrainCircle='rbxassetid://131787242867470',cloudMoon=
'rbxassetid://128637077638309',cloudMoonBolt='rbxassetid://90404966526640',
cloudMoonBoltCircle='rbxassetid://88637087433527',cloudMoonCircle=
'rbxassetid://71510329303583',cloudMoonRain='rbxassetid://86226283847488',
cloudMoonRainCircle='rbxassetid://135271835175143',cloudRain=
'rbxassetid://137913324435715',cloudRainbowHalf='rbxassetid://80949891966526',
cloudRainCircle='rbxassetid://125770718460295',cloudSleet=
'rbxassetid://138740371048571',cloudSleetCircle='rbxassetid://108186361674214',
cloudSnow='rbxassetid://105959993072064',cloudSnowCircle=
'rbxassetid://94353656591244',cloudSun='rbxassetid://76219717200572',
cloudSunBolt='rbxassetid://82434887608964',cloudSunBoltCircle=
'rbxassetid://121980548748043',cloudSunCircle='rbxassetid://138030869492942',
cloudSunRain='rbxassetid://134074736472532',cloudSunRainCircle=
'rbxassetid://137383261943827',coloncurrencysign='rbxassetid://131140994393008',
coloncurrencysignCircle='rbxassetid://70944403095065',coloncurrencysignSquare=
'rbxassetid://73629414426424',comb='rbxassetid://130067018388344',command=
'rbxassetid://87759558375295',commandCircle='rbxassetid://108217555020959',
commandSquare='rbxassetid://107055043334206',compassDrawing=
'rbxassetid://134681338415164',computermouse='rbxassetid://116864473507298',cone
='rbxassetid://124587204416297',contactSensor='rbxassetid://102690488068099',
contextualmenuAndCursorarrow='rbxassetid://123228274012415',control=
'rbxassetid://97239100115918',cooktop='rbxassetid://93215843989191',cpu=
'rbxassetid://87589615309566',creditcard='rbxassetid://77524266713323',
creditcardAnd123='rbxassetid://87625010126625',creditcardCircle=
'rbxassetid://99286306323174',creditcardTrianglebadgeExclamationmark=
'rbxassetid://90236628566099',creditcardViewfinder=
'rbxassetid://128954685381450',cricketBall='rbxassetid://132338647483230',
cricketBallCircle='rbxassetid://112380861010223',crop=
'rbxassetid://138327728447328',cropRotate='rbxassetid://121012418950102',cross=
'rbxassetid://75739153896374',crossCase='rbxassetid://78079423098645',
crossCaseCircle='rbxassetid://137234921754938',crossCircle=
'rbxassetid://117192023436084',crossVial='rbxassetid://115154605300684',crown=
'rbxassetid://107058160728845',cruzeirosign='rbxassetid://106216304865538',
cruzeirosignCircle='rbxassetid://98155899113585',cruzeirosignSquare=
'rbxassetid://112549175142358',cube='rbxassetid://113324099127598',
cubeTransparent='rbxassetid://78558225501795',cupAndSaucer=
'rbxassetid://70882561472053',curlybraces='rbxassetid://122379752309193',
curlybracesSquare='rbxassetid://108806416027883',cursorarrow=
'rbxassetid://76353347413637',cursorarrowAndSquareOnSquareDashed=
'rbxassetid://123035396911468',cursorarrowClick='rbxassetid://120755931811218',
cursorarrowClick2='rbxassetid://131954684779465',cursorarrowClickBadgeClock=
'rbxassetid://96674815416136',cursorarrowMotionlines=
'rbxassetid://117420120397428',cursorarrowMotionlinesClick=
'rbxassetid://81573780818011',cursorarrowRays='rbxassetid://126392116415147',
cursorarrowSlash='rbxassetid://91144329352020',cursorarrowSlashSquare=
'rbxassetid://95513304668296',cursorarrowSquare='rbxassetid://131316405162767',
curtainsClosed='rbxassetid://122945237141959',curtainsOpen=
'rbxassetid://122698824186293',cylinder='rbxassetid://114645416111348',
cylinderSplit1x2='rbxassetid://85943184592349',danishkronesign=
'rbxassetid://132317859196237',danishkronesignCircle=
'rbxassetid://96037553795865',danishkronesignSquare=
'rbxassetid://98413802386021',decreaseIndent='rbxassetid://114166951637598',
decreaseQuotelevel='rbxassetid://122987348583660',dehumidifier=
'rbxassetid://133596695507827',deleteBackward='rbxassetid://97790611923098',
deleteForward='rbxassetid://108241377729036',deleteLeft=
'rbxassetid://90957127933134',deleteRight='rbxassetid://81407575985610',
deskclock='rbxassetid://100063925348875',desktopcomputer=
'rbxassetid://96859406924780',desktopcomputerAndArrowDown=
'rbxassetid://129425011002064',desktopcomputerTrianglebadgeExclamationmark=
'rbxassetid://77859158998904',deskview='rbxassetid://113833580070691',dialHigh=
'rbxassetid://75770110909347',dialLow='rbxassetid://111908632839614',dialMedium=
'rbxassetid://103296321412929',diamond='rbxassetid://98755623140060',
diamondCircle='rbxassetid://75496260365440',dice='rbxassetid://79901563934016',
dieFace1='rbxassetid://97973837927564',dieFace2='rbxassetid://97103901429519',
dieFace3='rbxassetid://74553149585882',dieFace4='rbxassetid://107085806823827',
dieFace5='rbxassetid://105681650712833',dieFace6='rbxassetid://111952413902020',
digitalcrownArrowClockwise='rbxassetid://99697391718088',
digitalcrownArrowCounterclockwise='rbxassetid://79014014935970',
digitalcrownHorizontalArrowClockwise='rbxassetid://101662260300961',
digitalcrownHorizontalArrowCounterclockwise='rbxassetid://89143641561402',
digitalcrownHorizontalPress='rbxassetid://70865991094071',digitalcrownPress=
'rbxassetid://100235041582512',directcurrent='rbxassetid://123771305124455',
dishwasher='rbxassetid://130920646838171',dishwasherCircle=
'rbxassetid://76935618125226',display='rbxassetid://75167987039384',display2=
'rbxassetid://111139979103041',displayAndArrowDown='rbxassetid://90569241422518'
,displayTrianglebadgeExclamationmark='rbxassetid://100356722210963',
distributeHorizontalCenter='rbxassetid://133563584737123',
distributeHorizontalLeft='rbxassetid://97346698660085',distributeHorizontalRight
='rbxassetid://125138096691204',distributeVerticalBottom=
'rbxassetid://97606841865015',distributeVerticalCenter=
'rbxassetid://140714241241921',distributeVerticalTop=
'rbxassetid://114880541014379',divide='rbxassetid://113308977415214',
divideCircle='rbxassetid://117656594502455',divideSquare=
'rbxassetid://83099420768337',doc='rbxassetid://80680488161934',docAppend=
'rbxassetid://92502742629439',docBadgeArrowUp='rbxassetid://80297421254328',
docBadgeClock='rbxassetid://106217049362270',docBadgeEllipsis=
'rbxassetid://131787139108704',docBadgeGearshape='rbxassetid://75017579898518',
docBadgePlus='rbxassetid://124537298304533',docCircle=
'rbxassetid://114937888569701',dockArrowDownRectangle=
'rbxassetid://72021890628584',dockArrowUpRectangle=
'rbxassetid://116152143083972',dockRectangle='rbxassetid://76782381671460',
docOnClipboard='rbxassetid://94277113748864',docOnDoc=
'rbxassetid://74221368188325',docPlaintext='rbxassetid://116104151169652',
docRichtext='rbxassetid://94749196343692',docText='rbxassetid://106048817459549'
,docTextBelowEcg='rbxassetid://111731877748125',docTextImage=
'rbxassetid://122105011236494',docTextMagnifyingglass=
'rbxassetid://86983114420254',docViewfinder='rbxassetid://137034209283570',
docZipper='rbxassetid://96676285483415',dog='rbxassetid://140572982890767',
dogCircle='rbxassetid://122395060321313',dollarsign=
'rbxassetid://109669077542924',dollarsignArrowCirclepath=
'rbxassetid://111141236452341',dollarsignCircle='rbxassetid://80248987427627',
dollarsignSquare='rbxassetid://104039678975004',dongsign=
'rbxassetid://107964991032390',dongsignCircle='rbxassetid://82390177440942',
dongsignSquare='rbxassetid://135476238812943',doorFrenchClosed=
'rbxassetid://115590490197965',doorFrenchOpen='rbxassetid://121469591613419',
doorGarageClosed='rbxassetid://106034477525186',
doorGarageClosedTrianglebadgeExclamationmark='rbxassetid://106064431783267',
doorGarageDoubleBayClosed='rbxassetid://77708115686304',
doorGarageDoubleBayClosedTrianglebadgeExclamationmark=
'rbxassetid://90250572170703',doorGarageDoubleBayOpen=
'rbxassetid://99872177348788',
doorGarageDoubleBayOpenTrianglebadgeExclamationmark=
'rbxassetid://89179536238976',doorGarageOpen='rbxassetid://100261874181752',
doorGarageOpenTrianglebadgeExclamationmark='rbxassetid://129676177042694',
doorLeftHandClosed='rbxassetid://127332916375130',doorLeftHandOpen=
'rbxassetid://88478617958400',doorRightHandClosed='rbxassetid://90865411752842',
doorRightHandOpen='rbxassetid://120226629467300',doorSlidingLeftHandClosed=
'rbxassetid://104460639241760',doorSlidingLeftHandOpen=
'rbxassetid://90434437684846',doorSlidingRightHandClosed=
'rbxassetid://80954533274056',doorSlidingRightHandOpen=
'rbxassetid://107047945884408',dotArrowtrianglesUpRightDownLeftCircle=
'rbxassetid://92171085368638',dotCircleAndCursorarrow=
'rbxassetid://115122421262820',dotCircleViewfinder='rbxassetid://76791877752769'
,dotRadiowavesForward='rbxassetid://125958365101126',dotRadiowavesLeftAndRight=
'rbxassetid://125089665001336',dotRadiowavesRight='rbxassetid://134899456728459'
,dotRadiowavesUpForward='rbxassetid://89160672441436',
dotsAndLineVerticalAndCursorarrowRectangle='rbxassetid://82575719013218',
dotSquare='rbxassetid://93040404947406',dotSquareshape=
'rbxassetid://71756482462243',dotSquareshapeSplit2x2=
'rbxassetid://122291530539759',dotViewfinder='rbxassetid://116893339458370',dpad
='rbxassetid://87682605776106',drop='rbxassetid://111642008758112',dropCircle=
'rbxassetid://72183646280977',dropDegreesign='rbxassetid://101079401640724',
dropDegreesignSlash='rbxassetid://77370786202614',dropHalffull=
'rbxassetid://106217001834494',dropKeypadRectangle='rbxassetid://71258286014229'
,dropTransmission='rbxassetid://121675820611513',dropTriangle=
'rbxassetid://98703665707348',dryer='rbxassetid://100248519786703',dryerCircle=
'rbxassetid://127979000291506',dumbbell='rbxassetid://116727072092392',ear=
'rbxassetid://76035901479639',earBadgeCheckmark='rbxassetid://91787437407196',
earBadgeWaveform='rbxassetid://135033697589671',earbuds=
'rbxassetid://116995008079922',earbudsCase='rbxassetid://87434619318458',earpods
='rbxassetid://73551661527717',earTrianglebadgeExclamationmark=
'rbxassetid://121508208509561',eject='rbxassetid://105034421093103',ejectCircle=
'rbxassetid://71243734846382',ellipsis='rbxassetid://77216475856263',
ellipsisBubble='rbxassetid://81757807051403',ellipsisCircle=
'rbxassetid://99199083887688',ellipsisCurlybraces='rbxassetid://108569164111258'
,ellipsisMessage='rbxassetid://114344761995567',ellipsisRectangle=
'rbxassetid://129501243800814',ellipsisVerticalBubble=
'rbxassetid://90497496915411',ellipsisViewfinder='rbxassetid://126002018966475',
engineCombustion='rbxassetid://131885131929586',
engineCombustionBadgeExclamationmark='rbxassetid://85947213993940',
entryLeverKeypad='rbxassetid://105656001411388',
entryLeverKeypadTrianglebadgeExclamationmark='rbxassetid://102460548449598',
envelope='rbxassetid://135422700018555',envelopeArrowTriangleBranch=
'rbxassetid://124377309512740',envelopeBadge='rbxassetid://103845751654589',
envelopeBadgePersonCrop='rbxassetid://77560437146295',envelopeCircle=
'rbxassetid://134475749846380',envelopeOpen='rbxassetid://136933873070357',
envelopeOpenBadgeClock='rbxassetid://107286443232372',equal=
'rbxassetid://104261784698979',equalCircle='rbxassetid://94173011590634',
equalSquare='rbxassetid://92317829899624',eraser='rbxassetid://95305220254055',
eraserLineDashed='rbxassetid://96768889006093',escape=
'rbxassetid://88241911322694',esim='rbxassetid://77580602275303',eurosign=
'rbxassetid://136356099634353',eurosignCircle='rbxassetid://126918102604088',
eurosignSquare='rbxassetid://116000285709817',eurozonesign=
'rbxassetid://93139449983402',eurozonesignCircle='rbxassetid://87247460844999',
eurozonesignSquare='rbxassetid://129461749044283',evCharger=
'rbxassetid://79556138542907',evChargerArrowtriangleLeft=
'rbxassetid://119824246559477',evChargerArrowtriangleRight=
'rbxassetid://126528173588647',evChargerExclamationmark=
'rbxassetid://102012721466143',evChargerSlash='rbxassetid://99276226601989',
evPlugAcGbT='rbxassetid://123710740255487',evPlugAcType1=
'rbxassetid://99601941122060',evPlugAcType2='rbxassetid://135993885168737',
evPlugDcCcs1='rbxassetid://96871163987413',evPlugDcCcs2=
'rbxassetid://133131308191446',evPlugDcChademo='rbxassetid://91501489271555',
evPlugDcGbT='rbxassetid://131449273570632',evPlugDcNacs=
'rbxassetid://138621271016511',exclamationmark='rbxassetid://123140835548673',
exclamationmark2='rbxassetid://75679665682282',exclamationmark3=
'rbxassetid://94835741243894',exclamationmarkApplewatch=
'rbxassetid://131402916699982',exclamationmarkArrowCirclepath=
'rbxassetid://111446640991646',exclamationmarkArrowTriangle2Circlepath=
'rbxassetid://121048701816249',exclamationmarkBrakesignal=
'rbxassetid://91423055094258',exclamationmarkBubble=
'rbxassetid://105426640441082',exclamationmarkBubbleCircle=
'rbxassetid://140043827963868',exclamationmarkCircle=
'rbxassetid://92439494359035',exclamationmarkIcloud=
'rbxassetid://131750039428036',exclamationmarkLock='rbxassetid://71368682685575'
,exclamationmarkOctagon='rbxassetid://123387035798080',
exclamationmarkQuestionmark='rbxassetid://114232460979754',exclamationmarkShield
='rbxassetid://102928689678762',exclamationmarkSquare=
'rbxassetid://90730727329485',exclamationmarkTirepressure=
'rbxassetid://111652449176889',exclamationmarkTransmission=
'rbxassetid://84123174580190',exclamationmarkTriangle=
'rbxassetid://106021451924989',exclamationmarkWarninglight=
'rbxassetid://84262825388416',externaldrive='rbxassetid://120236805690488',
externaldriveBadgeCheckmark='rbxassetid://70712203348861',
externaldriveBadgeExclamationmark='rbxassetid://77017834633822',
externaldriveBadgeIcloud='rbxassetid://86180483675834',externaldriveBadgeMinus=
'rbxassetid://75906682662471',externaldriveBadgePersonCrop=
'rbxassetid://94868100647171',externaldriveBadgePlus=
'rbxassetid://92651555219115',externaldriveBadgeQuestionmark=
'rbxassetid://125099541780510',externaldriveBadgeTimemachine=
'rbxassetid://111351777977541',externaldriveBadgeWifi=
'rbxassetid://109165399503090',externaldriveBadgeXmark=
'rbxassetid://125875178687284',externaldriveConnectedToLineBelow=
'rbxassetid://112872241937256',externaldriveTrianglebadgeExclamationmark=
'rbxassetid://71483990859238',eye='rbxassetid://138470672816964',eyebrow=
'rbxassetid://135171080166572',eyeCircle='rbxassetid://138323405545081',
eyedropper='rbxassetid://118390984141654',eyedropperFull=
'rbxassetid://105807600321254',eyedropperHalffull='rbxassetid://121173088005138'
,eyeglasses='rbxassetid://73685932692008',eyeglassesSlash=
'rbxassetid://88818268210473',eyes='rbxassetid://118899102922882',eyesInverse=
'rbxassetid://93009022157585',eyeSlash='rbxassetid://91677658237967',
eyeSlashCircle='rbxassetid://126482458192010',eyeSquare=
'rbxassetid://123952861895885',eyeTrianglebadgeExclamationmark=
'rbxassetid://95629223399861',faceDashed='rbxassetid://102614227688607',faceid=
'rbxassetid://95982198583714',facemask='rbxassetid://80851101613761',faceSmiling
='rbxassetid://73031260403382',faceSmilingInverse='rbxassetid://98365509137544',
fan='rbxassetid://125371771993888',fanAndLightCeiling=
'rbxassetid://126784674387812',fanBadgeAutomatic='rbxassetid://121503027473712',
fanCeiling='rbxassetid://124559414278240',fanDesk='rbxassetid://126417457946871'
,fanFloor='rbxassetid://85469961697628',fanOscillation=
'rbxassetid://71303317357784',fanSlash='rbxassetid://92778825024012',faxmachine=
'rbxassetid://100326873282556',ferry='rbxassetid://121251155343877',fibrechannel
='rbxassetid://90895493471592',fieldOfViewUltrawide=
'rbxassetid://81839418625368',fieldOfViewWide='rbxassetid://136944686072143',
figure='rbxassetid://124210592176929',figure2='rbxassetid://139132362873473',
figure2AndChildHoldinghands='rbxassetid://105110831438422',figure2ArmsOpen=
'rbxassetid://70979576402718',figure2Circle='rbxassetid://72262299949069',
figureAmericanFootball='rbxassetid://126882844996991',figureAndChildHoldinghands
='rbxassetid://128184365089297',figureArchery='rbxassetid://93902013631670',
figureArmsOpen='rbxassetid://105660776949905',figureAustralianFootball=
'rbxassetid://97813783388963',figureBadminton='rbxassetid://73181260188357',
figureBarre='rbxassetid://85880551540473',figureBaseball=
'rbxassetid://130108782246517',figureBasketball='rbxassetid://128808469126544',
figureBowling='rbxassetid://112929888815227',figureBoxing=
'rbxassetid://107712089903705',figureChild='rbxassetid://130972091582571',
figureChildAndLock='rbxassetid://137851062454246',figureChildAndLockOpen=
'rbxassetid://105149521674659',figureChildCircle='rbxassetid://95811955832285',
figureClimbing='rbxassetid://128133423006685',figureCooldown=
'rbxassetid://135219375145537',figureCoreTraining='rbxassetid://83820740613832',
figureCricket='rbxassetid://112539492344674',figureCrossTraining=
'rbxassetid://87648383986794',figureCurling='rbxassetid://96833980986058',
figureDance='rbxassetid://117059550991943',figureDiscSports=
'rbxassetid://132589592587251',figureDressLineVerticalFigure=
'rbxassetid://100940012571116',figureElliptical='rbxassetid://99650888567647',
figureEquestrianSports='rbxassetid://86059488055849',figureFall=
'rbxassetid://100202475660961',figureFallCircle='rbxassetid://96928098825680',
figureFencing='rbxassetid://129126904429160',figureFishing=
'rbxassetid://111765160362879',figureFlexibility='rbxassetid://132776843430665',
figureGolf='rbxassetid://92214790721841',figureGymnastics=
'rbxassetid://138567055276067',figureHandball='rbxassetid://96660474278951',
figureHandCycling='rbxassetid://138507015290592',
figureHighintensityIntervaltraining='rbxassetid://73401395867175',figureHiking=
'rbxassetid://97548427005732',figureHockey='rbxassetid://91386080555336',
figureHunting='rbxassetid://85543734308109',figureIndoorCycle=
'rbxassetid://93376649335246',figureJumprope='rbxassetid://136263293348295',
figureKickboxing='rbxassetid://130136587320083',figureLacrosse=
'rbxassetid://94034254784117',figureMartialArts='rbxassetid://105181192399282',
figureMindAndBody='rbxassetid://102796026083961',figureMixedCardio=
'rbxassetid://90474695143116',figureOpenWaterSwim='rbxassetid://97359834860506',
figureOutdoorCycle='rbxassetid://126672021170079',figurePickleball=
'rbxassetid://96334506833011',figurePilates='rbxassetid://140491276895800',
figurePlay='rbxassetid://101368145480192',figurePoolSwim=
'rbxassetid://139271073007059',figureRacquetball='rbxassetid://118844109971027',
figureRoll='rbxassetid://88477472972731',figureRolling=
'rbxassetid://88476186859346',figureRollRunningpace=
'rbxassetid://79868941671699',figureRower='rbxassetid://101478600974292',
figureRugby='rbxassetid://98478654484690',figureRun=
'rbxassetid://124566141570199',figureRunCircle='rbxassetid://96855548794052',
figureRunSquareStack='rbxassetid://114133664599268',figureSailing=
'rbxassetid://137032787787986',figureSeatedSeatbelt=
'rbxassetid://133384463233836',figureSeatedSeatbeltAndAirbagOff=
'rbxassetid://96721597477065',figureSeatedSeatbeltAndAirbagOn=
'rbxassetid://118056777273996',figureSeatedSide='rbxassetid://103157176969588',
figureSeatedSideAirbagOff='rbxassetid://104984860910066',
figureSeatedSideAirbagOff2='rbxassetid://123574096899524',
figureSeatedSideAirbagOn='rbxassetid://112751749735103',
figureSeatedSideAirbagOn2='rbxassetid://133224719349931',
figureSeatedSideAirDistributionLower='rbxassetid://120257665940386',
figureSeatedSideAirDistributionMiddle='rbxassetid://92433515109818',
figureSeatedSideAirDistributionMiddleAndLower='rbxassetid://118216495126795',
figureSeatedSideAirDistributionMiddleAndLowerAngled=
'rbxassetid://132877218661072',figureSeatedSideAirDistributionUpper=
'rbxassetid://80332126775420',
figureSeatedSideAirDistributionUpperAngledAndLowerAngled=
'rbxassetid://128830311959827',
figureSeatedSideAirDistributionUpperAngledAndMiddle=
'rbxassetid://110778248234270',
figureSeatedSideAirDistributionUpperAngledAndMiddleAndLowerAngled=
'rbxassetid://112235343241027',figureSeatedSideAutomatic=
'rbxassetid://136215915659039',figureSeatedSideWindshieldFrontAndHeatWaves=
'rbxassetid://87077410641628',
figureSeatedSideWindshieldFrontAndHeatWavesAirDistributionLower=
'rbxassetid://95211211764474',
figureSeatedSideWindshieldFrontAndHeatWavesAirDistributionMiddle=
'rbxassetid://79055808238898',
figureSeatedSideWindshieldFrontAndHeatWavesAirDistributionMiddleAndLower=
'rbxassetid://95139994219690',
figureSeatedSideWindshieldFrontAndHeatWavesAirDistributionUpper=
'rbxassetid://112780319350991',
figureSeatedSideWindshieldFrontAndHeatWavesAirDistributionUpperAndLower=
'rbxassetid://118828536958349',
figureSeatedSideWindshieldFrontAndHeatWavesAirDistributionUpperAndMiddle=
'rbxassetid://117604588619581',
figureSeatedSideWindshieldFrontAndHeatWavesAirDistributionUpperAndMiddleAndLower
='rbxassetid://133887310459410',figureSkating='rbxassetid://131519789461691',
figureSkiingCrosscountry='rbxassetid://109466747599943',figureSkiingDownhill=
'rbxassetid://140392631123789',figureSnowboarding='rbxassetid://134055706340887'
,figureSoccer='rbxassetid://116190117656300',figureSocialdance=
'rbxassetid://110405320778957',figureSoftball='rbxassetid://97680142485776',
figureSquash='rbxassetid://109987323082963',figureStairs=
'rbxassetid://119472344590394',figureStairStepper='rbxassetid://102517804783821'
,figureStand='rbxassetid://136221195306106',figureStandLineDottedFigureStand=
'rbxassetid://110619836250430',figureStepTraining='rbxassetid://84477171821852',
figureStrengthtrainingFunctional='rbxassetid://104048412669475',
figureStrengthtrainingTraditional='rbxassetid://138784898800398',figureSurfing=
'rbxassetid://83044521165737',figureTableTennis='rbxassetid://112539865230350',
figureTaichi='rbxassetid://111801226705681',figureTennis=
'rbxassetid://117271917367811',figureTrackAndField=
'rbxassetid://137096520282183',figureVolleyball='rbxassetid://74388368898391',
figureWalk='rbxassetid://103110169492468',figureWalkArrival=
'rbxassetid://132785672648822',figureWalkCircle='rbxassetid://73018858953327',
figureWalkDeparture='rbxassetid://92487952988888',figureWalkDiamond=
'rbxassetid://92350130943679',figureWalkMotion='rbxassetid://120593776733345',
figureWalkMotionTrianglebadgeExclamationmark='rbxassetid://101645821918157',
figureWaterFitness='rbxassetid://96614205937760',figureWaterpolo=
'rbxassetid://91412710561700',figureWave='rbxassetid://114134027406795',
figureWaveCircle='rbxassetid://120321972281760',figureWrestling=
'rbxassetid://83176353465102',figureYoga='rbxassetid://96242701314139',
filemenuAndCursorarrow='rbxassetid://103877132330792',filemenuAndSelection=
'rbxassetid://81852472789474',film='rbxassetid://139278965589106',filmCircle=
'rbxassetid://111466196163243',filmStack='rbxassetid://105407775312941',
fireplace='rbxassetid://134966411587948',firewall='rbxassetid://114840190064977'
,fireworks='rbxassetid://114777713958614',fish='rbxassetid://95630600389657',
fishCircle='rbxassetid://75389797082516',flag='rbxassetid://102363227837340',
flag2Crossed='rbxassetid://70682050300398',flag2CrossedCircle=
'rbxassetid://126304171890647',flagBadgeEllipsis='rbxassetid://78600854244026',
flagCheckered='rbxassetid://78821229595515',flagCheckered2Crossed=
'rbxassetid://78412090520637',flagCheckeredCircle='rbxassetid://123648433572775'
,flagCircle='rbxassetid://85706804053151',flagSlash=
'rbxassetid://89297263331746',flagSlashCircle='rbxassetid://94426163465898',
flagSquare='rbxassetid://137440369468694',flame='rbxassetid://110230166553578',
flameCircle='rbxassetid://71866528782393',flashlightOffCircle=
'rbxassetid://137828518876290',flashlightOnCircle='rbxassetid://138372723792697'
,flashlightSlash='rbxassetid://137595008121368',flashlightSlashCircle=
'rbxassetid://100149592723764',flask='rbxassetid://84982251579563',fleuron=
'rbxassetid://127254498069507',flipphone='rbxassetid://121655288668724',
florinsign='rbxassetid://85198379296878',florinsignCircle=
'rbxassetid://91968364679095',florinsignSquare='rbxassetid://124557685313833',
flowchart='rbxassetid://76502922913770',fluidBrakesignal=
'rbxassetid://106945535029492',fluidTransmission='rbxassetid://106920308433404',
fn='rbxassetid://110984852514729',folder='rbxassetid://115997264836727',
folderBadgeGearshape='rbxassetid://130851892723979',folderBadgeMinus=
'rbxassetid://135738422209124',folderBadgePersonCrop=
'rbxassetid://95982372409592',folderBadgePlus='rbxassetid://114979073485854',
folderBadgeQuestionmark='rbxassetid://107424384579367',folderCircle=
'rbxassetid://117008504066827',football='rbxassetid://99824306110508',
footballCircle='rbxassetid://82719329435185',forkKnife=
'rbxassetid://104969007607141',forkKnifeCircle='rbxassetid://90290316044160',
forward='rbxassetid://95245574750012',forwardCircle=
'rbxassetid://126501657617147',forwardEnd='rbxassetid://132223524998425',
forwardEndAlt='rbxassetid://121503429886100',forwardEndCircle=
'rbxassetid://138908494671044',forwardFrame='rbxassetid://88008148795157',
fossilShell='rbxassetid://93224289967262',francsign=
'rbxassetid://81293763334250',francsignCircle='rbxassetid://139095444943390',
francsignSquare='rbxassetid://85547004298688',fryingPan=
'rbxassetid://81228964166221',fuelpump='rbxassetid://98986287945777',
fuelpumpArrowtriangleLeft='rbxassetid://94434558902102',
fuelpumpArrowtriangleRight='rbxassetid://131571623639889',fuelpumpCircle=
'rbxassetid://84672225297380',fuelpumpExclamationmark=
'rbxassetid://119295509966816',fuelpumpSlash='rbxassetid://80568453132219',[
'function']='rbxassetid://88302320601228',fx='rbxassetid://103009020235959',
gamecontroller='rbxassetid://119096220409886',gaugeOpenWithLinesNeedle33percent=
'rbxassetid://104863675880095',gaugeOpenWithLinesNeedle33percentAndArrowtriangle
='rbxassetid://132553697695096',
gaugeOpenWithLinesNeedle33percentAndArrowtriangleFrom0percentTo50percent=
'rbxassetid://81580637007677',gaugeOpenWithLinesNeedle67percentAndArrowtriangle=
'rbxassetid://72110696522804',
gaugeOpenWithLinesNeedle67percentAndArrowtriangleAndCar=
'rbxassetid://134391478669913',gaugeOpenWithLinesNeedle84percentExclamation=
'rbxassetid://125730930227651',gaugeWithDotsNeedle0percent=
'rbxassetid://105915505394027',gaugeWithDotsNeedle100percent=
'rbxassetid://135036724297473',gaugeWithDotsNeedle33percent=
'rbxassetid://75307562428779',gaugeWithDotsNeedle50percent=
'rbxassetid://113165147850221',gaugeWithDotsNeedle67percent=
'rbxassetid://73356725050455',gaugeWithDotsNeedleBottom0percent=
'rbxassetid://81053665147339',gaugeWithDotsNeedleBottom100percent=
'rbxassetid://118065291887447',gaugeWithDotsNeedleBottom50percent=
'rbxassetid://115283421029609',gaugeWithDotsNeedleBottom50percentBadgeMinus=
'rbxassetid://121238805875359',gaugeWithDotsNeedleBottom50percentBadgePlus=
'rbxassetid://109301754562729',gear='rbxassetid://93463417713731',gearBadge=
'rbxassetid://103383744725187',gearBadgeCheckmark='rbxassetid://88555949397622',
gearBadgeQuestionmark='rbxassetid://73947849677930',gearBadgeXmark=
'rbxassetid://84416506389985',gearCircle='rbxassetid://115384869742127',
gearshape='rbxassetid://117049869817852',gearshape2=
'rbxassetid://117355100489135',gearshapeArrowTriangle2Circlepath=
'rbxassetid://84641602565527',gearshapeCircle='rbxassetid://129388953569327',
gearshiftLayoutSixspeed='rbxassetid://105192785758859',gift=
'rbxassetid://124716473916822',giftcard='rbxassetid://123357243253728',
giftCircle='rbxassetid://95170019998697',globe='rbxassetid://101767218366266',
globeAmericas='rbxassetid://119372469642645',globeAsiaAustralia=
'rbxassetid://120808677555396',globeBadgeChevronBackward=
'rbxassetid://89916175364862',globeCentralSouthAsia=
'rbxassetid://120522058696581',globeDesk='rbxassetid://107755158064853',
globeEuropeAfrica='rbxassetid://106142876012163',glowplug=
'rbxassetid://117502042940538',gobackward='rbxassetid://91320889824011',
gobackward10='rbxassetid://90559603880621',gobackward15=
'rbxassetid://120316938540272',gobackward30='rbxassetid://140354039230051',
gobackward45='rbxassetid://93434813605748',gobackward5=
'rbxassetid://97130008586442',gobackward60='rbxassetid://91215922364999',
gobackward75='rbxassetid://140735752535943',gobackward90=
'rbxassetid://108207845332277',gobackwardMinus='rbxassetid://92431716781150',
goforward='rbxassetid://131297950123949',goforward10=
'rbxassetid://136515914036455',goforward15='rbxassetid://91999877907911',
goforward30='rbxassetid://77322694446691',goforward45=
'rbxassetid://90174945269280',goforward5='rbxassetid://92986838147448',
goforward60='rbxassetid://116153177521739',goforward75=
'rbxassetid://71594405050565',goforward90='rbxassetid://81147746129102',
goforwardPlus='rbxassetid://130621369072851',graduationcap=
'rbxassetid://107016904273927',graduationcapCircle=
'rbxassetid://101968938789158',greaterthan='rbxassetid://100154976668906',
greaterthanCircle='rbxassetid://102770886704387',greaterthanSquare=
'rbxassetid://129436011561737',greetingcard='rbxassetid://103898388974312',grid=
'rbxassetid://140178861976840',gridCircle='rbxassetid://130234958416171',
guaranisign='rbxassetid://75439930844128',guaranisignCircle=
'rbxassetid://106474371188305',guaranisignSquare='rbxassetid://99643661441187',
guitars='rbxassetid://89552692956885',gymBag='rbxassetid://91936141424860',
gyroscope='rbxassetid://132244916029235',hammer='rbxassetid://103131584528770',
hammerCircle='rbxassetid://74490498390973',handbag=
'rbxassetid://132152356168017',handbagCircle='rbxassetid://114510833555325',
handDraw='rbxassetid://77538773866494',handPointDown=
'rbxassetid://119738942472362',handPointLeft='rbxassetid://81548791076395',
handPointRight='rbxassetid://88897279924338',handPointUp=
'rbxassetid://135989287278173',handPointUpBraille='rbxassetid://125997713968939'
,handPointUpLeft='rbxassetid://113458915824230',handPointUpLeftAndText=
'rbxassetid://126912275881889',handRaised='rbxassetid://82019405080955',
handRaisedApp='rbxassetid://117707357852142',handRaisedBrakesignal=
'rbxassetid://137889578262374',handRaisedBrakesignalSlash=
'rbxassetid://136404686007826',handRaisedCircle='rbxassetid://77964496621148',
handRaisedFingersSpread='rbxassetid://87382145130925',handRaisedSlash=
'rbxassetid://99551377759203',handRaisedSquare='rbxassetid://120124026695951',
handRaisedSquareOnSquare='rbxassetid://95839429879229',handsAndSparkles=
'rbxassetid://86849300947781',handsClap='rbxassetid://77562764751019',handTap=
'rbxassetid://128075990773888',handThumbsdown='rbxassetid://122067645581433',
handThumbsdownCircle='rbxassetid://126932375202246',handThumbsup=
'rbxassetid://71873367293048',handThumbsupCircle='rbxassetid://127941020251542',
handWave='rbxassetid://107235477795246',hanger='rbxassetid://82820384563336',
hare='rbxassetid://81680749337155',hareCircle='rbxassetid://117167437846510',
hazardsign='rbxassetid://81532417708970',headlightDaytime=
'rbxassetid://137136468021745',headlightFog='rbxassetid://97458710225335',
headlightHighBeam='rbxassetid://128131652757062',headlightLowBeam=
'rbxassetid://135099116151086',headphones='rbxassetid://106715715835631',
headphonesCircle='rbxassetid://117557349152734',
headProfileArrowForwardAndVisionpro='rbxassetid://121693109509839',
hearingdeviceAndSignalMeter='rbxassetid://98123946880457',hearingdeviceEar=
'rbxassetid://140472299081006',heart='rbxassetid://109117761441183',heartCircle=
'rbxassetid://108890463961676',heartRectangle='rbxassetid://127223437499170',
heartSlash='rbxassetid://114165709625494',heartSlashCircle=
'rbxassetid://96341086302072',heartSquare='rbxassetid://102824926831120',
heartTextSquare='rbxassetid://101879174324148',heatElementWindshield=
'rbxassetid://115720262850623',heaterVertical='rbxassetid://84741339638914',
heatWaves='rbxassetid://133713407444127',helm='rbxassetid://112363025158819',
hexagon='rbxassetid://117932412411502',hifireceiver=
'rbxassetid://83575856188207',hifispeaker='rbxassetid://106843553305004',
hifispeaker2='rbxassetid://90092840094055',hifispeakerAndAppletv=
'rbxassetid://92524124618718',hifispeakerAndHomepod=
'rbxassetid://137888286379086',hifispeakerAndHomepodmini=
'rbxassetid://104285147267424',highlighter='rbxassetid://77806724703440',
hockeyPuck='rbxassetid://123663110103043',hockeyPuckCircle=
'rbxassetid://136584542208226',holdBrakesignal='rbxassetid://78638998322603',
homekit='rbxassetid://129816863247706',homepod='rbxassetid://96629146531238',
homepod2='rbxassetid://101411606767286',homepodAndAppletv=
'rbxassetid://136566168513238',homepodAndHomepodmini=
'rbxassetid://128138460912737',homepodmini='rbxassetid://93368409427047',
homepodmini2='rbxassetid://138072319954848',homepodminiAndAppletv=
'rbxassetid://96899217298462',horn='rbxassetid://76499301028205',hornBlast=
'rbxassetid://99208021557068',hourglass='rbxassetid://109119388646355',
hourglassBadgePlus='rbxassetid://125140797406882',hourglassCircle=
'rbxassetid://74121557568551',house='rbxassetid://75142559607619',houseAndFlag=
'rbxassetid://75627724392758',houseAndFlagCircle='rbxassetid://103248755163222',
houseCircle='rbxassetid://84194969699478',houseLodge=
'rbxassetid://119318595239178',houseLodgeCircle='rbxassetid://131993754948664',
hryvniasign='rbxassetid://84763508059884',hryvniasignCircle=
'rbxassetid://137112151466307',hryvniasignSquare='rbxassetid://117405927580324',
humidifier='rbxassetid://95385649840572',humidifierAndDroplets=
'rbxassetid://70766413669259',humidity='rbxassetid://138202713708255',hurricane=
'rbxassetid://129364860302491',hurricaneCircle='rbxassetid://122254392121714',
icloud='rbxassetid://101659161537443',icloudAndArrowDown=
'rbxassetid://124106021512201',icloudAndArrowUp='rbxassetid://130588908975143',
icloudCircle='rbxassetid://109505824359041',icloudSlash=
'rbxassetid://110954111758183',icloudSquare='rbxassetid://116854988059481',
increaseIndent='rbxassetid://77365198387403',increaseQuotelevel=
'rbxassetid://128578001501285',indianrupeesign='rbxassetid://139464987853385',
indianrupeesignCircle='rbxassetid://93399459022070',indianrupeesignSquare=
'rbxassetid://89644071481395',infinity='rbxassetid://105395628064475',
infinityCircle='rbxassetid://95923582554532',info='rbxassetid://82779181850384',
infoBubble='rbxassetid://110157898124544',infoCircle=
'rbxassetid://79229862313887',infoSquare='rbxassetid://73485756772281',
infoWindshield='rbxassetid://87644855323791',internaldrive=
'rbxassetid://129361039257665',ipad='rbxassetid://94420007219781',
ipadAndArrowForward='rbxassetid://82027737489705',ipadAndIphone=
'rbxassetid://133274203016358',ipadAndIphoneSlash='rbxassetid://98585690423131',
ipadBadgePlay='rbxassetid://84600357822005',ipadCase=
'rbxassetid://138027023973892',ipadCaseAndIphoneCase=
'rbxassetid://77836789602876',ipadGen1='rbxassetid://88794919460803',
ipadGen1BadgePlay='rbxassetid://134986643881512',ipadGen1Landscape=
'rbxassetid://126103693177768',ipadGen1LandscapeBadgePlay=
'rbxassetid://89593645952972',ipadGen2='rbxassetid://127231244602569',
ipadGen2BadgePlay='rbxassetid://129931538764333',ipadGen2Landscape=
'rbxassetid://99302614491902',ipadGen2LandscapeBadgePlay=
'rbxassetid://87970154286850',ipadLandscape='rbxassetid://110038748912228',
ipadLandscapeBadgePlay='rbxassetid://109183769920897',ipadRearCamera=
'rbxassetid://128574448370495',ipadSizes='rbxassetid://81434181784323',iphone=
'rbxassetid://111795206347277',iphoneAndArrowForward=
'rbxassetid://117210262149661',iphoneAndArrowLeftAndArrowRight=
'rbxassetid://104339904723080',iphoneBadgePlay='rbxassetid://84138013743752',
iphoneCase='rbxassetid://96086235791617',iphoneCircle=
'rbxassetid://86067583325421',iphoneGen1='rbxassetid://112794459854723',
iphoneGen1BadgePlay='rbxassetid://98425076138035',iphoneGen1Circle=
'rbxassetid://110199837007404',iphoneGen1Landscape='rbxassetid://94767575190460'
,iphoneGen1RadiowavesLeftAndRight='rbxassetid://78127522254255',
iphoneGen1RadiowavesLeftAndRightCircle='rbxassetid://138216818862050',
iphoneGen1Slash='rbxassetid://102599840307323',iphoneGen1SlashCircle=
'rbxassetid://105895703080604',iphoneGen2='rbxassetid://122770568933385',
iphoneGen2BadgePlay='rbxassetid://139832238864734',iphoneGen2Circle=
'rbxassetid://130935162290121',iphoneGen2Landscape='rbxassetid://87875792716059'
,iphoneGen2RadiowavesLeftAndRight='rbxassetid://92464260478869',
iphoneGen2RadiowavesLeftAndRightCircle='rbxassetid://70984103278879',
iphoneGen2Slash='rbxassetid://77297986025491',iphoneGen2SlashCircle=
'rbxassetid://87700982364550',iphoneGen3='rbxassetid://100351573771562',
iphoneGen3BadgePlay='rbxassetid://122644965643843',iphoneGen3Circle=
'rbxassetid://104540027873195',iphoneGen3Landscape='rbxassetid://71663584341551'
,iphoneGen3RadiowavesLeftAndRight='rbxassetid://121367569706988',
iphoneGen3RadiowavesLeftAndRightCircle='rbxassetid://116278730977293',
iphoneGen3Slash='rbxassetid://118011635853050',iphoneGen3SlashCircle=
'rbxassetid://129979217684984',iphoneLandscape='rbxassetid://76557835009779',
iphoneRadiowavesLeftAndRight='rbxassetid://78146085694021',
iphoneRadiowavesLeftAndRightCircle='rbxassetid://90736886459698',
iphoneRearCamera='rbxassetid://79312022064431',iphoneSizes=
'rbxassetid://105482650343437',iphoneSlash='rbxassetid://79469285052471',
iphoneSlashCircle='rbxassetid://127811850755000',iphoneSmartbatterycaseGen1=
'rbxassetid://136472612806937',iphoneSmartbatterycaseGen2=
'rbxassetid://134549125864284',ipod='rbxassetid://97844506854313',
ipodshuffleGen1='rbxassetid://85956093711602',ipodshuffleGen2=
'rbxassetid://85111088101023',ipodshuffleGen3='rbxassetid://123523059376894',
ipodshuffleGen4='rbxassetid://73762011203526',ipodtouch=
'rbxassetid://119129980411950',ipodtouchLandscape='rbxassetid://84719307699005',
ipodtouchSlash='rbxassetid://71827533045992',italic=
'rbxassetid://139292651945967',ivfluidBag='rbxassetid://110843514482726',
kashidaArabic='rbxassetid://101604962894446',key='rbxassetid://106796214107043',
keyboard='rbxassetid://70993223382855',keyboardBadgeEllipsis=
'rbxassetid://111768859224873',keyboardBadgeEye='rbxassetid://113804851330054',
keyboardChevronCompactDown='rbxassetid://118417513585237',
keyboardChevronCompactLeft='rbxassetid://90214842609924',keyboardMacwindow=
'rbxassetid://76519401712264',keyboardOnehandedLeft=
'rbxassetid://128398887142334',keyboardOnehandedRight=
'rbxassetid://127594314426760',keyHorizontal='rbxassetid://138166984818495',
keyIcloud='rbxassetid://104546203584651',keyRadiowavesForward=
'rbxassetid://92155972436404',keySlash='rbxassetid://139341479389926',
keyViewfinder='rbxassetid://128204547906608',kipsign=
'rbxassetid://84820598778532',kipsignCircle='rbxassetid://107385191106095',
kipsignSquare='rbxassetid://123502079309974',kph='rbxassetid://87214822772084',
kphCircle='rbxassetid://72083926923875',l1ButtonRoundedbottomHorizontal=
'rbxassetid://132322744377824',l1Circle='rbxassetid://132299740102925',
l2ButtonAngledtopVerticalLeft='rbxassetid://105858072312942',
l2ButtonRoundedtopHorizontal='rbxassetid://128110003833200',l2Circle=
'rbxassetid://95083162382164',l3ButtonAngledbottomHorizontalLeft=
'rbxassetid://85683690645172',l4ButtonHorizontal='rbxassetid://131957849368422',
ladybug='rbxassetid://79532640477990',ladybugCircle=
'rbxassetid://93722787684416',lampCeiling='rbxassetid://130378537137100',
lampCeilingInverse='rbxassetid://77998797568264',lampDesk=
'rbxassetid://103312036381935',lampFloor='rbxassetid://115217511907999',
lampTable='rbxassetid://101033305963783',lane='rbxassetid://102792633304550',
lanyardcard='rbxassetid://97744958017931',laptopcomputer=
'rbxassetid://107281859794400',laptopcomputerAndArrowDown=
'rbxassetid://117027416027544',laptopcomputerSlash=
'rbxassetid://128050477390913',laptopcomputerTrianglebadgeExclamationmark=
'rbxassetid://100946318266937',larisign='rbxassetid://83530500017287',
larisignCircle='rbxassetid://76238072655395',larisignSquare=
'rbxassetid://136100671509788',laserBurst='rbxassetid://84243364035565',lasso=
'rbxassetid://119920715432629',lassoBadgeSparkles='rbxassetid://72681411350757',
latch2Case='rbxassetid://77092895295754',laurelLeading=
'rbxassetid://130361076360068',laurelTrailing='rbxassetid://98791363187803',
lbButtonRoundedbottomHorizontal='rbxassetid://123755402651583',lbCircle=
'rbxassetid://100757059317772',leaf='rbxassetid://104165823693595',
leafArrowTriangleCirclepath='rbxassetid://84475508392251',leafCircle=
'rbxassetid://105670621279893',left='rbxassetid://112613324207829',leftCircle=
'rbxassetid://107615454875833',lessthan='rbxassetid://106161556782338',
lessthanCircle='rbxassetid://106184112793325',lessthanSquare=
'rbxassetid://139369098231160',letterACircle='rbxassetid://102043519807680',
letterASquare='rbxassetid://123876841192249',letterBCircle=
'rbxassetid://81796888108964',letterBSquare='rbxassetid://107926268990493',
letterCCircle='rbxassetid://102283325788464',letterCSquare=
'rbxassetid://77342805733080',letterDCircle='rbxassetid://77271013016863',
letterDSquare='rbxassetid://71745998559849',letterECircle=
'rbxassetid://110939040840018',letterESquare='rbxassetid://130805805047117',
letterFCircle='rbxassetid://75292206915955',letterFCursive=
'rbxassetid://129129749457489',letterFCursiveCircle=
'rbxassetid://88414197139904',letterFSquare='rbxassetid://80222891036830',
letterGCircle='rbxassetid://101617051624970',letterGSquare=
'rbxassetid://101108516134256',letterHCircle='rbxassetid://104755888415516',
letterHSquare='rbxassetid://119444843840302',letterHSquareOnSquare=
'rbxassetid://138633232751099',letterICircle='rbxassetid://100265252155056',
letterISquare='rbxassetid://78227741894490',letterJCircle=
'rbxassetid://127681856901613',letterJSquare='rbxassetid://70614371401130',
letterJSquareOnSquare='rbxassetid://136068707644750',letterK=
'rbxassetid://93236576104824',letterKCircle='rbxassetid://126766755298208',
letterKSquare='rbxassetid://132054295015575',
letterLButtonRoundedbottomHorizontal='rbxassetid://86796430696473',letterLCircle
='rbxassetid://115151845775938',letterLJoystick='rbxassetid://126954698608958',
letterLJoystickPressDown='rbxassetid://101991839887936',letterLJoystickTiltDown=
'rbxassetid://109426620639396',letterLJoystickTiltLeft=
'rbxassetid://88760036840814',letterLJoystickTiltRight=
'rbxassetid://123427118118507',letterLJoystickTiltUp=
'rbxassetid://108699411245416',letterLSquare='rbxassetid://102129122454965',
letterMCircle='rbxassetid://105252616936701',letterMSquare=
'rbxassetid://91788346353476',letterNCircle='rbxassetid://108501754774630',
letterNSquare='rbxassetid://134128630622949',letterOCircle=
'rbxassetid://102216372092166',letterOSquare='rbxassetid://100189064332452',
letterPCircle='rbxassetid://133454893649760',letterPSquare=
'rbxassetid://121771081041226',letterQCircle='rbxassetid://121158947718797',
letterQSquare='rbxassetid://138412895934294',
letterRButtonRoundedbottomHorizontal='rbxassetid://127892690915857',
letterRCircle='rbxassetid://71266917331154',letterRJoystick=
'rbxassetid://77839293235193',letterRJoystickPressDown=
'rbxassetid://101313826207669',letterRJoystickTiltDown=
'rbxassetid://107724362619264',letterRJoystickTiltLeft=
'rbxassetid://105136001525486',letterRJoystickTiltRight=
'rbxassetid://110960582214040',letterRJoystickTiltUp=
'rbxassetid://71286967299311',letterRSquare='rbxassetid://135777530848446',
letterRSquareOnSquare='rbxassetid://123053148394613',letterSCircle=
'rbxassetid://83393144046860',letterSSquare='rbxassetid://137609708051079',
letterTCircle='rbxassetid://75623106527183',letterTSquare=
'rbxassetid://116018632541398',letterUCircle='rbxassetid://100569535331718',
letterUSquare='rbxassetid://76708256054317',letterVCircle=
'rbxassetid://83920398217229',letterVSquare='rbxassetid://129063617167906',
letterWCircle='rbxassetid://107802977183125',letterWSquare=
'rbxassetid://83322547030564',letterXCircle='rbxassetid://99920343804208',
letterXSquare='rbxassetid://123476212380657',letterXSquareroot=
'rbxassetid://80429022258285',letterYCircle='rbxassetid://120543405393753',
letterYSquare='rbxassetid://80658772608290',letterZCircle=
'rbxassetid://109541227310226',letterZSquare='rbxassetid://139916717288653',
level='rbxassetid://100308504901487',licenseplate='rbxassetid://137114933132779'
,lifepreserver='rbxassetid://135131229835272',lightBeaconMax=
'rbxassetid://124312382613163',lightBeaconMin='rbxassetid://70423881683729',
lightbulb='rbxassetid://133139109847915',lightbulb2=
'rbxassetid://113732604881776',lightbulbCircle='rbxassetid://118221893668950',
lightbulbLed='rbxassetid://94823659962786',lightbulbLedWide=
'rbxassetid://90211091241325',lightbulbMax='rbxassetid://125899987559082',
lightbulbMin='rbxassetid://136026940464695',lightbulbMinBadgeExclamationmark=
'rbxassetid://79741870105023',lightbulbSlash='rbxassetid://75943132819488',
lightCylindricalCeiling='rbxassetid://122085524435093',
lightCylindricalCeilingInverse='rbxassetid://71514036206061',lightMax=
'rbxassetid://98054612514465',lightMin='rbxassetid://106830474075817',
lightOverheadLeft='rbxassetid://77338685313149',lightOverheadRight=
'rbxassetid://80072282008170',lightPanel='rbxassetid://95814870024986',lightrail
='rbxassetid://131976541545046',lightRecessed='rbxassetid://86260930652333',
lightRecessed3='rbxassetid://114724303679773',lightRecessed3Inverse=
'rbxassetid://104736639469269',lightRecessedInverse=
'rbxassetid://71537648368875',lightRibbon='rbxassetid://105551604595639',
lightspectrumHorizontal='rbxassetid://136876578426359',lightStrip2=
'rbxassetid://109514183964177',lightswitchOff='rbxassetid://107459744997878',
lightswitchOffSquare='rbxassetid://129076838815388',lightswitchOn=
'rbxassetid://91075409896822',lightswitchOnSquare='rbxassetid://125232571135272'
,line2HorizontalDecreaseCircle='rbxassetid://91785772312764',
line3CrossedSwirlCircle='rbxassetid://79363605870305',line3Horizontal=
'rbxassetid://75751226066824',line3HorizontalButtonAngledtopVerticalRight=
'rbxassetid://97400802704692',line3HorizontalCircle=
'rbxassetid://110254435693486',line3HorizontalDecrease=
'rbxassetid://109126919762827',line3HorizontalDecreaseCircle=
'rbxassetid://71228118949528',lineDiagonal='rbxassetid://82666299567550',
lineDiagonalArrow='rbxassetid://92568642919457',linesMeasurementHorizontal=
'rbxassetid://106602621327513',linesMeasurementVertical=
'rbxassetid://70411457538222',lineweight='rbxassetid://72563256038805',link=
'rbxassetid://129995000515171',linkBadgePlus='rbxassetid://95861775889792',
linkCircle='rbxassetid://130455786914257',linkIcloud=
'rbxassetid://128000480304769',lirasign='rbxassetid://85086103429122',
lirasignCircle='rbxassetid://94083907273646',lirasignSquare=
'rbxassetid://79032718509179',listAndFilm='rbxassetid://139241711577989',
listBullet='rbxassetid://100123835173933',listBulletBelowRectangle=
'rbxassetid://80023544987733',listBulletCircle='rbxassetid://136723888881994',
listBulletClipboard='rbxassetid://121315754661696',listBulletIndent=
'rbxassetid://102199183886425',listBulletRectangle=
'rbxassetid://117229481852614',listBulletRectanglePortrait=
'rbxassetid://116075715529412',listClipboard='rbxassetid://103260641776255',
listDash='rbxassetid://118277557957455',listDashHeaderRectangle=
'rbxassetid://85943743779050',listNumber='rbxassetid://91244323866171',listStar=
'rbxassetid://110452119166185',listTriangle='rbxassetid://119019384389138',
livephoto='rbxassetid://102834300794894',livephotoBadgeAutomatic=
'rbxassetid://117804202337786',livephotoPlay='rbxassetid://117241613033811',
livephotoSlash='rbxassetid://125048275199622',lizard=
'rbxassetid://103748917799848',lizardCircle='rbxassetid://94464094044811',
lmButtonHorizontal='rbxassetid://94380610717086',location=
'rbxassetid://122678502104360',locationCircle='rbxassetid://113957216146271',
locationMagnifyingglass='rbxassetid://98241048499649',locationNorth=
'rbxassetid://82169739589093',locationNorthCircle='rbxassetid://132843911874563'
,locationNorthLine='rbxassetid://139985377517529',locationSlash=
'rbxassetid://91990528463774',locationSlashCircle='rbxassetid://132188592884970'
,locationSquare='rbxassetid://86937326871446',locationViewfinder=
'rbxassetid://122466714159268',lock='rbxassetid://119125428737838',lockAppDashed
='rbxassetid://111344596174945',lockApplewatch='rbxassetid://81987142815643',
lockBadgeClock='rbxassetid://75062161205651',lockCircle=
'rbxassetid://93274298465206',lockCircleDotted='rbxassetid://127519593614049',
lockDesktopcomputer='rbxassetid://136358075907544',lockDisplay=
'rbxassetid://103111304999607',lockDoc='rbxassetid://122591748345523',lockIcloud
='rbxassetid://88181705897505',lockIpad='rbxassetid://97694280883446',lockIphone
='rbxassetid://116360902928809',lockLaptopcomputer=
'rbxassetid://132525575467307',lockOpen='rbxassetid://82132779304054',
lockOpenApplewatch='rbxassetid://138549364400959',lockOpenDesktopcomputer=
'rbxassetid://97385609564243',lockOpenDisplay='rbxassetid://117213485694448',
lockOpenIpad='rbxassetid://120198073263922',lockOpenIphone=
'rbxassetid://107078188358826',lockOpenLaptopcomputer=
'rbxassetid://89711722973070',lockOpenRotation='rbxassetid://91539290703274',
lockOpenTrianglebadgeExclamationmark='rbxassetid://102183066621732',
lockRectangle='rbxassetid://130656167137532',lockRectangleOnRectangle=
'rbxassetid://132802306064274',lockRectangleStack='rbxassetid://118554514944289'
,lockRotation='rbxassetid://99937396878315',lockShield=
'rbxassetid://136853703264345',lockSlash='rbxassetid://101795791789254',
lockSquare='rbxassetid://98566443709245',lockSquareStack=
'rbxassetid://71722029808763',lockTrianglebadgeExclamationmark=
'rbxassetid://103914618699393',loupe='rbxassetid://81647791995971',
lsbButtonAngledbottomHorizontalLeft='rbxassetid://128594273750837',
ltButtonRoundedtopHorizontal='rbxassetid://133145313133247',ltCircle=
'rbxassetid://136152244620004',lungs='rbxassetid://123279436452980',
m1ButtonHorizontal='rbxassetid://87087217250166',m2ButtonHorizontal=
'rbxassetid://108885641299566',m3ButtonHorizontal='rbxassetid://127888106481885'
,m4ButtonHorizontal='rbxassetid://140519232868304',macbook=
'rbxassetid://86472747691252',macbookAndIpad='rbxassetid://77003037265710',
macbookAndIphone='rbxassetid://84340669511803',macbookAndVisionpro=
'rbxassetid://127278593229556',macbookGen1='rbxassetid://90881537901989',
macbookGen2='rbxassetid://79759408409418',macmini='rbxassetid://125685878830022'
,macproGen1='rbxassetid://119393591565976',macproGen2=
'rbxassetid://114725993670899',macproGen3='rbxassetid://86124477871382',
macproGen3Server='rbxassetid://84145547699628',macstudio=
'rbxassetid://76642054977973',macwindow='rbxassetid://110276030463954',
macwindowAndCursorarrow='rbxassetid://90741041437063',macwindowBadgePlus=
'rbxassetid://87166150150186',macwindowOnRectangle=
'rbxassetid://131115847589274',magazine='rbxassetid://134630064485077',
magicmouse='rbxassetid://96927055531974',magnifyingglass=
'rbxassetid://134122727615034',magnifyingglassCircle=
'rbxassetid://86464344711108',magsafeBatterypack='rbxassetid://79639408689089',
mail='rbxassetid://108246439499760',mailAndTextMagnifyingglass=
'rbxassetid://75549816367630',mailStack='rbxassetid://126813915735862',manatsign
='rbxassetid://99099739233864',manatsignCircle='rbxassetid://116051288811223',
manatsignSquare='rbxassetid://79259161110982',map='rbxassetid://136805527671928'
,mapCircle='rbxassetid://77610408904670',mappin='rbxassetid://103020839450072',
mappinAndEllipse='rbxassetid://126322593782895',mappinAndEllipseCircle=
'rbxassetid://131745353866034',mappinCircle='rbxassetid://74179773070764',
mappinSlash='rbxassetid://127844876046017',mappinSlashCircle=
'rbxassetid://75702585672244',mappinSquare='rbxassetid://79910957001962',medal=
'rbxassetid://134971613911509',mediastick='rbxassetid://96017921741888',
medicalThermometer='rbxassetid://94373493783669',megaphone=
'rbxassetid://137016768703735',memories='rbxassetid://109786533078027',
memoriesBadgeMinus='rbxassetid://86865909767639',memoriesBadgePlus=
'rbxassetid://120626706873914',memorychip='rbxassetid://85008277084746',
menubarArrowDownRectangle='rbxassetid://119960778680170',menubarArrowUpRectangle
='rbxassetid://89052358166513',menubarDockRectangle=
'rbxassetid://98555969356271',menubarDockRectangleBadgeRecord=
'rbxassetid://81512824979210',menubarRectangle='rbxassetid://97397394002959',
menucard='rbxassetid://96119871867711',message='rbxassetid://72241028686449',
messageBadge='rbxassetid://95008660525929',messageBadgeCircle=
'rbxassetid://138999347319073',messageBadgeWaveform=
'rbxassetid://88244349364147',messageCircle='rbxassetid://87601751094524',
metronome='rbxassetid://97739534053490',mic='rbxassetid://70559142840213',
micAndSignalMeter='rbxassetid://98371685797325',micBadgePlus=
'rbxassetid://124905697228070',micBadgeXmark='rbxassetid://90776924897027',
micCircle='rbxassetid://97798740260123',microbe='rbxassetid://121303258684373',
microbeCircle='rbxassetid://78114102963002',microwave=
'rbxassetid://96310568064690',micSlash='rbxassetid://77413617305085',
micSlashCircle='rbxassetid://124310703535746',micSquare=
'rbxassetid://113336595252301',millsign='rbxassetid://136543947978868',
millsignCircle='rbxassetid://129083347617966',millsignSquare=
'rbxassetid://97660568436996',minus='rbxassetid://120243537927411',minusCircle=
'rbxassetid://75645831305441',minusDiamond='rbxassetid://86936086210042',
minusForwardslashPlus='rbxassetid://71254452238286',minusMagnifyingglass=
'rbxassetid://123606884277714',minusPlusAndFluidBatteryblock=
'rbxassetid://120131222786282',minusPlusBatteryblock=
'rbxassetid://131524999134330',minusPlusBatteryblockExclamationmark=
'rbxassetid://115460080165403',minusPlusBatteryblockSlash=
'rbxassetid://135096725601247',minusPlusBatteryblockStack=
'rbxassetid://108480603987168',minusPlusBatteryblockStackExclamationmark=
'rbxassetid://126662981282596',minusRectangle='rbxassetid://81081385196803',
minusRectanglePortrait='rbxassetid://87804665538297',minusSquare=
'rbxassetid://73893413794606',mirrorSideLeft='rbxassetid://70895722264014',
mirrorSideLeftAndArrowTurnDownRight='rbxassetid://84679324674485',
mirrorSideLeftAndHeatWaves='rbxassetid://70930057310516',mirrorSideRight=
'rbxassetid://71465512634260',mirrorSideRightAndArrowTurnDownLeft=
'rbxassetid://103244246445799',mirrorSideRightAndHeatWaves=
'rbxassetid://83606053441080',moon='rbxassetid://134740339752496',moonCircle=
'rbxassetid://71384714868629',moonDust='rbxassetid://72370895135010',
moonDustCircle='rbxassetid://132656040539406',moonHaze=
'rbxassetid://130751963413095',moonHazeCircle='rbxassetid://123906847453556',
moonphaseFirstQuarter='rbxassetid://115831170662432',
moonphaseFirstQuarterInverse='rbxassetid://114122330597748',moonphaseFullMoon=
'rbxassetid://132583368419563',moonphaseFullMoonInverse=
'rbxassetid://140020174918496',moonphaseLastQuarter=
'rbxassetid://80167679969519',moonphaseLastQuarterInverse=
'rbxassetid://87886084385086',moonphaseNewMoon='rbxassetid://118342168561745',
moonphaseNewMoonInverse='rbxassetid://87418554982706',moonphaseWaningCrescent=
'rbxassetid://129421422642553',moonphaseWaningCrescentInverse=
'rbxassetid://98293484041714',moonphaseWaningGibbous=
'rbxassetid://81222054116109',moonphaseWaningGibbousInverse=
'rbxassetid://119506904322823',moonphaseWaxingCrescent=
'rbxassetid://99224910993382',moonphaseWaxingCrescentInverse=
'rbxassetid://116039335421508',moonphaseWaxingGibbous=
'rbxassetid://114168237513262',moonphaseWaxingGibbousInverse=
'rbxassetid://124370152593202',moonrise='rbxassetid://104211541577947',
moonriseCircle='rbxassetid://112969428653535',moonset=
'rbxassetid://136817842137929',moonsetCircle='rbxassetid://116016767393972',
moonStars='rbxassetid://87751912018193',moonStarsCircle=
'rbxassetid://78928354868984',moonZzz='rbxassetid://119950763586659',mosaic=
'rbxassetid://103642437897783',mount='rbxassetid://116781539906082',mountain2=
'rbxassetid://103253627588735',mountain2Circle='rbxassetid://75596088969984',
mouth='rbxassetid://81554253441017',move3d='rbxassetid://124163244087469',
movieclapper='rbxassetid://110731151411422',mph='rbxassetid://82611137171340',
mphCircle='rbxassetid://70712789480975',mug='rbxassetid://107785798546923',
multiply='rbxassetid://121923161396626',multiplyCircle=
'rbxassetid://88024174281445',multiplySquare='rbxassetid://120023339335211',
musicMic='rbxassetid://126510932173223',musicMicCircle=
'rbxassetid://121995856123205',musicNote='rbxassetid://133237720818172',
musicNoteHouse='rbxassetid://98530136283172',musicNoteList=
'rbxassetid://138145661496558',musicNoteTv='rbxassetid://76316565456234',
musicQuarternote3='rbxassetid://111853378946214',mustache=
'rbxassetid://123686636668421',nairasign='rbxassetid://86634510364909',
nairasignCircle='rbxassetid://77590797149551',nairasignSquare=
'rbxassetid://101949521514770',network='rbxassetid://95447228158380',
networkSlash='rbxassetid://136179450801365',newspaper=
'rbxassetid://94882365651933',newspaperCircle='rbxassetid://124076154041904',
norwegiankronesign='rbxassetid://73048636434744',norwegiankronesignCircle=
'rbxassetid://70861021416629',norwegiankronesignSquare=
'rbxassetid://88021808466600',nose='rbxassetid://137854511086792',nosign=
'rbxassetid://135434009047019',nosignApp='rbxassetid://114399860120925',note=
'rbxassetid://93279801394323',noteText='rbxassetid://128260562606530',
noteTextBadgePlus='rbxassetid://103069459660634',number=
'rbxassetid://84795648344820',number00Circle='rbxassetid://131779637005640',
number00Square='rbxassetid://81236373352019',number01Circle=
'rbxassetid://138017951861028',number01Square='rbxassetid://97241538934163',
number02Circle='rbxassetid://133242670562001',number02Square=
'rbxassetid://99179290111993',number03Circle='rbxassetid://105983470184277',
number03Square='rbxassetid://132291497347326',number04Circle=
'rbxassetid://116987436384055',number04Square='rbxassetid://104100419385488',
number05Circle='rbxassetid://130314809611820',number05Square=
'rbxassetid://114379850471491',number06Circle='rbxassetid://137452105712472',
number06Square='rbxassetid://103212010162769',number07Circle=
'rbxassetid://102549222409891',number07Square='rbxassetid://80554919883042',
number08Circle='rbxassetid://133051884093292',number08Square=
'rbxassetid://128176821770996',number09Circle='rbxassetid://76455988018714',
number09Square='rbxassetid://87408221362281',number0Circle=
'rbxassetid://112630144563845',number0Square='rbxassetid://83690626547054',
number10Circle='rbxassetid://96193951740646',number10Lane=
'rbxassetid://81314525759681',number10Square='rbxassetid://81808119537499',
number11Circle='rbxassetid://121287509877595',number11Lane=
'rbxassetid://103036455180106',number11Square='rbxassetid://137943364469277',
number123Rectangle='rbxassetid://115605993616370',number12Circle=
'rbxassetid://95488831711839',number12Lane='rbxassetid://122996912273287',
number12Square='rbxassetid://134346701257530',number13Circle=
'rbxassetid://117905874629917',number13Square='rbxassetid://117293639837435',
number14Circle='rbxassetid://108407748009645',number14Square=
'rbxassetid://87120163705904',number15Circle='rbxassetid://101007633009470',
number15Square='rbxassetid://78052584911395',number16Circle=
'rbxassetid://107648080370730',number16Square='rbxassetid://127190639879155',
number17Circle='rbxassetid://104117985546346',number17Square=
'rbxassetid://73499070638265',number18Circle='rbxassetid://102380885337705',
number18Square='rbxassetid://80311469813477',number19Circle=
'rbxassetid://134713999920408',number19Square='rbxassetid://102272936095513',
number1Brakesignal='rbxassetid://79144309389823',number1Circle=
'rbxassetid://90420045405973',number1Lane='rbxassetid://125260612972564',
number1Magnifyingglass='rbxassetid://111096049925424',number1Square=
'rbxassetid://108186243137995',number20Circle='rbxassetid://119790353650997',
number20Square='rbxassetid://73427706736721',number21Circle=
'rbxassetid://115011080119497',number21Square='rbxassetid://100575245011241',
number22Circle='rbxassetid://79147656530403',number22Square=
'rbxassetid://107808365980228',number23Circle='rbxassetid://113967161448579',
number23Square='rbxassetid://126327561252667',number24Circle=
'rbxassetid://77688026724586',number24Square='rbxassetid://102948515141281',
number25Circle='rbxassetid://103932230280729',number25Square=
'rbxassetid://85964236323828',number26Circle='rbxassetid://110095157711014',
number26Square='rbxassetid://72769891775076',number27Circle=
'rbxassetid://80413679989648',number27Square='rbxassetid://78907626263409',
number28Circle='rbxassetid://77630558937328',number28Square=
'rbxassetid://101516015146640',number29Circle='rbxassetid://112151950673070',
number29Square='rbxassetid://126060868481076',number2Brakesignal=
'rbxassetid://130026522834900',number2Circle='rbxassetid://115644023941063',
number2Lane='rbxassetid://76895941784764',number2Square=
'rbxassetid://135434406067611',number30Circle='rbxassetid://93539842298014',
number30Square='rbxassetid://92360148508407',number31Circle=
'rbxassetid://117202855882818',number31Square='rbxassetid://72665219530870',
number32Circle='rbxassetid://102701322952852',number32Square=
'rbxassetid://97548734649989',number33Circle='rbxassetid://76331950936098',
number33Square='rbxassetid://91723950606376',number34Circle=
'rbxassetid://76108893775703',number34Square='rbxassetid://98356773601222',
number35Circle='rbxassetid://128638587888904',number35Square=
'rbxassetid://114874576219731',number36Circle='rbxassetid://124580301053177',
number36Square='rbxassetid://128676757513519',number37Circle=
'rbxassetid://105355724679695',number37Square='rbxassetid://111356313667440',
number38Circle='rbxassetid://140658654909786',number38Square=
'rbxassetid://87276444787352',number39Circle='rbxassetid://127160538226349',
number39Square='rbxassetid://110607591007885',number3Circle=
'rbxassetid://82210102360256',number3Lane='rbxassetid://123566814024217',
number3Square='rbxassetid://100151903595968',number40Circle=
'rbxassetid://76284811463961',number40Square='rbxassetid://108964733911464',
number41Circle='rbxassetid://81051156411638',number41Square=
'rbxassetid://108180042091768',number42Circle='rbxassetid://105367690120970',
number42Square='rbxassetid://121398683227303',number43Circle=
'rbxassetid://116742062830209',number43Square='rbxassetid://114456062917463',
number44Circle='rbxassetid://95645523276973',number44Square=
'rbxassetid://74196270639498',number45Circle='rbxassetid://131982584078162',
number45Square='rbxassetid://112633410131411',number46Circle=
'rbxassetid://98121889785827',number46Square='rbxassetid://71827970370485',
number47Circle='rbxassetid://110683991524351',number47Square=
'rbxassetid://130355817586206',number48Circle='rbxassetid://100680920554029',
number48Square='rbxassetid://137504486853690',number49Circle=
'rbxassetid://85012410965666',number49Square='rbxassetid://112216977302610',
number4AltCircle='rbxassetid://120280636483094',number4AltSquare=
'rbxassetid://122930727055244',number4Circle='rbxassetid://113950512097158',
number4Lane='rbxassetid://80369915269072',number4Square=
'rbxassetid://85342885629372',number50Circle='rbxassetid://76596482604277',
number50Square='rbxassetid://89126185617207',number5Circle=
'rbxassetid://84249571663594',number5Lane='rbxassetid://80082125386311',
number5Square='rbxassetid://92555254652509',number6AltCircle=
'rbxassetid://132108212531324',number6AltSquare='rbxassetid://133921705918574',
number6Circle='rbxassetid://139508584419391',number6Lane=
'rbxassetid://120411900425268',number6Square='rbxassetid://136827465810666',
number7Circle='rbxassetid://91048231428377',number7Lane=
'rbxassetid://89152600086974',number7Square='rbxassetid://128474224252993',
number8Circle='rbxassetid://90175124244732',number8Lane=
'rbxassetid://135579479621822',number8Square='rbxassetid://103037928409169',
number9AltCircle='rbxassetid://89157942477413',number9AltSquare=
'rbxassetid://127573342279334',number9Circle='rbxassetid://122405410433743',
number9Lane='rbxassetid://118878335756561',number9Square=
'rbxassetid://113640399773664',numberCircle='rbxassetid://110293375077907',
numbersign='rbxassetid://93703605960093',numberSquare=
'rbxassetid://91122754706061',numeric2h='rbxassetid://105497397405088',
numeric2hCircle='rbxassetid://70624293530403',numeric4a=
'rbxassetid://86756867568912',numeric4aCircle='rbxassetid://80949635570356',
numeric4h='rbxassetid://111499849309749',numeric4hCircle=
'rbxassetid://108759735497325',numeric4kTv='rbxassetid://138479967752101',
numeric4l='rbxassetid://132669284716581',numeric4lCircle=
'rbxassetid://81144013373119',oar2Crossed='rbxassetid://134346835878356',octagon
='rbxassetid://112640529146294',oilcan='rbxassetid://73751343226394',opticaldisc
='rbxassetid://119334666009921',opticaldiscdrive='rbxassetid://94114570802765',
opticid='rbxassetid://104886052136547',option='rbxassetid://79633949097966',oval
='rbxassetid://82165435449960',ovalPortrait='rbxassetid://99917388154358',oven=
'rbxassetid://97338326968474',p1ButtonHorizontal='rbxassetid://111393827741253',
p2ButtonHorizontal='rbxassetid://73539710946704',p3ButtonHorizontal=
'rbxassetid://118240536899525',p4ButtonHorizontal='rbxassetid://91079232850384',
paddleshifterLeft='rbxassetid://128985311786011',paddleshifterRight=
'rbxassetid://103520208885819',paintbrush='rbxassetid://78778796291471',
paintbrushPointed='rbxassetid://124104285860059',paintpalette=
'rbxassetid://103052185781646',pano='rbxassetid://126701823254172',panoBadgePlay
='rbxassetid://88001585740645',paperclip='rbxassetid://133243253436828',
paperclipBadgeEllipsis='rbxassetid://71478987980623',paperclipCircle=
'rbxassetid://83283601046729',paperplane='rbxassetid://83069617793753',
paperplaneCircle='rbxassetid://134742116792128',paragraphsign=
'rbxassetid://129795684441190',parentheses='rbxassetid://138450840186073',
parkinglight='rbxassetid://118512616807904',parkingsign=
'rbxassetid://126556570862214',parkingsignBrakesignal=
'rbxassetid://125769976097943',parkingsignBrakesignalSlash=
'rbxassetid://108971010055508',parkingsignCircle='rbxassetid://109967744872497',
parkingsignRadiowavesLeftAndRight='rbxassetid://137597641731664',
parkingsignRadiowavesRightAndSafetycone='rbxassetid://107042978276216',
parkingsignSteeringwheel='rbxassetid://94161303067638',partyPopper=
'rbxassetid://112713963236563',pause='rbxassetid://139216971418437',pauseCircle=
'rbxassetid://98946488847229',pauseRectangle='rbxassetid://104549464466075',
pawprint='rbxassetid://95126175157453',pawprintCircle=
'rbxassetid://75537067952063',pc='rbxassetid://83096268492687',peacesign=
'rbxassetid://83001873559850',pedalAccelerator='rbxassetid://122201211401663',
pedalBrake='rbxassetid://82326398948926',pedalClutch=
'rbxassetid://108171489732171',pedestrianGateClosed=
'rbxassetid://127375934703336',pedestrianGateOpen='rbxassetid://82356564995154',
pencil='rbxassetid://79600866067272',pencilAndOutline=
'rbxassetid://101584267503414',pencilAndRuler='rbxassetid://117072105162042',
pencilAndScribble='rbxassetid://90456520308543',pencilCircle=
'rbxassetid://92041537326764',pencilLine='rbxassetid://86421421264789',
pencilSlash='rbxassetid://100768820882286',pencilTip=
'rbxassetid://100586979383356',pencilTipCropCircle='rbxassetid://92015155867835'
,pencilTipCropCircleBadgeArrowForward='rbxassetid://123273703865125',
pencilTipCropCircleBadgeMinus='rbxassetid://127282372833061',
pencilTipCropCircleBadgePlus='rbxassetid://73637261242191',pentagon=
'rbxassetid://82328640826189',percent='rbxassetid://112473305729794',person=
'rbxassetid://116021451912285',person2='rbxassetid://111998470155308',
person2BadgeGearshape='rbxassetid://138032001009208',person2BadgeKey=
'rbxassetid://120643953202096',person2Circle='rbxassetid://120032420649331',
person2CropSquareStack='rbxassetid://107882458912037',person2Gobackward=
'rbxassetid://77336790373231',person2Slash='rbxassetid://91490961902965',
person2Wave2='rbxassetid://92393446701692',person3=
'rbxassetid://101994328734673',person3Sequence='rbxassetid://122525315379680',
personalhotspot='rbxassetid://131263865479644',personalhotspotCircle=
'rbxassetid://80358099135295',personAndArrowLeftAndArrowRight=
'rbxassetid://128164370218812',personAndBackgroundDotted=
'rbxassetid://106855141833683',personAndBackgroundStripedHorizontal=
'rbxassetid://80613924548522',personBadgeClock='rbxassetid://135617743892366',
personBadgeKey='rbxassetid://78454102710171',personBadgeMinus=
'rbxassetid://101063022271154',personBadgePlus='rbxassetid://94727274541288',
personBadgeShieldCheckmark='rbxassetid://79493775266690',personBubble=
'rbxassetid://121024423780997',personBust='rbxassetid://90245467181053',
personBustCircle='rbxassetid://92689216973556',personCircle=
'rbxassetid://129465160382108',personCropArtframe='rbxassetid://91245281038674',
personCropCircle='rbxassetid://110606444275572',personCropCircleBadge=
'rbxassetid://107947395714624',personCropCircleBadgeCheckmark=
'rbxassetid://72819767827115',personCropCircleBadgeClock=
'rbxassetid://116476836377449',personCropCircleBadgeExclamationmark=
'rbxassetid://128726094920945',personCropCircleBadgeMinus=
'rbxassetid://86049981762080',personCropCircleBadgeMoon=
'rbxassetid://123372767298874',personCropCircleBadgePlus=
'rbxassetid://101669410692706',personCropCircleBadgeQuestionmark=
'rbxassetid://72238314183198',personCropCircleBadgeXmark=
'rbxassetid://114085430986250',personCropCircleDashed=
'rbxassetid://80608834016797',personCropCircleDashedCircle=
'rbxassetid://85289002159133',personCropRectangle='rbxassetid://118490743414497'
,personCropRectangleBadgePlus='rbxassetid://137595870025492',
personCropRectangleStack='rbxassetid://72369057380020',personCropSquare=
'rbxassetid://86026512121028',personIcloud='rbxassetid://75415947180379',
personLineDottedPerson='rbxassetid://120261667568160',personSlash=
'rbxassetid://135492599367813',personTextRectangle=
'rbxassetid://136636038705110',personWave2='rbxassetid://93344210163431',
perspective='rbxassetid://104935679203505',pesetasign=
'rbxassetid://122937635612334',pesetasignCircle='rbxassetid://136839926018301',
pesetasignSquare='rbxassetid://138929664669224',pesosign=
'rbxassetid://130169037644067',pesosignCircle='rbxassetid://92594498475141',
pesosignSquare='rbxassetid://80097174397814',phone=
'rbxassetid://101851519628829',phoneArrowDownLeft='rbxassetid://136312395884021'
,phoneArrowRight='rbxassetid://71837612610759',phoneArrowUpRight=
'rbxassetid://97361543037256',phoneArrowUpRightCircle=
'rbxassetid://102856105226209',phoneBadgeCheckmark=
'rbxassetid://129703778505781',phoneBadgePlus='rbxassetid://92211015196093',
phoneBadgeWaveform='rbxassetid://106306500528949',phoneBubble=
'rbxassetid://139534849741392',phoneCircle='rbxassetid://113071989329960',
phoneConnection='rbxassetid://104763696754755',phoneDown=
'rbxassetid://117300651986088',phoneDownCircle='rbxassetid://117349481484807',
phoneDownWavesLeftAndRight='rbxassetid://94223664552263',photo=
'rbxassetid://119891718242970',photoArtframe='rbxassetid://85166170338826',
photoArtframeCircle='rbxassetid://129522994218684',photoBadgeArrowDown=
'rbxassetid://93732940342806',photoBadgeCheckmark='rbxassetid://106124733193567'
,photoBadgePlus='rbxassetid://104140352595581',photoCircle=
'rbxassetid://135595834116845',photoOnRectangle='rbxassetid://101739126044462',
photoOnRectangleAngled='rbxassetid://76993915929292',photoStack=
'rbxassetid://131603418978165',photoTv='rbxassetid://71841499652328',pianokeys=
'rbxassetid://121513356842278',pianokeysInverse='rbxassetid://95843330464030',
pill='rbxassetid://122458068597877',pillCircle='rbxassetid://70668216406589',
pills='rbxassetid://82618799693877',pillsCircle='rbxassetid://114193645114608',
pin='rbxassetid://104248915186202',pinCircle='rbxassetid://70640396547151',
pinSlash='rbxassetid://126241136504528',pinSquare='rbxassetid://79119804117782',
pip='rbxassetid://115967653846850',pipeAndDrop='rbxassetid://83693236492739',
pipEnter='rbxassetid://91682820732322',pipExit='rbxassetid://79540644388261',
pipRemove='rbxassetid://101926467036428',pipSwap='rbxassetid://120732651410224',
platterBottomApplewatchCase='rbxassetid://71962024468770',
platterTopApplewatchCase='rbxassetid://101888557518229',play=
'rbxassetid://93150903163211',playCircle='rbxassetid://105691552662846',
playDesktopcomputer='rbxassetid://134614914293344',playDisplay=
'rbxassetid://128768280044816',playHouse='rbxassetid://74576022776067',
playLaptopcomputer='rbxassetid://102306252768628',playpause=
'rbxassetid://84516015334328',playpauseCircle='rbxassetid://104255500816645',
playRectangle='rbxassetid://112783672572897',playRectangleOnRectangle=
'rbxassetid://127492187065121',playRectangleOnRectangleCircle=
'rbxassetid://94680194456115',playSlash='rbxassetid://127588932891396',
playSquare='rbxassetid://100507695206960',playSquareStack=
'rbxassetid://97407504970894',playstationLogo='rbxassetid://111043522235372',
playTv='rbxassetid://78284603022317',plus='rbxassetid://116313904677555',plusApp
='rbxassetid://134454016485062',plusBubble='rbxassetid://79114500158071',
plusCircle='rbxassetid://106498819435037',plusDiamond=
'rbxassetid://99471083644312',plusForwardslashMinus=
'rbxassetid://101583852484106',plusMagnifyingglass=
'rbxassetid://106605689820309',plusMessage='rbxassetid://84287372349882',
plusminus='rbxassetid://111531324704436',plusminusCircle=
'rbxassetid://140615272292516',plusRectangle='rbxassetid://115868131231932',
plusRectangleOnFolder='rbxassetid://73631354257330',plusRectangleOnRectangle=
'rbxassetid://130849601240379',plusRectanglePortrait=
'rbxassetid://121108211858314',plusSquare='rbxassetid://81291475389001',
plusSquareDashed='rbxassetid://114727435936796',plusSquareOnSquare=
'rbxassetid://125892817208221',plusViewfinder='rbxassetid://81871809820849',
point3ConnectedTrianglepathDotted='rbxassetid://74660617726642',
pointBottomleftForwardToArrowtriangleUturnScurvepath=
'rbxassetid://137756040106336',pointBottomleftForwardToPointToprightScurvepath=
'rbxassetid://79728028643343',pointForwardToPointCapsulepath=
'rbxassetid://112214880986572',pointTopleftDownToPointBottomrightCurvepath=
'rbxassetid://80186088768531',polishzlotysign='rbxassetid://128827211573021',
polishzlotysignCircle='rbxassetid://126253337677719',polishzlotysignSquare=
'rbxassetid://73854696737565',popcorn='rbxassetid://114196868128828',
popcornCircle='rbxassetid://114944517087215',power='rbxassetid://72689307860434'
,powerCircle='rbxassetid://113272254391277',powercord=
'rbxassetid://80760528975994',powerDotted='rbxassetid://81125510275781',poweroff
='rbxassetid://137073482781299',poweron='rbxassetid://75648097915966',
poweroutletStrip='rbxassetid://117866413302881',poweroutletTypeA=
'rbxassetid://89023037120590',poweroutletTypeASquare=
'rbxassetid://102210644328395',poweroutletTypeB='rbxassetid://106019854161686',
poweroutletTypeBSquare='rbxassetid://95891293096602',poweroutletTypeC=
'rbxassetid://137371671720849',poweroutletTypeCSquare=
'rbxassetid://74229499833367',poweroutletTypeD='rbxassetid://73617572168680',
poweroutletTypeDSquare='rbxassetid://88968914344180',poweroutletTypeE=
'rbxassetid://93090468579267',poweroutletTypeESquare=
'rbxassetid://78186051128155',poweroutletTypeF='rbxassetid://127420391847658',
poweroutletTypeFSquare='rbxassetid://108279471977293',poweroutletTypeG=
'rbxassetid://98024472425132',poweroutletTypeGSquare=
'rbxassetid://74263336399146',poweroutletTypeH='rbxassetid://110263464628023',
poweroutletTypeHSquare='rbxassetid://121300311443144',poweroutletTypeI=
'rbxassetid://72402044256005',poweroutletTypeISquare=
'rbxassetid://81535330406319',poweroutletTypeJ='rbxassetid://135057502262222',
poweroutletTypeJSquare='rbxassetid://97621195021690',poweroutletTypeK=
'rbxassetid://92422817771764',poweroutletTypeKSquare=
'rbxassetid://109081418122651',poweroutletTypeL='rbxassetid://137998110606546',
poweroutletTypeLSquare='rbxassetid://86062018568562',poweroutletTypeM=
'rbxassetid://133802871153933',poweroutletTypeMSquare=
'rbxassetid://130482343499161',poweroutletTypeN='rbxassetid://76103667593602',
poweroutletTypeNSquare='rbxassetid://136254790252178',poweroutletTypeO=
'rbxassetid://75218095438939',poweroutletTypeOSquare=
'rbxassetid://71900293448203',powerplug='rbxassetid://111879589251527',
powersleep='rbxassetid://91943586075883',printer='rbxassetid://83881840159268',
printerDotmatrix='rbxassetid://105219095792793',projective=
'rbxassetid://71738513277519',purchased='rbxassetid://80222037688102',
purchasedCircle='rbxassetid://133888454143255',puzzlepiece=
'rbxassetid://98099182294534',puzzlepieceExtension=
'rbxassetid://130117895810806',pyramid='rbxassetid://95463742492961',qrcode=
'rbxassetid://140725727320555',qrcodeViewfinder='rbxassetid://104595181570709',
questionmark='rbxassetid://80880276906111',questionmarkApp=
'rbxassetid://124214756534126',questionmarkAppDashed=
'rbxassetid://82630189464324',questionmarkBubble='rbxassetid://116817120269321',
questionmarkCircle='rbxassetid://121510622803439',questionmarkDiamond=
'rbxassetid://131080964700897',questionmarkFolder='rbxassetid://128944831989494'
,questionmarkSquare='rbxassetid://72864331831173',questionmarkSquareDashed=
'rbxassetid://91846373605770',questionmarkVideo='rbxassetid://98709776325814',
quoteBubble='rbxassetid://103878791163454',quoteClosing=
'rbxassetid://118643231228533',quotelevel='rbxassetid://80605913759097',
quoteOpening='rbxassetid://103445457344425',r1ButtonRoundedbottomHorizontal=
'rbxassetid://108990914077074',r1Circle='rbxassetid://106475140183391',
r2ButtonAngledtopVerticalRight='rbxassetid://137854250504108',
r2ButtonRoundedtopHorizontal='rbxassetid://121350488190576',r2Circle=
'rbxassetid://119637665894130',r3ButtonAngledbottomHorizontalRight=
'rbxassetid://95271269099059',r4ButtonHorizontal='rbxassetid://109939286065658',
radio='rbxassetid://127813707013877',rainbow='rbxassetid://122459289380054',rays
='rbxassetid://103853957057967',rbButtonRoundedbottomHorizontal=
'rbxassetid://78435476357010',rbCircle='rbxassetid://135754915920490',
recordCircle='rbxassetid://118850296850025',recordingtape=
'rbxassetid://123485659101411',recordingtapeCircle=
'rbxassetid://136987433157501',rectangle='rbxassetid://105842035689856',
rectangle2Swap='rbxassetid://74207930657385',rectangle3Group=
'rbxassetid://78742917596230',rectangle3GroupBubble=
'rbxassetid://77645484700555',rectangleAndArrowUpRightAndArrowDownLeft=
'rbxassetid://95663560935589',rectangleAndArrowUpRightAndArrowDownLeftSlash=
'rbxassetid://125488933131093',rectangleAndHandPointUpLeft=
'rbxassetid://122271575147438',rectangleAndPaperclip=
'rbxassetid://93726076902766',rectangleAndPencilAndEllipsis=
'rbxassetid://115419852351706',rectangleAndTextMagnifyingglass=
'rbxassetid://87433712298166',rectangleArrowtriangle2Inward=
'rbxassetid://77031627269456',rectangleArrowtriangle2Outward=
'rbxassetid://90565029178403',rectangleBadgeCheckmark=
'rbxassetid://138477173171828',rectangleBadgeMinus='rbxassetid://85430673830703'
,rectangleBadgePersonCrop='rbxassetid://74070598829533',rectangleBadgePlus=
'rbxassetid://75776053794542',rectangleBadgeXmark='rbxassetid://123746641688580'
,rectangleCheckered='rbxassetid://93153326915076',rectangleCompressVertical=
'rbxassetid://104681751048761',rectangleConnectedToLineBelow=
'rbxassetid://82631799831020',rectangleDashed='rbxassetid://126583281259116',
rectangleDashedAndPaperclip='rbxassetid://110442692260490',
rectangleDashedBadgeRecord='rbxassetid://80584763472715',rectangleExpandVertical
='rbxassetid://76715190679203',rectangleGrid1x2='rbxassetid://113103804041889',
rectangleGrid2x2='rbxassetid://128728263365353',rectangleGrid3x2=
'rbxassetid://77824004592449',rectangleInsetBadgeRecord=
'rbxassetid://80945153582789',rectangleLandscapeRotate=
'rbxassetid://116754709211472',rectangleOnRectangle=
'rbxassetid://93744957969363',rectangleOnRectangleAngled=
'rbxassetid://116702087868251',rectangleOnRectangleButtonAngledtopVerticalLeft=
'rbxassetid://121909629757135',rectangleOnRectangleCircle=
'rbxassetid://102618216381515',rectangleOnRectangleSlash=
'rbxassetid://115930917875352',rectangleOnRectangleSlashCircle=
'rbxassetid://83145354639291',rectangleOnRectangleSquare=
'rbxassetid://137725651591810',rectanglePortrait='rbxassetid://108637808072962',
rectanglePortraitAndArrowForward='rbxassetid://99167544053526',
rectanglePortraitAndArrowRight='rbxassetid://124300182286131',
rectanglePortraitArrowtriangle2Inward='rbxassetid://105200912760319',
rectanglePortraitArrowtriangle2Outward='rbxassetid://131909629450570',
rectanglePortraitBadgePlus='rbxassetid://95374044206535',
rectanglePortraitOnRectanglePortrait='rbxassetid://130615051679928',
rectanglePortraitOnRectanglePortraitAngled='rbxassetid://93286321128807',
rectanglePortraitOnRectanglePortraitSlash='rbxassetid://83660481195838',
rectanglePortraitRotate='rbxassetid://73469374308722',rectanglePortraitSlash=
'rbxassetid://122374434743593',rectanglePortraitSplit2x1=
'rbxassetid://91308949433578',rectanglePortraitSplit2x1Slash=
'rbxassetid://127185754063741',rectangleRatio16To9=
'rbxassetid://109938930436731',rectangleRatio3To4='rbxassetid://130405672862642'
,rectangleRatio4To3='rbxassetid://87584913225684',rectangleRatio9To16=
'rbxassetid://129248134323563',rectangleSlash='rbxassetid://119234922547258',
rectangleSplit1x2='rbxassetid://139199408414951',rectangleSplit2x1=
'rbxassetid://122985323236874',rectangleSplit2x1Slash=
'rbxassetid://77049759453884',rectangleSplit2x2='rbxassetid://124511928304111',
rectangleSplit3x1='rbxassetid://106422066212410',rectangleSplit3x3=
'rbxassetid://87511467952331',rectangleStack='rbxassetid://116436365604694',
rectangleStackBadgeMinus='rbxassetid://71773953022774',
rectangleStackBadgePersonCrop='rbxassetid://116647073390820',
rectangleStackBadgePlay='rbxassetid://105071912152364',rectangleStackBadgePlus=
'rbxassetid://94330078931959',refrigerator='rbxassetid://134196464931732',
repeat1='rbxassetid://86869926343704',repeat1Circle=
'rbxassetid://123029304044267',repeatCircle='rbxassetid://74291857794948',
repeatGlyph='rbxassetid://94715683784128',restart='rbxassetid://99230014772294',
restartCircle='rbxassetid://131591881198070',retarderBrakesignal=
'rbxassetid://100157667180542',retarderBrakesignalAndExclamationmark=
'rbxassetid://74902498530962',retarderBrakesignalSlash=
'rbxassetid://84102803071686',returnGlyph='rbxassetid://125022377592914',
returnLeft='rbxassetid://110224380772500',returnRight=
'rbxassetid://122185733816748',rhombus='rbxassetid://97211209378526',right=
'rbxassetid://70410321543143',rightCircle='rbxassetid://131025561974165',
righttriangle='rbxassetid://96561870650351',righttriangleSplitDiagonal=
'rbxassetid://89239583520619',rmButtonHorizontal='rbxassetid://74090385970824',
roadLaneArrowtriangle2Inward='rbxassetid://108870516678186',roadLanes=
'rbxassetid://136448319824043',roadLanesCurvedLeft=
'rbxassetid://123174448761559',roadLanesCurvedRight=
'rbxassetid://127016599803614',rollerShadeClosed='rbxassetid://75299567401714',
rollerShadeOpen='rbxassetid://133504201544705',romanShadeClosed=
'rbxassetid://119842663324888',romanShadeOpen='rbxassetid://98539120053062',
rosette='rbxassetid://104515407773377',rotate3d='rbxassetid://93761802614112',
rotate3dCircle='rbxassetid://134226688957397',rotateLeft=
'rbxassetid://98799628588304',rotateRight='rbxassetid://111275860515167',
rsbButtonAngledbottomHorizontalRight='rbxassetid://112596870199527',
rtButtonRoundedtopHorizontal='rbxassetid://77414193246574',rtCircle=
'rbxassetid://73945464414109',rublesign='rbxassetid://118249868271730',
rublesignCircle='rbxassetid://79226077520588',rublesignSquare=
'rbxassetid://123531328159580',ruler='rbxassetid://124580708960964',rupeesign=
'rbxassetid://85411502631666',rupeesignCircle='rbxassetid://119535270201362',
rupeesignSquare='rbxassetid://106889772279759',safari=
'rbxassetid://134813194739204',sailboat='rbxassetid://124223873287376',
sailboatCircle='rbxassetid://80188382794265',scale3d=
'rbxassetid://103494897886729',scalemass='rbxassetid://133153878762852',scanner=
'rbxassetid://78787533209735',scissors='rbxassetid://134014368605943',
scissorsBadgeEllipsis='rbxassetid://124510059336842',scissorsCircle=
'rbxassetid://73749284657232',scooter='rbxassetid://101451506223502',scope=
'rbxassetid://138965519058977',screwdriver='rbxassetid://108754384830635',
scribble='rbxassetid://112659538886348',scribbleVariable=
'rbxassetid://113418787669609',scroll='rbxassetid://100275128356418',sdcard=
'rbxassetid://89062794519312',seal='rbxassetid://116680651128574',
selectionPinInOut='rbxassetid://118937861811428',sensor=
'rbxassetid://99545470323641',sensorTagRadiowavesForward=
'rbxassetid://101287793606982',serverRack='rbxassetid://87471642858713',shadow=
'rbxassetid://101016771832491',sharedWithYou='rbxassetid://99587894742741',
sharedWithYouCircle='rbxassetid://105105656683870',sharedWithYouSlash=
'rbxassetid://110559749416219',shareplay='rbxassetid://138079370720763',
shareplaySlash='rbxassetid://121565824245528',shazamLogo=
'rbxassetid://88386725554767',shekelsign='rbxassetid://125416979323531',
shekelsignCircle='rbxassetid://119059176394326',shekelsignSquare=
'rbxassetid://114005761845672',shield='rbxassetid://91456099996277',
shieldCheckered='rbxassetid://122359446295344',shieldSlash=
'rbxassetid://127623631983240',shift='rbxassetid://103497538775852',shippingbox=
'rbxassetid://107938215608690',shippingboxAndArrowBackward=
'rbxassetid://121166407104401',shippingboxCircle='rbxassetid://102547406990516',
shoe='rbxassetid://82493855899710',shoe2='rbxassetid://79242384179363',
shoeCircle='rbxassetid://90588951026587',shower='rbxassetid://97695002865005',
showerHandheld='rbxassetid://84464581325650',showerSidejet=
'rbxassetid://121175241416575',shuffle='rbxassetid://87450497439316',
shuffleCircle='rbxassetid://133059088881917',sidebarLeading=
'rbxassetid://124272600426135',sidebarLeft='rbxassetid://130573800693254',
sidebarRight='rbxassetid://136433333923397',sidebarSquaresLeading=
'rbxassetid://89410164136670',sidebarSquaresLeft='rbxassetid://122373684808454',
sidebarSquaresRight='rbxassetid://121764320633671',sidebarSquaresTrailing=
'rbxassetid://135215950427898',sidebarTrailing='rbxassetid://112168102439448',
signature='rbxassetid://99872213385309',signpostAndArrowtriangleUp=
'rbxassetid://135811855637794',signpostAndArrowtriangleUpCircle=
'rbxassetid://132260859335770',signpostLeft='rbxassetid://82043050227523',
signpostLeftCircle='rbxassetid://89166289473162',signpostRight=
'rbxassetid://125234331963023',signpostRightAndLeft=
'rbxassetid://100126199311107',signpostRightAndLeftCircle=
'rbxassetid://121579829956208',signpostRightCircle='rbxassetid://97809916615544'
,simcard='rbxassetid://75942064097734',simcard2='rbxassetid://109448480863154',
sink='rbxassetid://78779590744156',skateboard='rbxassetid://128480869239478',
skew='rbxassetid://115857011318404',skis='rbxassetid://117669107559086',
slashCircle='rbxassetid://87377327240033',sleep='rbxassetid://126008454743032',
sleepCircle='rbxassetid://137037304125529',sliderHorizontal2Gobackward=
'rbxassetid://82873088218553',
sliderHorizontal2RectangleAndArrowTriangle2Circlepath=
'rbxassetid://114334030505190',sliderHorizontal2Square=
'rbxassetid://139963867327097',sliderHorizontal2SquareBadgeArrowDown=
'rbxassetid://83805287451173',sliderHorizontal2SquareOnSquare=
'rbxassetid://86052721209640',sliderHorizontal3='rbxassetid://125312809266536',
sliderHorizontalBelowRectangle='rbxassetid://104503235376084',
sliderHorizontalBelowSunMax='rbxassetid://127938100858050',sliderVertical3=
'rbxassetid://77544182772028',slowmo='rbxassetid://128626341731847',
smallcircleCircle='rbxassetid://110993506219366',smartphone=
'rbxassetid://136541768651991',smoke='rbxassetid://125856836085455',smokeCircle=
'rbxassetid://96560042568991',snowboard='rbxassetid://94644320377389',snowflake=
'rbxassetid://94996818832550',snowflakeCircle='rbxassetid://136095050387598',
snowflakeRoadLane='rbxassetid://86171703026173',snowflakeRoadLaneDashed=
'rbxassetid://134725589357545',snowflakeSlash='rbxassetid://135229843970972',
soccerball='rbxassetid://93588660811184',soccerballCircle=
'rbxassetid://112098460084295',soccerballCircleInverse=
'rbxassetid://109103360528747',soccerballInverse='rbxassetid://80168579233004',
sofa='rbxassetid://90257588118101',sos='rbxassetid://92239693015980',sosCircle=
'rbxassetid://73656725577112',space='rbxassetid://84228287737516',sparkle=
'rbxassetid://137342676578759',sparkleMagnifyingglass=
'rbxassetid://97868818415034',sparkles='rbxassetid://136785461727211',
sparklesRectangleStack='rbxassetid://72293617251305',sparklesTv=
'rbxassetid://100100430518994',speaker='rbxassetid://100089005176028',
speakerBadgeExclamationmark='rbxassetid://111352971044258',speakerCircle=
'rbxassetid://95286777593066',speakerMinus='rbxassetid://87951749521691',
speakerPlus='rbxassetid://113437716920071',speakerSlash=
'rbxassetid://111271654439696',speakerSlashCircle='rbxassetid://94312826802104',
speakerSquare='rbxassetid://96052663063298',speakerWave1=
'rbxassetid://74357466482248',speakerWave2='rbxassetid://125400878293762',
speakerWave2Bubble='rbxassetid://138385174727103',speakerWave2Circle=
'rbxassetid://122573191160979',speakerWave3='rbxassetid://83682739710738',
speakerZzz='rbxassetid://106200649349362',spigot='rbxassetid://123132266452704',
sportscourt='rbxassetid://139920796888744',sportscourtCircle=
'rbxassetid://73405086307525',sprinkler='rbxassetid://96293092408391',
sprinklerAndDroplets='rbxassetid://91088171991120',square=
'rbxassetid://129582598166480',square2Layers3d='rbxassetid://101269866424806',
square3Layers3d='rbxassetid://102169132825714',square3Layers3dDownBackward=
'rbxassetid://130745266323734',square3Layers3dDownForward=
'rbxassetid://76679271188673',square3Layers3dDownLeft=
'rbxassetid://73469205525507',square3Layers3dDownLeftSlash=
'rbxassetid://109408664468844',square3Layers3dDownRight=
'rbxassetid://129579025247041',square3Layers3dDownRightSlash=
'rbxassetid://95581434284076',square3Layers3dSlash='rbxassetid://98366671660323'
,squareAndArrowDown='rbxassetid://79587815753711',squareAndArrowDownOnSquare=
'rbxassetid://109055198586744',squareAndArrowUp='rbxassetid://76100481665919',
squareAndArrowUpCircle='rbxassetid://102883600711271',squareAndArrowUpOnSquare=
'rbxassetid://80620430732303',squareAndArrowUpTrianglebadgeExclamationmark=
'rbxassetid://128677213480334',squareAndAtRectangle=
'rbxassetid://132539666086102',squareAndLineVerticalAndSquare=
'rbxassetid://84150791951041',squareAndPencil='rbxassetid://140076550722533',
squareAndPencilCircle='rbxassetid://133506064060496',squareArrowtriangle4Outward
='rbxassetid://102099341147458',squareBadgePlus='rbxassetid://101427888056506',
squareCircle='rbxassetid://107653029399075',squareDashed=
'rbxassetid://73775231115700',squareDotted='rbxassetid://100046623230666',
squareGrid2x2='rbxassetid://112798363114425',squareGrid3x1BelowLineGrid1x2=
'rbxassetid://131093292287095',squareGrid3x1FolderBadgePlus=
'rbxassetid://73003254597852',squareGrid3x2='rbxassetid://138618469503094',
squareGrid3x3='rbxassetid://131603440779190',squareGrid3x3Square=
'rbxassetid://121341762621158',squareOnCircle='rbxassetid://79322048074111',
squareOnSquare='rbxassetid://83114835552488',squareOnSquareBadgePersonCrop=
'rbxassetid://76298079857132',squareOnSquareDashed=
'rbxassetid://129387505216630',squareOnSquareIntersectionDashed=
'rbxassetid://117126700660099',squareOnSquareSquareshapeControlhandles=
'rbxassetid://135072980607270',squareResize='rbxassetid://96684945440533',
squareResizeDown='rbxassetid://139611739836485',squareResizeUp=
'rbxassetid://112157204168286',squaresBelowRectangle=
'rbxassetid://139212478963369',squareshape='rbxassetid://115465076039027',
squareshapeControlhandlesOnSquareshapeControlhandles=
'rbxassetid://109180456759120',squareshapeDottedSplit2x2=
'rbxassetid://91166447813616',squareshapeDottedSquareshape=
'rbxassetid://136135057397579',squareshapeSplit2x2=
'rbxassetid://124589508119591',squareshapeSplit2x2Dotted=
'rbxassetid://128554723537974',squareshapeSplit3x3=
'rbxassetid://128687020079752',squareshapeSquareshapeDotted=
'rbxassetid://104026015415021',squareSlash='rbxassetid://105002680063220',
squaresLeadingRectangle='rbxassetid://73002236561583',squareSplit1x2=
'rbxassetid://85695933542376',squareSplit2x1='rbxassetid://140361673907262',
squareSplit2x2='rbxassetid://80607562660987',squareSplitBottomrightquarter=
'rbxassetid://74374099500726',squareSplitDiagonal='rbxassetid://85690414662074',
squareSplitDiagonal2x2='rbxassetid://103107217012653',squareStack=
'rbxassetid://126509171459852',squareStack3dDownForward=
'rbxassetid://136839933637256',squareStack3dDownRight=
'rbxassetid://88831883911906',squareStack3dForwardDottedline=
'rbxassetid://99671805593479',squareStack3dUp='rbxassetid://132246403381093',
squareStack3dUpBadgeAutomatic='rbxassetid://132060196448728',
squareStack3dUpSlash='rbxassetid://96629379704580',
squareStack3dUpTrianglebadgeExclamationmark='rbxassetid://92226983821401',
squareTextSquare='rbxassetid://86807905492081',stairs=
'rbxassetid://84125960911060',star='rbxassetid://121044708288511',starBubble=
'rbxassetid://90730129592978',starCircle='rbxassetid://74113798414652',
staroflife='rbxassetid://130180459020683',staroflifeCircle=
'rbxassetid://107209354940663',staroflifeShield='rbxassetid://71187905819692',
starSlash='rbxassetid://82419419900719',starSquare=
'rbxassetid://137365351954235',starSquareOnSquare='rbxassetid://139970590215352'
,steeringwheel='rbxassetid://92183035957801',steeringwheelAndHeatWaves=
'rbxassetid://113178310406499',steeringwheelAndKey='rbxassetid://90520284268011'
,steeringwheelAndLiquidWave='rbxassetid://87294669615842',steeringwheelAndLock=
'rbxassetid://74743575328404',steeringwheelArrowtriangleLeft=
'rbxassetid://88898032553978',steeringwheelArrowtriangleRight=
'rbxassetid://102529502145209',steeringwheelBadgeExclamationmark=
'rbxassetid://83325628672712',steeringwheelCircle='rbxassetid://103709474487322'
,steeringwheelExclamationmark='rbxassetid://76594873846428',
steeringwheelRoadLane='rbxassetid://107769890993151',steeringwheelRoadLaneDashed
='rbxassetid://129239795139154',steeringwheelSlash=
'rbxassetid://134437200205984',sterlingsign='rbxassetid://134832180316284',
sterlingsignCircle='rbxassetid://136356829104212',sterlingsignSquare=
'rbxassetid://83605346351975',stethoscope='rbxassetid://89329640332709',
stethoscopeCircle='rbxassetid://133416066230092',stop=
'rbxassetid://105695319911866',stopCircle='rbxassetid://137732435777947',
stopwatch='rbxassetid://113139216636221',storefront=
'rbxassetid://86584275512423',storefrontCircle='rbxassetid://84046393260817',
stove='rbxassetid://71957334471804',strikethrough='rbxassetid://131277316824132'
,stroller='rbxassetid://132675133177273',studentdesk=
'rbxassetid://78328747111113',suitcase='rbxassetid://79096298263246',
suitcaseCart='rbxassetid://105497197779430',suitcaseRolling=
'rbxassetid://135725521532386',suitClub='rbxassetid://127115733770447',
suitDiamond='rbxassetid://72053411888478',suitHeart=
'rbxassetid://79734794502960',suitSpade='rbxassetid://117912839271550',sum=
'rbxassetid://94609082916141',sunDust='rbxassetid://125978578265900',
sunDustCircle='rbxassetid://123242725996662',sunglasses=
'rbxassetid://81075971778330',sunHaze='rbxassetid://140362619208896',
sunHazeCircle='rbxassetid://79317673278321',sunHorizon=
'rbxassetid://84823083704566',sunHorizonCircle='rbxassetid://136610267484073',
sunMax='rbxassetid://70966423109015',sunMaxCircle='rbxassetid://116061290404119'
,sunMaxTrianglebadgeExclamationmark='rbxassetid://137724770650489',sunMin=
'rbxassetid://134147267476594',sunRain='rbxassetid://124988831687915',
sunRainCircle='rbxassetid://95382927717552',sunrise=
'rbxassetid://86522868392545',sunriseCircle='rbxassetid://102096127517282',
sunset='rbxassetid://98250111223411',sunsetCircle='rbxassetid://118261521702696'
,sunSnow='rbxassetid://105497846293144',sunSnowCircle=
'rbxassetid://93743760547649',surfboard='rbxassetid://127625923112521',suvSide=
'rbxassetid://140446325087274',suvSideAirCirculate=
'rbxassetid://133108762312504',suvSideAirFresh='rbxassetid://91736704064763',
suvSideAndExclamationmark='rbxassetid://83769689408337',suvSideArrowtriangleDown
='rbxassetid://98875535178411',suvSideArrowtriangleUp=
'rbxassetid://76355034102038',suvSideArrowtriangleUpArrowtriangleDown=
'rbxassetid://132319310613060',suvSideFrontOpen='rbxassetid://86582352934925',
suvSideHillDown='rbxassetid://71407531470410',suvSideHillUp=
'rbxassetid://81173169979474',suvSideLock='rbxassetid://89210382014188',
suvSideLockOpen='rbxassetid://101512866346721',suvSideRearOpen=
'rbxassetid://83402986313506',swatchpalette='rbxassetid://82881073984440',
swedishkronasign='rbxassetid://121254481031925',swedishkronasignCircle=
'rbxassetid://114114603728837',swedishkronasignSquare=
'rbxassetid://87797718899327',swift='rbxassetid://124422809080916',switch2=
'rbxassetid://123774929100933',switchProgrammable='rbxassetid://86373319257783',
switchProgrammableSquare='rbxassetid://100534974804220',syringe=
'rbxassetid://140598137500472',tablecells='rbxassetid://136915178998357',
tablecellsBadgeEllipsis='rbxassetid://78977408182246',tableFurniture=
'rbxassetid://96709265353196',tag='rbxassetid://120982593056390',tagCircle=
'rbxassetid://137127479586070',tagSlash='rbxassetid://75512320803484',tagSquare=
'rbxassetid://122755613849311',taillightFog='rbxassetid://106911392297072',
takeoutbagAndCupAndStraw='rbxassetid://85060700118806',target=
'rbxassetid://133083478000285',teddybear='rbxassetid://109324656874845',teletype
='rbxassetid://130437459178859',teletypeAnswer='rbxassetid://92419798289116',
teletypeAnswerCircle='rbxassetid://125307270919332',teletypeCircle=
'rbxassetid://70386732453341',tengesign='rbxassetid://104571134181209',
tengesignCircle='rbxassetid://88838846920003',tengesignSquare=
'rbxassetid://98181250215462',tennisball='rbxassetid://112015684614085',
tennisballCircle='rbxassetid://122806857306890',tennisRacket=
'rbxassetid://127846239289143',tennisRacketCircle='rbxassetid://132815488263915'
,tent='rbxassetid://128313992003405',tent2='rbxassetid://133197448646156',
tent2Circle='rbxassetid://123018159014682',tentCircle=
'rbxassetid://105629629735006',testtube2='rbxassetid://87224379973316',
textAligncenter='rbxassetid://100013389243756',textAlignleft=
'rbxassetid://131300826723120',textAlignright='rbxassetid://109977962042867',
textAndCommandMacwindow='rbxassetid://134232637327534',textAppend=
'rbxassetid://116984371214024',textBadgeCheckmark='rbxassetid://83959915995233',
textBadgeMinus='rbxassetid://102450982956747',textBadgePlus=
'rbxassetid://125107548432735',textBadgeStar='rbxassetid://135709025716856',
textBadgeXmark='rbxassetid://112245439023510',textBelowPhoto=
'rbxassetid://77022030147537',textBookClosed='rbxassetid://93946762025599',
textBubble='rbxassetid://126703621249282',textformat=
'rbxassetid://107554513869335',textformat12='rbxassetid://96656679869431',
textformat123='rbxassetid://134142879344254',textformatAbc=
'rbxassetid://138305677898152',textformatAbcDottedunderline=
'rbxassetid://94626317959618',textformatAlt='rbxassetid://123124468510980',
textformatSize='rbxassetid://91204946072031',textformatSizeLarger=
'rbxassetid://119056994611696',textformatSizeSmaller=
'rbxassetid://140144442713341',textformatSubscript='rbxassetid://93956563381755'
,textformatSuperscript='rbxassetid://89885950993129',textInsert=
'rbxassetid://96094280367287',textJustify='rbxassetid://74017281128119',
textJustifyLeading='rbxassetid://110841533402588',textJustifyLeft=
'rbxassetid://71056893606616',textJustifyRight='rbxassetid://117627394764231',
textJustifyTrailing='rbxassetid://75698539941130',
textLineFirstAndArrowtriangleForward='rbxassetid://87316700589333',
textLineLastAndArrowtriangleForward='rbxassetid://98382438293518',
textMagnifyingglass='rbxassetid://92054561041377',textQuote=
'rbxassetid://135436305746756',textRedaction='rbxassetid://126203267075245',
textViewfinder='rbxassetid://99598174505678',textWordSpacing=
'rbxassetid://107756440139738',theatermaskAndPaintbrush=
'rbxassetid://107133906416240',theatermasks='rbxassetid://90184535673274',
theatermasksCircle='rbxassetid://95838756478953',thermometerAndLiquidWaves=
'rbxassetid://128722545733178',thermometerBrakesignal=
'rbxassetid://107352044231129',thermometerHigh='rbxassetid://91101915692277',
thermometerLow='rbxassetid://115575513971184',thermometerMedium=
'rbxassetid://77455077808435',thermometerMediumSlash=
'rbxassetid://87304643965180',thermometerSnowflake=
'rbxassetid://116774329016388',thermometerSnowflakeCircle=
'rbxassetid://111476847709075',thermometerSun='rbxassetid://94194458426641',
thermometerSunCircle='rbxassetid://128477041487200',thermometerTransmission=
'rbxassetid://140542372721482',thermometerVariableAndFigure=
'rbxassetid://88123909655888',thermometerVariableAndFigureCircle=
'rbxassetid://135638340391848',ticket='rbxassetid://110925526107379',timelapse=
'rbxassetid://83242866202757',timelineSelection='rbxassetid://78056459768529',
timer='rbxassetid://135824106698294',timerCircle='rbxassetid://89099539604505',
timerSquare='rbxassetid://124854155922379',tirepressure=
'rbxassetid://70630773850730',togglepower='rbxassetid://82636385469382',toilet=
'rbxassetid://115464108201574',toiletCircle='rbxassetid://118229119810610',
tornado='rbxassetid://123649806863264',tornadoCircle=
'rbxassetid://86814092515491',tortoise='rbxassetid://96267357253452',
tortoiseCircle='rbxassetid://80695585362980',torus=
'rbxassetid://129104387170046',touchid='rbxassetid://102431783184781',
tractionControlTirepressure='rbxassetid://94252420030182',
tractionControlTirepressureExclamationmark='rbxassetid://83126806524953',
tractionControlTirepressureSlash='rbxassetid://81782026780838',trainSideFrontCar
='rbxassetid://71136775064369',trainSideMiddleCar='rbxassetid://122783570956217'
,trainSideRearCar='rbxassetid://99248862375127',tram=
'rbxassetid://79089921419275',tramCircle='rbxassetid://139587665939032',
transmission='rbxassetid://82095327657690',trapezoidAndLineHorizontal=
'rbxassetid://114580783863586',trapezoidAndLineVertical=
'rbxassetid://99657006798406',trash='rbxassetid://78126576618726',trashCircle=
'rbxassetid://74847809036755',trashSlash='rbxassetid://138785965824409',
trashSlashCircle='rbxassetid://118205904212505',trashSlashSquare=
'rbxassetid://76844228322051',trashSquare='rbxassetid://73676689899686',tray=
'rbxassetid://95002984534597',tray2='rbxassetid://105911615551602',
trayAndArrowDown='rbxassetid://79443320438795',trayAndArrowUp=
'rbxassetid://131013044002938',trayCircle='rbxassetid://115587769194043',
trayFull='rbxassetid://83955310930749',tree='rbxassetid://124716247326474',
treeCircle='rbxassetid://125501930381970',triangle=
'rbxassetid://117056701383483',triangleCircle='rbxassetid://131013922022315',
triangleshape='rbxassetid://132938112335367',trophy=
'rbxassetid://114768961322644',trophyCircle='rbxassetid://131353197601526',
tropicalstorm='rbxassetid://104920374967118',tropicalstormCircle=
'rbxassetid://134316857776368',truckBox='rbxassetid://75988082105887',
truckBoxBadgeClock='rbxassetid://125009138126042',truckPickupSide=
'rbxassetid://127765698300247',truckPickupSideAirCirculate=
'rbxassetid://85891775608419',truckPickupSideAirFresh=
'rbxassetid://131753875087703',truckPickupSideAndExclamationmark=
'rbxassetid://83231779858162',truckPickupSideArrowtriangleDown=
'rbxassetid://114386236093562',truckPickupSideArrowtriangleUp=
'rbxassetid://116428744585632',truckPickupSideArrowtriangleUpArrowtriangleDown=
'rbxassetid://76427781095379',truckPickupSideFrontOpen=
'rbxassetid://112435745703377',truckPickupSideHillDown=
'rbxassetid://123808339764039',truckPickupSideHillUp=
'rbxassetid://121251602304733',truckPickupSideLock=
'rbxassetid://102108675422985',truckPickupSideLockOpen=
'rbxassetid://75887904051247',tshirt='rbxassetid://105519615410765',tshirtCircle
='rbxassetid://113143848007202',tugriksign='rbxassetid://89930597498005',
tugriksignCircle='rbxassetid://115746887844395',tugriksignSquare=
'rbxassetid://90977696033651',tuningfork='rbxassetid://70787488294701',
turkishlirasign='rbxassetid://76225802272770',turkishlirasignCircle=
'rbxassetid://120182321691308',turkishlirasignSquare=
'rbxassetid://79819479586064',tv='rbxassetid://100431872634918',tvAndMediabox=
'rbxassetid://77121105114658',tvBadgeWifi='rbxassetid://107607303450493',
tvCircle='rbxassetid://83077239950445',tvSlash='rbxassetid://92840793230642',
uiwindowSplit2x1='rbxassetid://100870750902375',umbrella=
'rbxassetid://139873711710370',umbrellaPercent='rbxassetid://137759731975203',
underline='rbxassetid://130727477130834',vialViewfinder=
'rbxassetid://79284010194080',video='rbxassetid://116674608022538',
videoBadgeCheckmark='rbxassetid://100590959863177',videoBadgeEllipsis=
'rbxassetid://127470952590102',videoBadgePlus='rbxassetid://110276669673190',
videoBadgeWaveform='rbxassetid://100775815776537',videoBubble=
'rbxassetid://100513787700252',videoCircle='rbxassetid://80336523442172',
videoDoorbell='rbxassetid://124958500647626',videoprojector=
'rbxassetid://109557205246641',videoSlash='rbxassetid://104694593162011',
videoSlashCircle='rbxassetid://132935698623392',videoSquare=
'rbxassetid://79070228843547',view2d='rbxassetid://130581988648518',view3d=
'rbxassetid://118981422861746',viewfinder='rbxassetid://107163384837844',
viewfinderCircle='rbxassetid://87068760477512',viewfinderRectangular=
'rbxassetid://84113775338318',viewfinderTrianglebadgeExclamationmark=
'rbxassetid://136880541411896',visionpro='rbxassetid://76932342920990',
visionproAndArrowForward='rbxassetid://108237299822657',
visionproBadgeExclamationmark='rbxassetid://78812515285709',visionproBadgePlay=
'rbxassetid://122979325623328',visionproCircle='rbxassetid://70783957641063',
visionproSlash='rbxassetid://118082278749251',visionproSlashCircle=
'rbxassetid://116051094478142',voiceover='rbxassetid://137803560786421',
volleyball='rbxassetid://79299062876735',volleyballCircle=
'rbxassetid://91043163448360',wake='rbxassetid://78336416523921',wakeCircle=
'rbxassetid://110980432478312',walletPass='rbxassetid://75933590775088',
wandAndRays='rbxassetid://123378637843142',wandAndRaysInverse=
'rbxassetid://122867501488879',wandAndStars='rbxassetid://95449961416091',
wandAndStarsInverse='rbxassetid://108387310992441',warninglight=
'rbxassetid://121399035072757',washer='rbxassetid://128326072958231',
washerCircle='rbxassetid://96232743495062',watchAnalog=
'rbxassetid://130235028835944',watchfaceApplewatchCase=
'rbxassetid://117162603748095',waterbottle='rbxassetid://80368662508442',
waterWaves='rbxassetid://131771944642242',waterWavesAndArrowDown=
'rbxassetid://108671761307420',
waterWavesAndArrowDownTrianglebadgeExclamationmark=
'rbxassetid://126530403017273',waterWavesAndArrowUp=
'rbxassetid://117956742428464',waterWavesSlash='rbxassetid://91314059201896',
wave3Backward='rbxassetid://135465950254542',wave3BackwardCircle=
'rbxassetid://120993164293924',wave3Forward='rbxassetid://71234179988746',
wave3ForwardCircle='rbxassetid://134368876486800',wave3Left=
'rbxassetid://101143794643507',wave3LeftCircle='rbxassetid://77678245431607',
wave3Right='rbxassetid://100308895062444',wave3RightCircle=
'rbxassetid://104949505698077',waveform='rbxassetid://121102653139749',
waveformBadgeExclamationmark='rbxassetid://91003956461628',
waveformBadgeMagnifyingglass='rbxassetid://118658132559543',waveformBadgeMic=
'rbxassetid://140630166066509',waveformBadgeMinus='rbxassetid://89730195325992',
waveformBadgePlus='rbxassetid://73965498188945',waveformCircle=
'rbxassetid://113277128212488',waveformPath='rbxassetid://131882662434037',
waveformPathBadgeMinus='rbxassetid://80268627824682',waveformPathBadgePlus=
'rbxassetid://105872860151936',waveformPathEcg='rbxassetid://80139427564577',
waveformPathEcgRectangle='rbxassetid://111322357968319',waveformSlash=
'rbxassetid://112494455650123',webCamera='rbxassetid://140198237568248',wifi=
'rbxassetid://121202214555256',wifiCircle='rbxassetid://114091788211357',
wifiExclamationmark='rbxassetid://85758132404029',wifiExclamationmarkCircle=
'rbxassetid://102728247165080',wifiRouter='rbxassetid://79015444123271',
wifiSlash='rbxassetid://113880302917880',wifiSquare=
'rbxassetid://113783186289066',wind='rbxassetid://97805301082946',windCircle=
'rbxassetid://127880345932797',windowAwning='rbxassetid://98590089878990',
windowAwningClosed='rbxassetid://135088798223478',windowCasement=
'rbxassetid://96091297622037',windowCasementClosed=
'rbxassetid://117978652705592',windowCeiling='rbxassetid://85800394868097',
windowCeilingClosed='rbxassetid://124121037535399',windowHorizontal=
'rbxassetid://79372383682799',windowHorizontalClosed=
'rbxassetid://94160140686303',windowShadeClosed='rbxassetid://133215479484096',
windowShadeOpen='rbxassetid://72955891166629',windowVerticalClosed=
'rbxassetid://118478764399998',windowVerticalOpen='rbxassetid://89163736928849',
windshieldFrontAndFluidAndSpray='rbxassetid://123297482803348',
windshieldFrontAndHeatWaves='rbxassetid://96857923676249',
windshieldFrontAndSpray='rbxassetid://135400265655852',windshieldFrontAndWiper=
'rbxassetid://110551981358261',windshieldFrontAndWiperAndDrop=
'rbxassetid://93090721542909',windshieldFrontAndWiperAndSpray=
'rbxassetid://139773699538838',windshieldFrontAndWiperExclamationmark=
'rbxassetid://126299493138437',windshieldFrontAndWiperIntermittent=
'rbxassetid://132227982392304',windshieldRearAndFluidAndSpray=
'rbxassetid://94558257176129',windshieldRearAndHeatWaves=
'rbxassetid://98580494345897',windshieldRearAndSpray=
'rbxassetid://74972751796584',windshieldRearAndWiper=
'rbxassetid://93339699351032',windshieldRearAndWiperAndDrop=
'rbxassetid://74523105939242',windshieldRearAndWiperAndSpray=
'rbxassetid://88627632568368',windshieldRearAndWiperExclamationmark=
'rbxassetid://89630225593658',windshieldRearAndWiperIntermittent=
'rbxassetid://133454234211807',windSnow='rbxassetid://97001593895983',
windSnowCircle='rbxassetid://81698538505313',wineglass=
'rbxassetid://117555650477049',wonsign='rbxassetid://77488733779624',
wonsignCircle='rbxassetid://117854231480262',wonsignSquare=
'rbxassetid://96295977744019',wrenchAdjustable='rbxassetid://101329895864399',
wrenchAndScrewdriver='rbxassetid://82772346778192',wrongwaysign=
'rbxassetid://128555958259139',xboxLogo='rbxassetid://108507288025895',xmark=
'rbxassetid://74305353078098',xmarkApp='rbxassetid://98017685577280',xmarkBin=
'rbxassetid://126218087132335',xmarkBinCircle='rbxassetid://94227498676286',
xmarkCircle='rbxassetid://129591096461118',xmarkDiamond=
'rbxassetid://135421117881034',xmarkIcloud='rbxassetid://139598175458488',
xmarkOctagon='rbxassetid://136123728807852',xmarkRectangle=
'rbxassetid://139899770012733',xmarkRectanglePortrait=
'rbxassetid://135232429145312',xmarkSeal='rbxassetid://135122266065960',
xmarkShield='rbxassetid://138130228413169',xmarkSquare=
'rbxassetid://122807484131120',xserve='rbxassetid://73888078101687',xserveRaid=
'rbxassetid://117204052589312',yensign='rbxassetid://94276977373948',
yensignCircle='rbxassetid://121345638639744',yensignSquare=
'rbxassetid://108349363714803',yieldsign='rbxassetid://132369059216845',
zlButtonRoundedtopHorizontal='rbxassetid://126115161459047',
zrButtonRoundedtopHorizontal='rbxassetid://107608277098590',zzz=
'rbxassetid://137515429343264'}end function b.g()local c=b.load'd'local d=c.
Value local e=function(e,f)local g=(typeof(e)=='Color3'and e)or(typeof(e)==
'string'and Color3.fromHex(e))return{d(g),d(1-(f/100))}end return{Text={Primary=
e('FFFFFF',85),Secondary=e('FFFFFF',55),Tertiary=e('FFFFFF',25),Quaternary=e(
'FFFFFF',10),Quinary=e('FFFFFF',5),SelectionPrimary=e('FFFFFF',100),
PrimaryAccent=e('FFFFFF',38)},Accents={Red=e('FF453A',100)},Controls={Background
=e('1C1C1E',100),View=e('1F1F21',100),ViewBorder=e('FFFFFF',5),WindowControlIcon
=e('000000',50),WindowControlStroke=e('FFFFFF',10),Exit=e('FF5F57',100),Minimize
=e('FEBC2E',100),Zoom=e('28C840',100),SwitchAccent=e('478CF6',100),Selection=e(
'007AFF',100),SelectionStroke=e('007AFF',60),SelectionFocused=e('0A82FF',100),
SelectionFocusedAccent=e('FFFFFF',85),Sidebar=e('202023',84),Separator={
Background=e('000000',50),Shadow=e('FFFFFF',0)},Titlebar=e('363636',100),
TitlebarShadow={Background=e('000000',0),Color=d(ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(1,
Color3.fromRGB(255,255,255))}),Transparency=d(NumberSequence.new{
NumberSequenceKeypoint.new(0,0.5),NumberSequenceKeypoint.new(1,1)})},Toggle={
Knob=e('FFFFFF',100),KnobEffects=e('FFFFFF',100),SwitchOff=e('7a7a7a',40),
SwitchOn=e('478cf6',100),DepthEffect=d(ColorSequence.new{ColorSequenceKeypoint.
new(0,Color3.fromRGB(225,225,225)),ColorSequenceKeypoint.new(0.68,Color3.
fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))})
},Slider={Track=e('2C2C2E',100),TrackEffects=e('000000',10),TrackFill=e('478CF6'
,100),Thumb=e('FFFFFF',100),ThumbStroke=e('000000',20),ThumbEffects=e('FFFFFF',
80)},Button={Shadow=d(Color3.fromRGB(0,0,0)),FillPrimary=d(ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(72,148,255)),ColorSequenceKeypoint.
new(1,Color3.fromRGB(10,110,255))}),FillSecondary=d(ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(60,60,60)),ColorSequenceKeypoint.new(
1,Color3.fromRGB(55,55,55))})},Stepper={Background=e('373737',100),Dropshadow=e(
'000000',100),Separator=e('FFFFFF',10),Filler=e('FFFFFF',4),SegmentShadow=d(
ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),
ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))})},RadioButtonGroup={
Background=e('373737',100),Dot=e('FFFFFF',100),Stroke=e('000000',20),Overlay=e(
'FFFFFF',8),InnerShadow=e('FFFFFF',10)},MenuButton={IndicatorBackground=e(
'FFFFFF',10),MenuBackground=e('2C2C2E',95)}}}end function b.h()local c=b.load'd'
local d=c.Value local e=function(e,f)local g=(typeof(e)=='Color3'and e)or(
typeof(e)=='string'and Color3.fromHex(e))return{d(g),d(1-(f/100))}end return{
Text={Primary=e('000000',85),Secondary=e('000000',50),Tertiary=e('000000',25),
Quaternary=e('000000',10),Quinary=e('000000',5),SelectionPrimary=e('FFFFFF',100)
,PrimaryAccent=e('4D4D4D',100)},Accents={Red=e('FF3B30',100)},Controls={
Background=e('FFFFFF',100),View=e('FCFCFC',100),ViewBorder=e('000000',5),
WindowControlIcon=e('000000',50),WindowControlStroke=e('000000',20),Exit=e(
'FF5F57',100),Minimize=e('FEBC2E',100),Zoom=e('28C840',100),SwitchAccent=e(
'478CF6',100),Selection=e('007AFF',100),SelectionStroke=e('007AFF',50),
SelectionFocused=e('0A82FF',100),SelectionFocusedAccent=e('FFFFFF',85),Sidebar=
e('EAEAEA',84),Separator={Background=e('000000',18),Shadow=e('000000',10)},
Titlebar=e('EEEEEE',100),TitlebarShadow={Background=e('EAEAEA',25),Color=d(
ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),
ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}),Transparency=d(
NumberSequence.new{NumberSequenceKeypoint.new(0,0.35),NumberSequenceKeypoint.
new(1,0.35)})},Toggle={Knob=e('FFFFFF',100),KnobEffects=e('FFFFFF',100),
SwitchOff=e('000000',9),SwitchOn=e('478cf6',100),DepthEffect=d(ColorSequence.new
{ColorSequenceKeypoint.new(0,Color3.fromRGB(225,225,225)),ColorSequenceKeypoint.
new(0.68,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.
fromRGB(255,255,255))})},Slider={Track=e('000000',5),TrackEffects=e('000000',0),
Thumb=e('FFFFFF',100),ThumbStroke=e('000000',2),ThumbEffects=e('FFFFFF',100)},
Button={Shadow=d(Color3.new(0,0,0)),FillPrimary=d(ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(43,145,255)),ColorSequenceKeypoint.
new(1,Color3.fromRGB(0,122,255))}),FillSecondary=d(ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.
new(1,Color3.fromRGB(255,255,255))})},Stepper={Background=e('FFFFFF',100),
Dropshadow=e('000000',100),Separator=e('000000',22),Filler=e('000000',5),
SegmentShadow=d(ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0
,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))})},
RadioButtonGroup={Background=e('FFFFFF',100),Dot=e('FFFFFF',100),Stroke=e(
'000000',8),Overlay=e('FFFFFF',17),InnerShadow=e('000000',10)},MenuButton={
IndicatorBackground=e('000000',5),MenuBackground=e('F6F6F6',95)}}}end function b
.i()return{Dark=b.load'g',Light=b.load'h'}end function b.j()local c,d=b.load'e',
b.load'd'local e,f,g,h=c.Workspace,c.Lighting,d.Create,function(e,f,g,h,i)return
(e-f)*(i-h)/(g-f)+h end local i,j=function(i,j)local k=e.CurrentCamera:
ScreenPointToRay(i.X,i.Y)return k.Origin+k.Direction*j end,function()local i=e.
CurrentCamera.ViewportSize.Y return h(i,0,2560,8,56)end local k=function(k)local
l,m,n,o,p=Instance.new('Folder',e.CurrentCamera),{},{topLeft=Vector2.new(),
topRight=Vector2.new(),bottomRight=Vector2.new()},(g'Part'{Color=Color3.new(0,0,
0),Material=Enum.Material.Glass,Size=Vector3.new(1,1,0),Anchored=true,CanTouch=
false,CanCollide=false,CanQuery=false,Locked=true,CastShadow=false,Transparency=
0.98,g'SpecialMesh'{MeshType=Enum.MeshType.Brick,Offset=Vector3.new(0,0,-1E-6)}}
),g'DepthOfFieldEffect'{FarIntensity=0,NearIntensity=1,InFocusRadius=0.1,Parent=
f}local q=o:FindFirstChildWhichIsA'SpecialMesh'k=k or 0.001 local r,s=function(r
,s)n.topLeft=s n.topRight=s+Vector2.new(r.X,0)n.bottomRight=s+r end,function()
local r=e.CurrentCamera local s,t,u,v=(r and{(r.CFrame)}or{(CFrame.identity)})[1
],n.topLeft,n.topRight,n.bottomRight local w,x,y=i(t,k),i(u,k),i(v,k)local z,A=(
x-w).Magnitude,(x-y).Magnitude o.CFrame=CFrame.fromMatrix((w+y)/2,s.XVector,s.
YVector,s.ZVector)if q then q.Scale=Vector3.new(z,A,0)end end local t,u=function
(t)local u=j()local v,w=t.AbsoluteSize-Vector2.new(u,u),t.AbsolutePosition+
Vector2.new(u/2,u/2)r(v,w)task.spawn(s)end,function()local t=e.CurrentCamera if
not t then return end m[#m+1]=t:GetPropertyChangedSignal'CFrame':Connect(s)m[#m+
1]=t:GetPropertyChangedSignal'ViewportSize':Connect(s)m[#m+1]=t:
GetPropertyChangedSignal'FieldOfView':Connect(s)task.spawn(s)end o.Parent=l o.
Destroying:Connect(function()for v,w in m do pcall(function()p:Destroy()l:
Destroy()w:Disconnect()end)end end)u()return t,o end return function(l,m)local n
,o,p={},k(m)n.SetVisibility=function(q)p.Transparency=q and 0.98 or 1 end l:
GetPropertyChangedSignal'AbsolutePosition':Connect(function()o(l)end)l:
GetPropertyChangedSignal'AbsoluteSize':Connect(function()o(l)end)l:
GetPropertyChangedSignal'Visible':Connect(function()n.SetVisibility(l.Visible)
end)l.Destroying:Connect(function()p:Destroy()end)n.Model=p o(l)return n end end
function b.k()return{UIBlur=b.load'j'}end function b.l()return function(c)local
d,e=b.load'd',b.load'e'local f,g,h=d.Create,e.TweenService,{}h.Body=(f'Frame'{
Name='TextField',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Size=UDim2.fromOffset(150,23),SizeConstraint=Enum.
SizeConstraint.RelativeXX,f'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,5)
},f'UIStroke'{Name='UIStroke',ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
Thickness=1,__dynamicKeys={Color=c.Theme.Controls.ViewBorder[1],Transparency=c.
Theme.Controls.ViewBorder[2]}},f'TextBox'{Name='Field',AutomaticSize=Enum.
AutomaticSize.XY,Size=UDim2.fromOffset(138,0),BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,CursorPosition=-1,TextXAlignment=Enum.TextXAlignment.Left,
FontFace=Font.new'rbxassetid://12187365364',PlaceholderText='',Text='',TextSize=
15,__dynamicKeys={PlaceholderColor3=c.Theme.Text.Tertiary[1],TextTransparency=c.
Theme.Text.Tertiary[2]},__contextKeys={_general=function()local i=h.Field if not
i then return end if i.Text==''then i.PlaceholderColor3=c.Theme.Text.Tertiary[1]
.Value i.TextTransparency=c.Theme.Text.Tertiary[2].Value else i.TextColor3=c.
Theme.Text.Primary[1].Value i.TextTransparency=c.Theme.Text.Primary[2].Value end
end,TextTransparency=function()if not h.Field then return 1 end return h.Field.
Text==''and c.Theme.Text.Tertiary[2].Value or c.Theme.Text.Primary[2].Value end}
,f'UIPadding'{Name='UIPadding',PaddingTop=UDim.new(0,4),PaddingBottom=UDim.new(0
,4)}},f'UIPadding'{Name='UIPadding',PaddingLeft=UDim.new(0,6),PaddingRight=UDim.
new(0,6)},f'UIListLayout'{Name='UIListLayout',SortOrder=Enum.SortOrder.
LayoutOrder,HorizontalAlignment=Enum.HorizontalAlignment.Right,VerticalAlignment
=Enum.VerticalAlignment.Center,FillDirection=Enum.FillDirection.Horizontal,
Padding=UDim.new(0,4)}})h.Stroke=(h.Body:FindFirstChild'UIStroke')h.Padding=(h.
Body:FindFirstChild'UIPadding')h.Corner=(h.Body:FindFirstChild'UICorner')h.
Layout=(h.Body:FindFirstChild'UIListLayout')h.Field=(h.Body:FindFirstChild
'Field')h.FieldPadding=(h.Field:FindFirstChild'UIPadding')local i,j,k=TweenInfo.
new(0.13,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),(TweenInfo.new(0.2,Enum
.EasingStyle.Sine,Enum.EasingDirection.Out))h.Field.Focused:Connect(function()if
k then k:Cancel()end k=g:Create(h.Stroke,i,{Color=c.Theme.Controls.
SelectionStroke[1].Value,Transparency=c.Theme.Controls.SelectionStroke[2].Value,
Thickness=3})k:Play()end)h.Field.FocusLost:Connect(function()if k then k:Cancel(
)end k=g:Create(h.Stroke,j,{Color=c.Theme.Controls.ViewBorder[1].Value,
Transparency=c.Theme.Controls.ViewBorder[2].Value,Thickness=1})k:Play()end)h.
Field:GetPropertyChangedSignal'Text':Connect(function()if h.Field.Text==''then h
.Field.PlaceholderColor3=c.Theme.Text.Tertiary[1].Value h.Field.TextTransparency
=c.Theme.Text.Tertiary[2].Value else h.Field.TextColor3=c.Theme.Text.Primary[1].
Value h.Field.TextTransparency=c.Theme.Text.Primary[2].Value end end)return h
end end function b.m()return function(c)local d,e=b.load'd',b.load'l'(c)local f,
g,h,i,j,k=d.Create,{},0,{},function(f)local g,h=f.AbsolutePosition,f.
AbsoluteSize return{Left=g.X,Right=g.X+h.X,Top=g.Y,Bottom=g.Y+h.Y}end i.Body=(f
'Frame'{Name='Toolbar',BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size
=UDim2.new(1,0,0,52),__dynamicKeys={BackgroundColor3=c.Theme.Controls.Titlebar[1
],BackgroundTransparency=c.Theme.Controls.Titlebar[2]},f'UICorner'{Name=
'UICorner',CornerRadius=UDim.new(0,10)},f'Frame'{Name='Shadow',AnchorPoint=
Vector2.new(1,0),BackgroundColor3=Color3.fromRGB(234,234,234),
BackgroundTransparency=0.75,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0
,Position=UDim2.fromScale(1,1),Size=UDim2.new(1,0,0,2),ZIndex=0,__dynamicKeys={
BackgroundColor3=c.Theme.Controls.TitlebarShadow.Background[1],
BackgroundTransparency=c.Theme.Controls.TitlebarShadow.Background[2]},f
'UIGradient'{Name='UIGradient',Color=ColorSequence.new{ColorSequenceKeypoint.
new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,
0,0))},Rotation=-90,Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0
,0.35),NumberSequenceKeypoint.new(1,0.35)},__dynamicKeys={Color=c.Theme.Controls
.TitlebarShadow.Color,Transparency=c.Theme.Controls.TitlebarShadow.Transparency}
}},f'Frame'{Name='Content',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.fromScale(1,1),f'Frame'{Name='Leading',BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Size=UDim2.fromScale(0,1),f'UIListLayout'{Name='UIListLayout'
,FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,8),SortOrder=
Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},f
'Frame'{Name='TitleSubtitle',AutomaticSize=Enum.AutomaticSize.XY,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,LayoutOrder=2,f
'UIListLayout'{Name='UIListLayout',SortOrder=Enum.SortOrder.LayoutOrder,
VerticalAlignment=Enum.VerticalAlignment.Center},f'TextLabel'{Name='Subtitle',
AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new('rbxassetid://12187365364',
Enum.FontWeight.Medium,Enum.FontStyle.Normal),LayoutOrder=1,RichText=true,Size=
UDim2.fromOffset(0,14),Text='Subtitle',TextColor3=Color3.fromRGB(0,0,0),TextSize
=12,Visible=false,__dynamicKeys={TextColor3=c.Theme.Text.Secondary[1],
TextTransparency=c.Theme.Text.Secondary[2]}},f'TextLabel'{Name='Title',
AutomaticSize=Enum.AutomaticSize.X,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new('rbxassetid://12187365364',Enum.FontWeight.SemiBold,Enum.
FontStyle.Normal),LineHeight=0,RichText=true,Size=UDim2.fromOffset(0,20),Text=
'Title',TextSize=16,__dynamicKeys={TextColor3=c.Theme.Text.Primary[1],
TextTransparency=c.Theme.Text.Primary[2]}}},f'UIPadding'{Name='UIPadding',
PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0,12)},f'Frame'{Name=
'NavigationButtons',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,LayoutOrder=1,f'UIListLayout'{Name='UIListLayout',
FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,1),SortOrder=Enum
.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},f
'TextButton'{Name='Back',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new'rbxasset://fonts/families/SourceSansPro.json',Size=UDim2.
fromOffset(27,20),Text='',TextColor3=Color3.fromRGB(0,0,0),TextSize=14,f
'ImageLabel'{Name='Image',AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://137248392050045',ImageColor3=Color3.fromRGB(0,0,0),Position=
UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(9,15),__dynamicKeys={ImageColor3=
c.Theme.Text.Tertiary[1],ImageTransparency=c.Theme.Text.Tertiary[2]},
__contextKeys={ImageColor3=function()local l,m=h>1,k.Theme.Text return(l and m.
Secondary[1].Value)or m.Tertiary[1].Value end,ImageTransparency=function()local
l,m=h>1,k.Theme.Text return(l and m.Secondary[2].Value)or m.Tertiary[2].Value
end}}},f'TextButton'{Name='Forward',BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new'rbxasset://fonts/families/SourceSansPro.json',LayoutOrder=1,
Size=UDim2.fromOffset(27,20),Text='',TextColor3=Color3.fromRGB(0,0,0),TextSize=
14,f'ImageLabel'{Name='Image',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Image='rbxassetid://95285878898359',Position=
UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(9,15),__dynamicKeys={ImageColor3=
c.Theme.Text.Tertiary[1],ImageTransparency=c.Theme.Text.Tertiary[2]},
__contextKeys={ImageColor3=function()local l,m=h<#g,k.Theme.Text return(l and m.
Secondary[1].Value)or m.Tertiary[1].Value end,ImageTransparency=function()local
l,m=h<#g,k.Theme.Text return(l and m.Secondary[2].Value)or m.Tertiary[2].Value
end}}}},f'Frame'{Name='SidebarButton',AutomaticSize=Enum.AutomaticSize.XY,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromOffset(38,34
),f'ImageButton'{Name='Image',AnchorPoint=Vector2.new(0.5,0.5),AutoButtonColor=
false,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://74380920233260',Position=UDim2.fromScale(0.5,0.5),Size=UDim2.
fromOffset(20,16),__dynamicKeys={ImageColor3=c.Theme.Text.Secondary[1],
ImageTransparency=c.Theme.Text.Secondary[2]}}}},f'UIListLayout'{Name=
'UIListLayout',FillDirection=Enum.FillDirection.Horizontal,HorizontalFlex=Enum.
UIFlexAlignment.Fill,SortOrder=Enum.SortOrder.LayoutOrder},f'Frame'{Name=
'Trailing',BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1
,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromScale(0,1),
f'UIPadding'{Name='UIPadding',PaddingLeft=UDim.new(0,12),PaddingRight=UDim.new(0
,12)},f'UIListLayout'{Name='UIListLayout',HorizontalAlignment=Enum.
HorizontalAlignment.Right,SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment
=Enum.VerticalAlignment.Center}}},f'Frame'{Name='CornerClipRight',AnchorPoint=
Vector2.new(1,1),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position=
UDim2.fromScale(1,1),Size=UDim2.new(0,10,0.5,0),ZIndex=-1,__dynamicKeys={
BackgroundColor3=c.Theme.Controls.Titlebar[1]}},f'Frame'{Name='CornerClipLeft',
AnchorPoint=Vector2.new(0,1),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=
0,Position=UDim2.fromScale(0,1),Size=UDim2.new(0,10,1,0),ZIndex=-1,__dynamicKeys
={BackgroundColor3=c.Theme.Controls.Titlebar[1]}}})i.CornerClipLeft=(i.Body:
FindFirstChild'CornerClipLeft')i.CornerClipRight=(i.Body:FindFirstChild
'ConerClipRight')i.Content=(i.Body:FindFirstChild'Content')i.Leading=(i.Content:
FindFirstChild'Leading')i.Trailing=(i.Content:FindFirstChild'Trailing')i.
NavigationButtons=(i.Leading:FindFirstChild'NavigationButtons')i.Back=(i.
NavigationButtons:FindFirstChild'Back')i.Forward=(i.NavigationButtons:
FindFirstChild'Forward')i.SidebarButton=(i.Leading:FindFirstChild'SidebarButton'
:FindFirstChild'Image')i.TitleStack=(i.Leading:FindFirstChild'TitleSubtitle')i.
Title=(i.TitleStack:FindFirstChild'Title')i.Subtitle=(i.TitleStack:
FindFirstChild'Subtitle')i.SearchField=e i.SearchField.Body.Size=UDim2.
fromOffset(126,28)i.SearchField.Field.Size=UDim2.fromOffset(90,0)i.SearchField.
Layout.Padding=UDim.new(0,8)i.SearchField.Field.LayoutOrder=1 i.SearchField.
Field.PlaceholderText='Search'i.SearchField.Padding.PaddingLeft=UDim.new(0,7)i.
SearchField.Padding.PaddingRight=UDim.new(0,7)i.SearchField.Corner=UDim.new(0,6)
f'ImageLabel'{Name='ImageLabel',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://120817720539967',Size=UDim2.fromOffset(13,14),Parent=i.
SearchField.Body.__instance,__dynamicKeys={ImageColor3=c.Theme.Text.
PrimaryAccent[1],ImageTransparency=c.Theme.Text.PrimaryAccent[2]}}i.SearchField.
Body.Parent=i.Trailing local l=function()if not k then return end local l,m,n=i.
Back:FindFirstChild'Image',i.Forward:FindFirstChild'Image',k.Theme.Text if l
then local o=h>1 l.ImageColor3=(o and n.Secondary[1].Value)or n.Tertiary[1].
Value l.ImageTransparency=(o and n.Secondary[2].Value)or n.Tertiary[2].Value i.
Back.Interactable=o end if m then local o=h<#g m.ImageColor3=(o and n.Secondary[
1].Value)or n.Tertiary[1].Value m.ImageTransparency=(o and n.Secondary[2].Value)
or n.Tertiary[2].Value i.Forward.Interactable=o end end local m,n=setmetatable({
},{__newindex=function(m,n,o)rawset(g,n,o)l()end,__index=function(m,n)return g[n
]end,__len=function()return#g end}),function(m)if k and k.Tabs then for n,o in
pairs(k.Tabs)do if o.__container==m then o.Selected=true else o.Selected=false
end end end end local o,p=function()i.Back.MouseButton1Click:Connect(function()
if h>1 then h-=1 n(g[h])l()end end)i.Forward.MouseButton1Click:Connect(function(
)if h<#g then h+=1 n(g[h])l()end end)end,function()for o,p in pairs(i.Trailing:
GetChildren())do if not p:IsA'GuiObject'then continue end local q,r=j(p),true
for s,t in pairs(i.Leading:GetChildren())do if not t:IsA'GuiObject'then continue
end local u=j(t)local v=(u.Right>=q.Left and u.Left<=q.Right)and(u.Bottom>=q.Top
and u.Top<=q.Bottom)if v then r=false break end end p.Visible=r end end p()i.
Body:GetPropertyChangedSignal'AbsoluteSize':Connect(p)return i,function(q)k=q o(
)return function(r)for s=#g,h+1,-1 do g[s]=nil end h+=1 m[h]=r end end end end
function b.n()return function(c,d)local e=b.load'd'local f,g=e.Create,{}g.
Handles=(f'Folder'{Name='Handles',Parent=c,f'Frame'{Name='E',AnchorPoint=Vector2
.new(1,0.5),BackgroundColor3=Color3.fromRGB(255,0,81),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2.fromScale(1,
0.5),Size=UDim2.new(0,6,1,0),ZIndex=8,f'UIDragDetector'{Name='UIDragDetector',
ActivatedCursorIcon='rbxassetid://122180269146343',CursorIcon=
'rbxassetid://122180269146343',ResponseStyle=Enum.UIDragDetectorResponseStyle.
CustomOffset,SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},f
'Frame'{Name='N',AnchorPoint=Vector2.new(0.5,0),BackgroundColor3=Color3.fromRGB(
255,0,81),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Position=UDim2.fromScale(0.5,0),Size=UDim2.new(1,0,0,6),ZIndex
=8,f'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://109321922977357',CursorIcon='rbxassetid://109321922977357',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},f'Frame'{Name=
'NE',AnchorPoint=Vector2.new(1,0),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(1,0),Size=UDim2.fromOffset(10,10),ZIndex=9,f
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://78578587100983',CursorIcon='rbxassetid://78578587100983',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},f'Frame'{Name=
'NW',BackgroundColor3=Color3.fromRGB(255,0,81),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromOffset(10,10
),ZIndex=9,f'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://127507239458439',CursorIcon='rbxassetid://127507239458439',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},f'Frame'{Name=
'S',AnchorPoint=Vector2.new(0.5,1),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(0.5,1),Size=UDim2.new(1,0,0,6),ZIndex=8,f
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://109321922977357',CursorIcon='rbxassetid://109321922977357',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},f'Frame'{Name=
'SE',AnchorPoint=Vector2.new(1,1),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(1,1),Size=UDim2.fromOffset(10,10),ZIndex=9,f
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://127507239458439',CursorIcon='rbxassetid://127507239458439',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},f'Frame'{Name=
'SW',AnchorPoint=Vector2.new(0,1),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(0,1),Size=UDim2.fromOffset(10,10),ZIndex=9,f
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://78578587100983',CursorIcon='rbxassetid://78578587100983',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}},f'Frame'{Name=
'W',AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=Color3.fromRGB(255,0,81),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(0,0.5),Size=UDim2.new(0,6,1,0),ZIndex=8,f
'UIDragDetector'{Name='UIDragDetector',ActivatedCursorIcon=
'rbxassetid://122180269146343',CursorIcon='rbxassetid://122180269146343',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0}}})d=d or Vector2.
new(0,0)g.N=g.Handles:FindFirstChild'N':FindFirstChild'UIDragDetector'g.S=g.
Handles:FindFirstChild'S':FindFirstChild'UIDragDetector'g.W=g.Handles:
FindFirstChild'W':FindFirstChild'UIDragDetector'g.E=g.Handles:FindFirstChild'E':
FindFirstChild'UIDragDetector'g.NE=g.Handles:FindFirstChild'NE':FindFirstChild
'UIDragDetector'g.SE=g.Handles:FindFirstChild'SE':FindFirstChild'UIDragDetector'
g.NW=g.Handles:FindFirstChild'NW':FindFirstChild'UIDragDetector'g.SW=g.Handles:
FindFirstChild'SW':FindFirstChild'UIDragDetector'local h,i,j={}h.__index=h local
k=function(k,l)local m=Vector2.zero if string.find(l,'N')then m+=Vector2.new(0,-
1)end if string.find(l,'S')then m+=Vector2.new(0,1)end if string.find(l,'W')then
m+=Vector2.new(-1,0)end if string.find(l,'E')then m+=Vector2.new(1,0)end local n
=Vector2.new((m.X~=0)and(k.X*m.X)or 0,(m.Y~=0)and(k.Y*m.Y)or 0)local o=j+n o=
Vector2.new(math.max(d.X,o.X),math.max(d.Y,o.Y))local p=o-j local q=Vector2.new(
m.X<0 and-p.X*0.5 or p.X*0.5,m.Y<0 and-p.Y*0.5 or p.Y*0.5)local r=i+q c.Size=
UDim2.fromOffset(o.X,o.Y)c.Position=UDim2.new(0.5,r.X,0.5,r.Y)end local l=
function(l,m)l.DragStart:Connect(function()j=c.AbsoluteSize i=Vector2.new(c.
Position.X.Offset,c.Position.Y.Offset)end)l.DragContinue:Connect(function()k(
Vector2.new(l.DragUDim2.X.Offset,l.DragUDim2.Y.Offset),m)end)end function h.
CreateClient()l(g.NW,'NW')l(g.NE,'NE')l(g.SW,'SW')l(g.SE,'SE')l(g.E,'E')l(g.W,
'W')l(g.S,'S')l(g.N,'N')end function h.SetEnabled(m)for n,o in pairs(g)do if o:
IsA'UIDragDetector'then o.Enabled=m end end end return h end end function b.o()b
.load'b'return function(c,d)local e,f,g,h,i,j=b.load'k',b.load'e',b.load'd',b.
load'c',b.load'm'(c)local k,l,m,n,o=b.load'n',g.Create,f.UserInputService,f.
TweenService,c.__container or c.__instance or c local p,q,r,s,t,u,v,w=l'Frame'{
Name='Window',BackgroundTransparency=1,BorderSizePixel=0,Size=UDim2.fromScale(1,
1),AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Parent=o}.
__instance,{}d=d or{}d.Size=d.Size or UDim2.fromOffset(850,530)d.Maximized=d.
Maximized==true d.Minimized=d.Minimized==true d.Searching=d.Searching~=false d.
Resizable=d.Resizable~=false d.Draggable=d.Draggable~=false d.Resizable=d.
Resizable~=false d.Dropshadow=d.Dropshadow~=false d.UIBlur=d.UIBlur~=false d.
Title=d.Title or'Title'q.Body=(h.Apply(d,l'Frame'{Name='Body',BorderSizePixel=0,
AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Parent=p,
__dynamicKeys={BackgroundColor3=c.Theme.Controls.Sidebar[1],
BackgroundTransparency=c.Theme.Controls.Sidebar[2]},__contextKeys={
BackgroundTransparency=function()return d.UIBlur and c.Theme.Controls.Sidebar[2]
.Value or 0 end},l'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,10)},l
'UIListLayout'{Name='UIListLayout',FillDirection=Enum.FillDirection.Horizontal,
Padding=UDim.new(0,0),SortOrder=Enum.SortOrder.LayoutOrder},l'Frame'{Name=
'Sidebar',BackgroundColor3=Color3.fromRGB(234,234,234),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.new(0,200,1,0),
ClipsDescendants=true,l'UIPadding'{Name='UIPadding'},l'Frame'{Name='Margins',
BackgroundColor3=Color3.fromRGB(234,234,234),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.new(0,200,1,0),l
'Folder'{Name='LayoutIgnore',l'Frame'{Name='Shadow',AnchorPoint=Vector2.new(1,0)
,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2.new(1,2,0,0
),Size=UDim2.new(0,5,1,0),ZIndex=0,__dynamicKeys={BackgroundColor3=c.Theme.
Controls.Separator.Shadow[1],BackgroundTransparency=c.Theme.Controls.Separator.
Shadow[2]},l'UIGradient'{Name='UIGradient',Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)}}}},l'UIPadding'
{Name='UIPadding',PaddingRight=UDim.new(0,2)},l'Frame'{Name='Toolbar',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.new(1,0,0,52),l
'Frame'{Name='WindowControls',AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2.fromScale(0,0.5),Size=UDim2.
fromOffset(92,38),l'UIListLayout'{Name='UIListLayout',FillDirection=Enum.
FillDirection.Horizontal,Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},l'UIPadding'{Name=
'UIPadding',PaddingLeft=UDim.new(0,20),PaddingRight=UDim.new(0,20)},l
'ImageButton'{Name='Exit',AutoButtonColor=false,BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://132228700346004',Size=UDim2.fromOffset(12,
12),__dynamicKeys={ImageColor3=c.Theme.Controls.Exit[1],ImageTransparency=c.
Theme.Controls.Exit[2]},l'ImageLabel'{Name='Stroke',BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Image='rbxassetid://94763505860483',Size=UDim2.fromScale(1,1)
,__dynamicKeys={ImageColor3=c.Theme.Controls.WindowControlStroke[1],
ImageTransparency=c.Theme.Controls.WindowControlStroke[2]}},l'ImageLabel'{Name=
'Icon',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,
255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel
=0,Image='rbxassetid://94781753558308',Position=UDim2.fromScale(0.5,0.5),Size=
UDim2.fromScale(1,1),Visible=false,__dynamicKeys={ImageColor3=c.Theme.Controls.
WindowControlIcon[1],ImageTransparency=c.Theme.Controls.WindowControlIcon[2]}}},
l'ImageButton'{Name='Minimize',AutoButtonColor=false,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Image='rbxassetid://132228700346004',LayoutOrder=1,Size=UDim2
.fromOffset(12,12),__dynamicKeys={ImageColor3=c.Theme.Controls.Minimize[1],
ImageTransparency=c.Theme.Controls.Minimize[2]},l'ImageLabel'{Name='Stroke',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://94763505860483',Size=UDim2.fromScale(1,1),__dynamicKeys={
ImageColor3=c.Theme.Controls.WindowControlStroke[1],ImageTransparency=c.Theme.
Controls.WindowControlStroke[2]}},l'ImageLabel'{Name='Icon',AnchorPoint=Vector2.
new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency
=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://118368309445367',Position=UDim2.fromScale(0.5,0.5),Size=UDim2.
fromScale(1,1),Visible=false,__dynamicKeys={ImageColor3=c.Theme.Controls.
WindowControlIcon[1],ImageTransparency=c.Theme.Controls.WindowControlIcon[2]}}},
l'ImageButton'{Name='Zoom',AutoButtonColor=false,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Image='rbxassetid://132228700346004',LayoutOrder=2,Size=UDim2
.fromOffset(12,12),__dynamicKeys={ImageColor3=c.Theme.Controls.Zoom[1],
ImageTransparency=c.Theme.Controls.Zoom[2]},l'ImageLabel'{Name='Stroke',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://94763505860483',Size=UDim2.fromScale(1,1),__dynamicKeys={
ImageColor3=c.Theme.Controls.WindowControlStroke[1],ImageTransparency=c.Theme.
Controls.WindowControlStroke[2]}},l'ImageLabel'{Name='Icon',AnchorPoint=Vector2.
new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency
=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://114376524082699',Position=UDim2.fromScale(0.5,0.5),Size=UDim2.
fromScale(1,1),Visible=false,__dynamicKeys={ImageColor3=c.Theme.Controls.
WindowControlIcon[1],ImageTransparency=c.Theme.Controls.WindowControlIcon[2]}}}}
},l'ScrollingFrame'{Name='SidebarList',AutomaticCanvasSize=Enum.AutomaticSize.Y,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,CanvasSize=UDim2.new(),
Position=UDim2.fromOffset(0,52),ScrollBarImageColor3=Color3.fromRGB(0,0,0),
ScrollBarImageTransparency=0.7,ScrollBarThickness=6,Size=UDim2.new(1,0,1,-52),l
'UIListLayout'{Name='UIListLayout',Padding=UDim.new(0,9),SortOrder=Enum.
SortOrder.LayoutOrder,HorizontalAlignment=Enum.HorizontalAlignment.Right},l
'UIPadding'{Name='UIPadding',PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,
10),PaddingBottom=UDim.new(0,10)}}}},l'Frame'{Name='Separator',AnchorPoint=
Vector2.new(1,0),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
LayoutOrder=1,Position=UDim2.fromScale(1,0),Size=UDim2.new(0,1,1,0),
__dynamicKeys={BackgroundColor3=c.Theme.Controls.Separator.Background[1],
BackgroundTransparency=c.Theme.Controls.Separator.Background[2]}},l'Frame'{Name=
'ContentBody',AnchorPoint=Vector2.new(1,0),BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,ClipsDescendants=true,LayoutOrder=2,Position=UDim2.fromScale(1
,0),Size=UDim2.new(1,-201,1,0),__dynamicKeys={BackgroundColor3=c.Theme.Controls.
Background[1],BackgroundTransparency=c.Theme.Controls.Background[2]},l'UICorner'
{Name='UICorner',CornerRadius=UDim.new(0,10)},l'Frame'{Name='Content',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(255,199,199),BorderMode=Enum.BorderMode.Inset,
BorderSizePixel=0,ClipsDescendants=true,Position=UDim2.fromOffset(0,52),Size=
UDim2.new(1,0,1,-52),l'UIPadding'{Name='Margins',PaddingBottom=UDim.new(0,3),
PaddingLeft=UDim.new(0,3),PaddingRight=UDim.new(0,3),PaddingTop=UDim.new(0,3)}},
l'Frame'{Name='CornerClip',AnchorPoint=Vector2.new(0,1),BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2.fromScale(0,1),Size=UDim2.
fromOffset(10,10),ZIndex=-1,__dynamicKeys={BackgroundColor3=c.Theme.Controls.
Background[1]}}},l'Folder'{Name='LayoutIgnore',l'TextButton'{Name='TopArea',
AutoButtonColor=false,Active=false,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.new(1,0,0,52),ZIndex=0,Text='',Modal=false},l'ImageLabel'{Name=
'Dropshadow',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://138260268144845',ImageTransparency=0.65,
Interactable=false,Position=UDim2.new(0.5,0,0.5,3),ScaleType=Enum.ScaleType.
Slice,Size=UDim2.new(1,24,1,24),SliceCenter=Rect.new(28,26,96,94),ZIndex=0}}}))q
.Scale=l'UIScale'{Parent=p}q.Cornering=(q.Body:FindFirstChild'UICorner')q.
LayoutIgnore=(q.Body:FindFirstChild'LayoutIgnore')q.Dropshadow=(q.LayoutIgnore:
FindFirstChild'Dropshadow')q.Separator=(q.Body:FindFirstChild'Separator')q.
SidebarMargins=q.Body:FindFirstChild'Sidebar'q.Sidebar=(q.SidebarMargins:
FindFirstChild'Margins')q.SidebarList=(q.Sidebar:FindFirstChild'SidebarList')q.
Toolbar=(q.Sidebar:FindFirstChild'Toolbar')q.WindowControls=(q.Toolbar:
FindFirstChild'WindowControls')q.ContentBody=(q.Body:FindFirstChild'ContentBody'
)q.Content=(q.ContentBody:FindFirstChild'Content')q.CornerClip=(q.ContentBody:
FindFirstChild'CornerClip')q.Titlebar=i q.Titlebar.Body.Parent=q.ContentBody r=q
.Body.Size s=q.Body.Position local x={Title=function(x)q.Titlebar.Title.Visible=
x and true or false if x then q.Titlebar.Title.Text=x end end,Subtitle=function(
x)q.Titlebar.Subtitle.Visible=x and true or false if x then q.Titlebar.Subtitle.
Text=x end end,Searching=function(x)q.Titlebar.SearchField.Body.Parent=x and q.
Titlebar.Trailing or nil q.Titlebar.SearchField.Body.Visible=x end,Draggable=
function(x)v=not x and false end,Resizable=function(x)if w and not d.Maximized
then w.SetEnabled(x)end end,Minimized=function(x,y)local z=y~=false if x and not
u then t=q.Body.Position if q.BlurModel then q.BlurModel.SetVisibility(false)end
end local A,B,C=TweenInfo.new(0.25,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out),{Position=x and UDim2.new(0.5,0,0.5,q.Body.AbsoluteSize.Y*2
)or t},{Scale=x and 0 or 1}if z then u=true n:Create(q.Body.__instance,A,B):
Play()local D=n:Create(q.Scale.__instance,A,C)D:Play()D.Completed:Once(function(
)u=false if q.BlurModel and not d.Minimized then q.BlurModel.SetVisibility(true)
end end)else q.Body.Position=B.Position q.Scale.Scale=C.Scale if x and q.
BlurModel then q.BlurModel.SetVisibility(false)end end end,Maximized=function(x,
y)y=y~=false if x then r=q.Body.Size s=q.Body.Position w.SetEnabled(false)else v
=false end local z,A,B=TweenInfo.new(0.5,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out),{Size=x and UDim2.fromScale(1,1)or r,Position=x and UDim2.
fromScale(0.5,0.5)or s},{CornerRadius=x and UDim.new(0,0)or UDim.new(0,10)}if y
then n:Create(q.Body.__instance,z,A):Play()n:Create(q.Cornering,z,B):Play()else
q.Body.Size=A.Size q.Body.Position=A.Position q.Cornering.CornerRadius=B.
CornerRadius end if not x then w.SetEnabled(d.Resizable)end end,Dropshadow=
function(x)q.Dropshadow.Visible=x end,UIBlur=function(x)if q.BlurModel then q.
BlurModel.Model:Destroy()q.BlurModel=nil end q.Body.BackgroundTransparency=x and
c.Theme.Controls.Sidebar[2].Value or 0 if x and not d.Minimized then q.BlurModel
=e.UIBlur(q.Body)end end}local y=h.Wrap(d,x,q.Body)y.Type='Window'y.Theme=c.
Theme y.Structures=q y.Tabs={}y.addToHistory=j(y)y.__container=q.Content do w=k(
q.Body.__instance,Vector2.new(350,250))w.CreateClient()end do local z=true local
A=function()z=not z local A,B,C,D,E=z and UDim.new(0,0)or UDim.new(0,-200),z and
UDim2.new(0,200,1,0)or UDim2.new(0,0,1,0),z and UDim2.new(1,-201,1,0)or UDim2.
new(1,0,1,0),z and UDim2.new(0,10,1,0)or UDim2.new(0,10,0.5,0),TweenInfo.new(0.6
,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out)q.Separator.Visible=z and
true or false q.CornerClip.Visible=z and true n:Create(q.ContentBody,E,{Size=C})
:Play()n:Create(q.SidebarMargins:FindFirstChild'UIPadding',E,{PaddingLeft=A}):
Play()local F=n:Create(q.SidebarMargins,E,{Size=B})n:Create(q.Titlebar.
CornerClipLeft,E,{Size=D}):Play()F:Play()if not z then F.Completed:Connect(
function()q.CornerClip.Visible=false end)end end q.Titlebar.SidebarButton.
MouseButton1Click:Connect(A)end do local z,A=q.Titlebar.SearchField.Field,{}
local B,C=function(B,C)local D={}for E,F in ipairs(C)do if F:IsA'GuiObject'then
D[F]=F.Visible end end A[B]=D end,function(B,C)local D=A[B]if not D then return
end for E,F in ipairs(C)do if F:IsA'GuiObject'then F.Visible=D[F]~=false end end
end z:GetPropertyChangedSignal'Text':Connect(function()local D,E,F={},{},q.
Content:FindFirstChildOfClass'ScrollingFrame'if not F then return end local G=F:
GetDescendants()if not A[F]then B(F,G)end local H=z.Text:lower()if H==''then C(F
,G)return end for I,J in ipairs(G)do if J:IsA'GuiObject'then local K=J:
GetAttribute'SearchIndex'if typeof(K)=='string'and K:lower():find(H)then table.
insert(D,J)end end end for I,J in ipairs(D)do E[J]=true local K=J.Parent while K
and K~=F do if K:IsA'GuiObject'then E[K]=true end K=K.Parent end end for I,J in
ipairs(G)do if J:IsA'GuiObject'then J.Visible=false end end for I,J in ipairs(D)
do J.Visible=true local K=J.Parent while K and K~=F do if K:IsA'GuiObject'then K
.Visible=true end K=K.Parent end local L=A[F]for M,N in ipairs(J:GetDescendants(
))do if N:IsA'GuiObject'then local O=L and L[N]if O then N.Visible=true end end
end end end)end do local z,A,B=(q.WindowControls:FindFirstChild'Exit'),(q.
WindowControls:FindFirstChild'Minimize'),(q.WindowControls:FindFirstChild'Zoom')
local C=function()z:FindFirstChild'Icon'.Visible=q.WindowControls.GuiState~=Enum
.GuiState.Hover A:FindFirstChild'Icon'.Visible=q.WindowControls.GuiState~=Enum.
GuiState.Hover B:FindFirstChild'Icon'.Visible=q.WindowControls.GuiState~=Enum.
GuiState.Hover end B.MouseButton1Click:Connect(function()d.Maximized=not d.
Maximized x.Maximized(d.Maximized,true)end)A.MouseButton1Click:Connect(function(
)d.Minimized=not d.Minimized x.Minimized(d.Minimized,true)end)if c.Structures
and c.Structures.WindowPill then local D=c.Structures.WindowPill D.
MouseButton1Click:Connect(function()d.Minimized=not d.Minimized x.Minimized(d.
Minimized,true)end)end z.MouseButton1Click:Connect(function()x.Minimized(true)
task.delay(0.25,q.Body.Destroy)end)q.WindowControls.MouseEnter:Connect(C)q.
WindowControls.MouseLeave:Connect(C)end do local z,A,B,C=(q.LayoutIgnore:
FindFirstChild'TopArea')z.InputBegan:Connect(function(D)if(D.UserInputType==Enum
.UserInputType.MouseButton1 or D.UserInputType==Enum.UserInputType.Touch)and d.
Draggable and not d.Maximized then v=true A=D.Position B=q.Body.Position if C
then C:Disconnect()end C=D.Changed:Connect(function()if D.UserInputState==Enum.
UserInputState.End then v=false end end)end end)m.InputChanged:Connect(function(
D)if D.UserInputType==Enum.UserInputType.MouseMovement or D.UserInputType==Enum.
UserInputType.Touch then if v then local E=D.Position-A local F=UDim2.new(B.X.
Scale,B.X.Offset+E.X,B.Y.Scale,B.Y.Offset+E.Y)q.Body.Position=F end end end)end
h.Apply(d,y)local z=function()for z,A in pairs(q.Body:GetDescendants())do if not
pcall(function()return A.Size end)then continue end local B=A.Size A.Size=UDim2.
fromOffset(0,0)A.Size=B end end task.defer(z)task.delay(1,z)return y end end
function b.p()b.load'b'return function(c,d)local e,f,g=b.load'd',b.load'c',b.
load'e'local h,i,j,k,l=e.Create,g.TweenService,c.Type=='Window'and c.Structures.
SidebarList or c.__instance or c,{},function(h,i,j,...)local k=table.pack(...)
for l,m in ipairs(h:GetChildren())do if m:IsA'GuiObject'then table.insert(i,m:
GetPropertyChangedSignal'AbsoluteSize':Connect(function(...)j(table.unpack(k,1,k
.n))end))table.insert(i,m:GetPropertyChangedSignal'Visible':Connect(function(...
)j(table.unpack(k,1,k.n))end))end end table.insert(i,h.ChildAdded:Connect(
function(l)if l:IsA'GuiObject'then table.insert(i,l:GetPropertyChangedSignal
'AbsoluteSize':Connect(function(...)j(table.unpack(k,1,k.n))end))table.insert(i,
l:GetPropertyChangedSignal'Visible':Connect(function(...)j(table.unpack(k,1,k.n)
)end))j(table.unpack(k,1,k.n))end end))table.insert(i,h.ChildRemoved:Connect(
function(...)j(table.unpack(k,1,k.n))end))end d=d or{}d.Title=d.Title or
'Section Title'd.Disclosure=d.Disclosure~=false d.Expanded=d.Expanded~=false k.
SidebarGroup=(f.Apply(d,h'TextButton'{AutomaticSize=Enum.AutomaticSize.Y,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,ClipsDescendants=true,Size=
UDim2.new(1,0,0,23),Text='',AutoButtonColor=false,Parent=j,h'UIListLayout'{
SortOrder=Enum.SortOrder.LayoutOrder,HorizontalAlignment=Enum.
HorizontalAlignment.Right},h'Frame'{Name='SectionHeader',AutomaticSize=Enum.
AutomaticSize.Y,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.fromScale(1,0),h'Frame'{Name='Disclosure',BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,FontFace=Font.new
'rbxasset://fonts/families/SourceSansPro.json',LayoutOrder=1,Size=UDim2.
fromOffset(13,14),TextColor3=Color3.fromRGB(0,0,0),TextSize=14,h'ImageLabel'{
Name='DisclosureImage',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,Image='rbxassetid://115960806571685',Position=UDim2.
fromScale(0.5,0.5),Size=UDim2.fromOffset(11,7),__dynamicKeys={ImageColor3=c.
Theme.Text.Tertiary[1],ImageTransparency=c.Theme.Text.Tertiary[2]}}},h
'UIListLayout'{FillDirection=Enum.FillDirection.Horizontal,HorizontalFlex=Enum.
UIFlexAlignment.SpaceBetween,Padding=UDim.new(0,10),SortOrder=Enum.SortOrder.
LayoutOrder},h'UIPadding'{PaddingBottom=UDim.new(0,6),PaddingLeft=UDim.new(0,8),
PaddingRight=UDim.new(0,12),PaddingTop=UDim.new(0,3)},h'TextLabel'{Name='Title',
AutomaticSize=Enum.AutomaticSize.X,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new('rbxassetid://12187365364',Enum.FontWeight.Bold,Enum.FontStyle
.Normal),LineHeight=0,RichText=true,Size=UDim2.fromOffset(0,14),Text=
'Section Title',TextSize=12,TextTruncate=Enum.TextTruncate.AtEnd,TextXAlignment=
Enum.TextXAlignment.Left,__dynamicKeys={TextColor3=c.Theme.Text.Tertiary[1],
TextTransparency=c.Theme.Text.Tertiary[2]}}}}))k.Layout=(k.SidebarGroup:
FindFirstChild'UIListLayout')k.SectionHeader=(k.SidebarGroup:FindFirstChild
'SectionHeader')k.Title=(k.SectionHeader:FindFirstChild'Title')k.Disclosure=(k.
SectionHeader:FindFirstChild'Disclosure')k.DisclosureImage=(k.Disclosure:
FindFirstChild'DisclosureImage')local m={}local n={Title=function(n)k.Title.Text
=n end,Disclosure=function(n)k.Disclosure.Visible=n k.SidebarGroup.Active=n end,
Expanded=function(n,o)o=(o==nil and true)or false local p,q=k.SidebarGroup.
__instance,k.DisclosureImage p.AutomaticSize=Enum.AutomaticSize.None for r,s in
pairs(m)do s:Disconnect()table.remove(m,r)end local r=function(r)local s=n and k
.Layout.AbsoluteContentSize.Y or 23 local t=i:Create(p,TweenInfo.new(r and 0.35
or 0,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Size=UDim2.new(1,0,
0,s)})t:Play()end if n then l(p,m,r,false)end r(o)i:Create(q,TweenInfo.new(o and
0.35 or 0,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out),{Rotation=n and
0 or-90}):Play()end}local o=f.Wrap(d,n,k.SidebarGroup)o.Type='Section'o.Theme=c.
Theme o.Structures=k o.__window=c k.SidebarGroup.MouseButton1Click:Connect(
function()if not d.Disclosure then return end o.Expanded=not o.Expanded end)f.
Apply(d,o)return o end end function b.q()b.load'b'return function(c,d)local e,f=
b.load'd',b.load'c'local g,h,i,j=e.Create,c.Type=='Window'and c or c.__window,c.
Type=='Window'and c.Structures.SidebarList or c.Type=='Tab'and c.__instance.
Parent or c.__instance or c,{}d=d or{}d.Title=d.Title or'Label'd.Indentation=d.
Indentation or 0 d.Selected=d.Selected==true j.Body=(f.Apply(d,g'TextButton'{
Name='SidebarItem',AutoButtonColor=false,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,FontFace=Font.new
'rbxasset://fonts/families/SourceSansPro.json',LayoutOrder=h.Tabs and#h.Tabs or
1,Size=UDim2.new(1,0,0,28),Text='',TextColor3=Color3.fromRGB(0,0,0),TextSize=14,
Parent=i,__dynamicKeys={BackgroundColor3=c.Theme.Controls.SelectionFocused[1],
BackgroundTransparency=c.Theme.Controls.SelectionFocused[2]},__contextKeys={
BackgroundColor3=function()return d.Selected and c.Theme.Controls.
SelectionFocused[1].Value or 1 end,BackgroundTransparency=function()return d.
Selected and c.Theme.Controls.SelectionFocused[2].Value or 1 end},g'UICorner'{
Name='UICorner',CornerRadius=UDim.new(0,5)},g'UIListLayout'{Name='UIListLayout',
FillDirection=Enum.FillDirection.Horizontal,HorizontalFlex=Enum.UIFlexAlignment.
SpaceBetween,Padding=UDim.new(0,14),SortOrder=Enum.SortOrder.LayoutOrder,
VerticalAlignment=Enum.VerticalAlignment.Center},g'UIPadding'{Name='UIPadding',
PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,8)},g'Frame'{Name='Leading',
AutomaticSize=Enum.AutomaticSize.Y,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.new(1,-34,0,0),g'TextLabel'{Name='Title',BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,FontFace=Font.new'rbxassetid://12187365364',LayoutOrder=2,
LineHeight=0,RichText=true,Size=UDim2.new(1,-22,0,20),TextSize=15,TextTruncate=
Enum.TextTruncate.AtEnd,TextXAlignment=Enum.TextXAlignment.Left,__dynamicKeys={
TextColor3=c.Theme.Text.SelectionPrimary[1],TextTransparency=c.Theme.Text.
SelectionPrimary[2]},__contextKeys={TextColor3=function()return d.Selected and c
.Theme.Text.SelectionPrimary[1].Value or c.Theme.Text.Primary[1].Value end,
TextTransparency=function()return d.Selected and c.Theme.Text.SelectionPrimary[2
].Value or c.Theme.Text.Primary[2].Value end}},g'UIListLayout'{Name=
'UIListLayout',FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,2)
,SortOrder=Enum.SortOrder.LayoutOrder},g'ImageLabel'{Name='Symbol',Visible=false
,AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://127049167227557',LayoutOrder=1,Position=UDim2.fromScale(0.5,
0.5),Size=UDim2.fromOffset(20,20),__dynamicKeys={ImageColor3=c.Theme.Controls.
Selection[1],ImageTransparency=c.Theme.Controls.Selection[2]},__contextKeys={
ImageColor3=function()return d.Selected and c.Theme.Text.SelectionPrimary[1].
Value or c.Theme.Controls.Selection[1].Value end,ImageTransparency=function()
return d.Selected and c.Theme.Text.SelectionPrimary[2].Value or c.Theme.Controls
.Selection[2].Value end}}},g'Frame'{Name='Trailing',AutomaticSize=Enum.
AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
LayoutOrder=1,Size=UDim2.fromOffset(20,16)}}))j.Trailing=(j.Body:FindFirstChild
'Trailing')j.Leading=(j.Body:FindFirstChild'Leading')j.Title=(j.Leading:
FindFirstChild'Title')j.Symbol=(j.Leading:FindFirstChild'Symbol')j.Padding=(j.
Body:FindFirstChild'UIPadding')j.Page=(g'ScrollingFrame'{Name='ContentList',
AutomaticCanvasSize=Enum.AutomaticSize.Y,BackgroundColor3=Color3.fromRGB(255,255
,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,CanvasSize=UDim2.new(),ClipsDescendants=false,
ScrollBarImageColor3=Color3.fromRGB(0,0,0),ScrollBarImageTransparency=0.6,
ScrollBarThickness=7,Size=UDim2.fromScale(1,1),g'UIListLayout'{Name=
'UIListLayout',Padding=UDim.new(0,9),SortOrder=Enum.SortOrder.LayoutOrder},g
'UIPadding'{Name='Margins',PaddingBottom=UDim.new(0,17),PaddingLeft=UDim.new(0,
17),PaddingRight=UDim.new(0,17),PaddingTop=UDim.new(0,17)}})local k=f.Wrap(d,{
Title=function(k)j.Title.Text=k end,Icon=function(k)j.Symbol.Visible=k and true
or false if k then j.Symbol.Image=k end end,Indentation=function(k)j.Padding.
PaddingLeft+=UDim.new(0,(11*k))end,Selected=function(k)j.Body.Transparency=k and
c.Theme.Controls.SelectionFocused[2].Value or 1 j.Title.TextColor3=k and c.Theme
.Text.SelectionPrimary[1].Value or c.Theme.Text.Primary[1].Value j.Title.
TextTransparency=k and c.Theme.Text.SelectionPrimary[2].Value or c.Theme.Text.
Primary[2].Value j.Symbol.ImageColor3=k and c.Theme.Text.SelectionPrimary[1].
Value or c.Theme.Controls.Selection[1].Value j.Symbol.ImageTransparency=k and c.
Theme.Text.SelectionPrimary[2].Value or c.Theme.Controls.Selection[2].Value j.
Page.Parent=k and h and h.__container or nil end},j.Body)k.Type='Tab'k.Theme=c.
Theme k.Structures=j k.__container=j.Page.__instance k.__window=c.__window f.
Apply(d,k)if h then table.insert(h.Tabs,k)if k.Selected then h.addToHistory(k.
__container)end j.Body.MouseButton1Click:Connect(function()if k.Selected then
return end for l,m in pairs(h.Tabs)do m.Selected=false end k.Selected=true h.
addToHistory(k.__container)end)end if c.Type=='Tab'then k.Indentation=c.
Indentation+1 end return k end end function b.r()return function(c)local d=b.
load'd'local e,f=d.Create,{}f.Body=(e'Frame'{Name='TitleStack',AutomaticSize=
Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.fromOffset(0,0),e'UIListLayout'{Name='UIListLayout',Padding=UDim.new(
0,2),SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.
VerticalAlignment.Center},e'UIPadding'{Name='UIPadding'},e'TextLabel'{Name=
'Subtitle',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,FontFace=Font.new'rbxassetid://12187365364',LayoutOrder=1,
RichText=true,Size=UDim2.new(0,0,0,14),Text='Subtitle',TextSize=13,TextWrapped=
true,TextXAlignment=Enum.TextXAlignment.Left,Visible=false,__dynamicKeys={
TextColor3=c.Theme.Text.Secondary[1],TextTransparency=c.Theme.Text.Secondary[2]}
},e'TextLabel'{Name='Title',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3
=Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new'rbxassetid://12187365364',
RichText=true,Size=UDim2.new(0,0,0,16),Text='Title',TextColor3=Color3.fromRGB(0,
0,0),TextSize=15,TextTransparency=0.15,TextTruncate=Enum.TextTruncate.AtEnd,
TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,__dynamicKeys={
TextColor3=c.Theme.Text.Primary[1],TextTransparency=c.Theme.Text.Primary[2]}}})f
.Title=(f.Body:FindFirstChild'Title')f.Subtitle=(f.Body:FindFirstChild'Subtitle'
)f.Padding=(f.Body:FindFirstChild'UIPadding')return f end end function b.s()b.
load'b'return function(c,d)local e,f,g=b.load'd',b.load'c',b.load'r'local h,i,j=
e.Create,c.__container or c.__instance or c,g(c)d=d or{}d.Title=d.Title or
'Title'local k,l=i:FindFirstChild'PageSections',true if not k then l=false k=h
'Frame'{Name='PageSections',BackgroundTransparency=1,Size=UDim2.fromScale(1,0),
AutomaticSize=Enum.AutomaticSize.Y,Parent=i,h'UIListLayout'{Name='UIListLayout',
Padding=UDim.new(0,25),SortOrder=Enum.SortOrder.LayoutOrder}}end local m=h
'Frame'{Name='PageSection',BackgroundTransparency=1,Size=UDim2.fromScale(1,0),
AutomaticSize=Enum.AutomaticSize.Y,Parent=l and k or k.__instance,h
'UIListLayout'{Name='UIListLayout',Padding=UDim.new(0,12),SortOrder=Enum.
SortOrder.LayoutOrder}}j.Body.Parent=m.__instance j.Padding.PaddingLeft=UDim.
new(0,8)j.Padding.PaddingRight=UDim.new(0,8)j.Title.FontFace=Font.new(j.Title.
FontFace.Family,Enum.FontWeight.SemiBold)j.Body.LayoutOrder=-1 local n=f.Wrap(d,
{Title=function(n)j.Title.Text=n end,Subtitle=function(n)j.Subtitle.Visible=true
j.Subtitle.Text=n end},m)n.Type='PageSection'n.Theme=c.Theme n.Structures=j n.
__container=m.__instance f.Apply(d,n)return n end end function b.t()b.load'b'
return function(c,d)local e,f=b.load'd',b.load'c'local g,h,i,j,k=e.Create,c.
__container or c.__instance or c,{},{},{}d=d or{}i.Body=(f.Apply(d,g'Frame'{Name
='Form',AutomaticSize=Enum.AutomaticSize.Y,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Size=UDim2.fromScale(1,0),Parent=h,__dynamicKeys={
BackgroundColor3=c.Theme.Controls.View[1],BackgroundTransparency=c.Theme.
Controls.View[2]},g'UIListLayout'{Name='UIListLayout',SortOrder=Enum.SortOrder.
LayoutOrder},g'UIPadding'{Name='Margins',PaddingLeft=UDim.new(0,10),PaddingRight
=UDim.new(0,10)},g'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,6)},g
'UIStroke'{Name='UIStroke',ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
__dynamicKeys={Color=c.Theme.Controls.ViewBorder[1],Transparency=c.Theme.
Controls.ViewBorder[2]}}}))local l=f.Wrap(d,{},i.Body)l.Type='Form'l.Theme=c.
Theme l.Structures=i local m=function()for m,n in ipairs(k)do local o,p=n.
section.Visible,k[m+1]local q=p and p.section.Visible n.divider.Visible=o and q
==true end end i.Body.ChildAdded:Connect(function(n)if n:IsA'Frame'and n:
FindFirstChild'LayoutIgnore'then local o=n.LayoutIgnore:FindFirstChild'Divider'
if o then table.insert(j,o)table.insert(k,{section=n,divider=o})n:
GetPropertyChangedSignal'Visible':Connect(function()m()end)m()end end end)f.
Apply(d,l)return l end end function b.u()b.load'b'return function(c,d)local e,f=
b.load'd',b.load'c'local g,h,i=e.Create,c.__container or c.__instance or c,{}d=d
or{}i.Body=(f.Apply(d,g'Frame'{Name='Row',AutomaticSize=Enum.AutomaticSize.Y,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromScale(1,0),
Parent=h,g'Frame'{Name='LeftAccessory',AutomaticSize=Enum.AutomaticSize.Y,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromScale(0,1),g
'UIListLayout'{Name='UIListLayout',FillDirection=Enum.FillDirection.Horizontal,
HorizontalAlignment=Enum.HorizontalAlignment.Left,Padding=UDim.new(0,10),
SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.
Center,Wraps=true},g'UIPadding'{Name='UIPadding',PaddingBottom=UDim.new(0,10),
PaddingRight=UDim.new(0,10),PaddingTop=UDim.new(0,10)}},g'Frame'{Name=
'RightAccessory',AnchorPoint=Vector2.new(1,0),AutomaticSize=Enum.AutomaticSize.
XY,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,LayoutOrder=1,Position=
UDim2.fromScale(1,0),Size=UDim2.fromScale(0,1),g'UIListLayout'{Name=
'UIListLayout',FillDirection=Enum.FillDirection.Horizontal,HorizontalAlignment=
Enum.HorizontalAlignment.Right,Padding=UDim.new(0,10),SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center,Wraps=true},g
'UIPadding'{Name='UIPadding',PaddingBottom=UDim.new(0,10),PaddingLeft=UDim.new(0
,11),PaddingTop=UDim.new(0,10)}},g'Folder'{Name='LayoutIgnore',g'Frame'{Name=
'Divider',AnchorPoint=Vector2.new(0,1),BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Position=UDim2.fromScale(0,1),Size=UDim2.new(1,0,0,1),Visible=
false,__dynamicKeys={BackgroundColor3=c.Theme.Controls.ViewBorder[1],
BackgroundTransparency=c.Theme.Controls.ViewBorder[2]}}}}))i.LeftAccessories=(i.
Body:FindFirstChild'LeftAccessory')i.RightAccessories=(i.Body:FindFirstChild
'RightAccessory')local j=function()local j,k,l=i.LeftAccessories.Parent.
AbsoluteSize.X,i.RightAccessories.AbsoluteSize.X,75 local m=math.max(j-k,l)if j-
k<l then i.LeftAccessories.Size=UDim2.new(0,l,1,0)else i.LeftAccessories.Size=
UDim2.new(0,m,1,0)end end j()i.RightAccessories:GetPropertyChangedSignal
'AbsoluteSize':Connect(j)i.LeftAccessories.Parent:GetPropertyChangedSignal
'AbsoluteSize':Connect(j)local k=f.Wrap(d,{SearchIndex=function(k)i.Body:
SetAttribute('SearchIndex',k)end},i.Body)k.Type='Row'k.Theme=c.Theme k.
Structures=i k.Left=function()local l=table.clone(k)l.__container=i.
LeftAccessories return l end k.Right=function()local l=table.clone(k)l.
__container=i.RightAccessories return l end f.Apply(d,k)return k end end
function b.v()b.load'b'return function(c,d)local e,f=b.load'd',b.load'c'local g,
h,i=e.Create,c.__container or c.__instance or c,{}d=d or{}d.Padding=d.Padding or
UDim.new(0,10)d.VerticalAlignment=d.VerticalAlignment or Enum.VerticalAlignment.
Center d.HorizontalAlignment=d.HorizontalAlignment or Enum.HorizontalAlignment.
Right i.Body=(f.Apply(d,g'Frame'{Name='HStack',BackgroundTransparency=1,
AutomaticSize=Enum.AutomaticSize.XY,Parent=h,g'UIListLayout'{Name='UIListLayout'
,FillDirection=Enum.FillDirection.Horizontal,SortOrder=Enum.SortOrder.
LayoutOrder,Wraps=true}}))i.Layout=(i.Body:FindFirstChild'UIListLayout')local j=
f.Wrap(d,{Padding=function(j)i.Layout.Padding=j end,HorizontalAlignment=function
(j)i.Layout.HorizontalAlignment=j end,VerticalAlignment=function(j)i.Layout.
VerticalAlignment=j end},i.Body)j.Type='HStack'j.Theme=c.Theme j.Structures=i f.
Apply(d,j)return j end end function b.w()b.load'b'return function(c,d)local e,f=
b.load'd',b.load'c'local g,h,i=e.Create,c.__container or c.__instance or c,{}d=d
or{}d.Padding=d.Padding or UDim.new(0,10)d.VerticalAlignment=d.VerticalAlignment
or Enum.VerticalAlignment.Center d.HorizontalAlignment=d.HorizontalAlignment or
Enum.HorizontalAlignment.Right i.Body=(f.Apply(d,g'Frame'{Name='VStack',
BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.XY,Parent=h,g
'UIListLayout'{Name='UIListLayout',FillDirection=Enum.FillDirection.Vertical,
SortOrder=Enum.SortOrder.LayoutOrder,Wraps=true}}))i.Layout=(i.Body:
FindFirstChild'UIListLayout')local j=f.Wrap(d,{Padding=function(j)i.Layout.
Padding=j end,HorizontalAlignment=function(j)i.Layout.HorizontalAlignment=j end,
VerticalAlignment=function(j)i.Layout.VerticalAlignment=j end},i.Body)j.Type=
'VStack'j.Theme=c.Theme j.Structures=i f.Apply(d,j)return j end end function b.x
()b.load'b'return function(c,d)local e,f=b.load'c',b.load'r'local g=f(c)d=d or{}
d.Title=d.Title or'Title'g.Body.Parent=c.__container or c.__instance or c local
h=e.Wrap(d,{Title=function(h)g.Title.Text=h end,Subtitle=function(h)g.Subtitle.
Visible=true g.Subtitle.Text=h end},g.Body)h.Type='TitleStack'h.Theme=c.Theme h.
Structures=g e.Apply(d,h)return h end end function b.y()b.load'b'return function
(c,d)local e,f=b.load'd',b.load'c'local g,h,i=e.Create,c.__container or c.
__instance or c,{}d=d or{}d.Text=d.Text or'Label'i.Body=(g'TextLabel'{Name=
'Label',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,
255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,FontFace=Font.new'rbxassetid://12187365364',RichText=true,
TextSize=15,TextTruncate=Enum.TextTruncate.AtEnd,TextWrapped=true,Parent=h,
__dynamicKeys={TextColor3=c.Theme.Text.Secondary[1],TextTransparency=c.Theme.
Text.Secondary[2]}})local j=f.Wrap(d,{},i.Body)j.Type='Label'j.Theme=c.Theme j.
Structures=i f.Apply(d,j)return j end end function b.z()b.load'b'return function
(c,d)local e,f=b.load'd',b.load'c'local g,h,i=e.Create,c.__container or c.
__instance or c,{}d=d or{}d.Style=d.Style or'Primary'd.Size=d.Size or UDim2.
fromOffset(20,20)i.Body=(g'ImageLabel'{Name='Image',AutomaticSize=Enum.
AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Parent=h,__dynamicKeys={ImageColor3=c.Theme.Text.Primary[1],ImageTransparency=c.
Theme.Text.Primary[2]},__contextKeys={ImageColor3=function()return d.Style==
'Primary'and c.Theme.Text.Primary[1].Value or c.Theme.Text.Secondary[1].Value
end,ImageTransparency=function()return d.Style=='Primary'and c.Theme.Text.
Primary[2].Value or c.Theme.Text.Secondary[2].Value end}})local j=f.Wrap(d,{
Style=function(j)if j=='Primary'then i.Body.ImageColor3=c.Theme.Text.Primary[1].
Value.Value i.Body.ImageTransparency=c.Theme.Text.Primary[2].Value else i.Body.
ImageColor3=c.Theme.Text.Secondary[1].Value i.Body.ImageTransparency=c.Theme.
Text.Secondary[2].Value end end},i.Body)j.Type='Symbol'j.Theme=c.Theme j.
Structures=i f.Apply(d,j)return j end end function b.A()b.load'b'return function
(c,d)local e,f,g=b.load'd',b.load'c',b.load'e'local h,i,j,k,l=e.Create,g.
TweenService,c.__container or c.__instance or c,c.Theme.Controls.Toggle,{}d=d or
{}d.Value=d.Value==true l.Body=(f.Apply(d,h'Frame'{Name='Toggle',
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromOffset(28,16
),Parent=j,h'ImageButton'{Name='Switch',AutoButtonColor=false,BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Image='rbxassetid://104426531889908',
ImageColor3=Color3.fromRGB(0,0,0),ImageTransparency=0.91,Size=UDim2.fromOffset(
28,16),__dynamicKeys={ImageColor3=k.SwitchOff[1],ImageTransparency=k.SwitchOff[2
]},__contextKeys={ImageColor3=function()return d.Value and k.SwitchOn[1].Value
or k.SwitchOff[1].Value end,ImageTransparency=function()return d.Value and k.
SwitchOn[2].Value or k.SwitchOff[2].Value end},h'ImageLabel'{Name='Knob',
AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://99107881432922',Position=UDim2.new(0,1,0.5,0),Size=UDim2.
fromOffset(14,14),__dynamicKeys={ImageColor3=k.Knob[1],ImageTransparency=k.Knob[
2]},h'ImageLabel'{Name='Effects',AnchorPoint=Vector2.new(0.5,0.5),
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://138042641797315',Position=UDim2.fromScale(0.5,0.5),Size=UDim2.
fromOffset(16,16),__dynamicKeys={ImageColor3=k.KnobEffects[1],ImageTransparency=
k.KnobEffects[2]}}},h'UIGradient'{Name='UIGradient',Rotation=90,__dynamicKeys={
Color=k.DepthEffect[1]}}}}))l.Switch=(l.Body:FindFirstChild'Switch')l.Knob=(l.
Switch:FindFirstChild'Knob')local m local n={Value=function(n,o)o=(o==nil and
true)or false local p,q,r=TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.
EasingDirection.Out),{Position=n and UDim2.new(0,13,0.5,0)or UDim2.new(0,1,0.5,0
)},{ImageColor3=n and k.SwitchOn[1].Value or k.SwitchOff[1].Value,
ImageTransparency=n and k.SwitchOn[2].Value or k.SwitchOff[2].Value}if o then i:
Create(l.Knob,p,q):Play()i:Create(l.Switch,p,r):Play()else l.Knob.Position=q.
Position l.Switch.ImageColor3=r.ImageColor3 l.Switch.ImageTransparency=r.
ImageTransparency end if d.ValueChanged and o then d.Value=n task.spawn(d.
ValueChanged,m,n)end end}m=f.Wrap(d,n,l.Body)m.Type='Toggle'm.Theme=c.Theme m.
Structures=l do l.Switch.MouseButton1Click:Connect(function()m.Value=not m.Value
end)end n.Value(not not d.Value,false)f.Apply(d,m)return m end end function b.B(
)b.load'b'return function(c,d)local e,f=b.load'c',b.load'l'(c)d=d or{}d.Value=d.
Value~=nil and d.Value or''d.Placeholder=d.Placeholder or'Placeholder'f.Field.
TextTruncate=Enum.TextTruncate.AtEnd f.Field.TextXAlignment=Enum.TextXAlignment.
Right f.Body.Parent=c.__container or c.__instance or c local g g=e.Wrap(d,{
Placeholder=function(h)f.Field.PlaceholderText=h end,Value=function(h)f.Field.
Text=h if d.ValueChanged then d.Value=h task.spawn(d.ValueChanged,g,h)end end},f
.Body)f.Field.Focused:Connect(function()f.Body.AutomaticSize=Enum.AutomaticSize.
XY end)f.Field.FocusLost:Connect(function()f.Body.AutomaticSize=Enum.
AutomaticSize.None if g.Value~=f.Field.Text then g.Value=f.Field.Text end end)g.
Type='TextField'g.Theme=c.Theme g.Structures=f e.Apply(d,g)f.Field:
GetPropertyChangedSignal'Text':Connect(function()if d.TextChanged then task.
spawn(d.TextChanged,g,f.Field.Text or'')end end)return g end end function b.C()b
.load'b'return function(c,d)local e,f=b.load'c',b.load'e'local g,h=f.
UserInputService,b.load'l'(c)d=d or{}d.Placeholder=d.Placeholder or'Press a key'
h.Field.TextXAlignment=Enum.TextXAlignment.Right h.Field.TextEditable=false h.
Body.Parent=c.__container or c.__instance or c h.Body.AutomaticSize=Enum.
AutomaticSize.XY h.Body.Size=UDim2.fromOffset(0,23)h.Field.Size=UDim2.
fromOffset(0,23)h.Corner.CornerRadius=UDim.new(0,6)local i i=e.Wrap(d,{
Placeholder=function(j)h.Field.PlaceholderText=j end,Value=function(j)h.Field.
Text=j.Name if d.ValueChanged then d.Value=j task.spawn(d.ValueChanged,i,j)end
end},h.Body)g.InputBegan:Connect(function(j,k)if j.UserInputType~=Enum.
UserInputType.Keyboard then return end if j.KeyCode==d.Value and d.BindPressed
then d.BindPressed(i,j.KeyCode,false,k)end end)g.InputEnded:Connect(function(j,k
)if j.UserInputType~=Enum.UserInputType.Keyboard then return end if h.Field:
IsFocused()then i.Value=j.KeyCode h.Field:ReleaseFocus()elseif j.KeyCode==d.
Value and d.BindPressed then d.BindPressed(i,j.KeyCode,true,k)end end)i.Type=
'KeybindField'i.Theme=c.Theme i.Structures=h e.Apply(d,i)return i end end
function b.D()b.load'b'return function(c,d)local e,f=b.load'd',b.load'c'local g,
h,i,j,k=e.Create,c.__container or c.__instance or c,c.Theme.Controls.Slider,0,{}
d=d or{}d.Value=d.Value or 0 d.Maximum=d.Maximum or 1 d.Minimum=d.Minimum or 0 k
.Body=(f.Apply(d,g'ImageLabel'{Name='Slider',Active=true,AnchorPoint=Vector2.
new(0,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1
,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://92966982499851',Position=UDim2.fromScale(0,0.5),Selectable=true,
Size=UDim2.fromOffset(150,4),Parent=h,__dynamicKeys={ImageColor3=i.Track[1],
ImageTransparency=i.Track[2]},g'ImageLabel'{Name='TrackClip',BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Image='rbxassetid://113661976068590',
ImageColor3=Color3.fromRGB(252,252,252),ResampleMode=Enum.ResamplerMode.
Pixelated,Size=UDim2.new(0,2,1,0),ZIndex=3,__dynamicKeys={ImageColor3=c.Theme.
Controls.View[1],ImageTransparency=c.Theme.Controls.View[2]}},g'Frame'{Name=
'Fill',BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.
fromScale(0,1),__dynamicKeys={BackgroundColor3=c.Theme.Controls.Selection[1],
BackgroundTransparency=c.Theme.Controls.Selection[2]},g'ImageLabel'{Name=
'Effects',BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://82410105327406',ImageColor3=Color3.fromRGB(0,0,0),Size=UDim2.new(0
,150,1,0),ZIndex=0,__dynamicKeys={ImageColor3=i.TrackEffects[1],
ImageTransparency=i.TrackEffects[2]}},g'Frame'{Name='Thumb',Active=true,
AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Position=UDim2.fromScale(1,0),Selectable=true,Size=UDim2.fromOffset(20,20),
ZIndex=2,g'ImageLabel'{Name='Background',BackgroundColor3=Color3.fromRGB(255,255
,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://125496304036680',Selectable=true,Size=
UDim2.fromOffset(20,20),__dynamicKeys={ImageColor3=i.Thumb[1],ImageTransparency=
i.Thumb[2]},g'UIStroke'{Name='UIStroke',ApplyStrokeMode=Enum.ApplyStrokeMode.
Border,__dynamicKeys={Color=i.ThumbStroke[1],Transparency=i.ThumbStroke[2]}},g
'UICorner'{Name='UICorner',CornerRadius=UDim.new(1,0)}},g'ImageLabel'{Name=
'ThumbEffects',AnchorPoint=Vector2.new(0.5,0),BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://85926626300527',Position=UDim2.fromScale(
0.5,0),Size=UDim2.fromOffset(22,22),ZIndex=0,__dynamicKeys={ImageColor3=i.
ThumbEffects[1],ImageTransparency=i.ThumbEffects[2]},g'UICorner'{Name='UICorner'
,CornerRadius=UDim.new(1,0)}}}}}))k.Fill=(k.Body:FindFirstChild'Fill')k.Thumb=(k
.Fill:FindFirstChild'Thumb')k.Dragger=(g'UIDragDetector'{Name='UIDragDetector',
ResponseStyle=Enum.UIDragDetectorResponseStyle.CustomOffset,
SelectionModeDragSpeed=UDim2.new(),SelectionModeRotateSpeed=0,
ActivatedCursorIcon='rbxassetid://0',CursorIcon='rbxassetid://0',Parent=k.Thumb}
)local l local m={Value=function(m)local n,o=k.Body.AbsoluteSize.X,k.Thumb.
AbsoluteSize.X local p,q,r=o/2,d.Minimum,d.Maximum local s,t=(m-q)/(r-q),n-o
local u=p+(t*s)k.Fill.Size=UDim2.new(0,u,1,0)if d.ValueChanged then d.Value=m
task.spawn(d.ValueChanged,l,m)end end}l=f.Wrap(d,m,k.Body)l.Type='Slider'l.Theme
=c.Theme l.Structures=k k.Dragger.DragStart:Connect(function()j=k.Fill.
AbsoluteSize.X end)k.Dragger.DragContinue:Connect(function()local n,o=k.Body.
AbsoluteSize.X,k.Thumb.AbsoluteSize.X local p=o/2 local q,r,s=p,n-p,k.Dragger.
DragUDim2.X.Offset local t=j+s local u=math.clamp(t,q,r)local v=(u-q)/(r-q)l.
Value=l.Minimum+(l.Maximum-l.Minimum)*v end)f.Apply(d,l)return l end end
function b.E()b.load'b'return function(c,d)local e,f,g=b.load'd',b.load'c',b.
load'e'local h,i,j,k,l=e.Create,g.TweenService,c.__container or c.__instance or
c,c.Theme.Controls.Button,{}d=d or{}d.State=d.State or'Primary'd.Label=d.Label
or'Label'l.Body=(f.Apply(d,h'TextButton'{Name='Button',AutoButtonColor=false,
AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255)
,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Text='',Parent=j,h
'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,5)},h'Folder'{Name=
'ShadowLayers',h'Frame'{Name='Layer1',BackgroundColor3=Color3.fromRGB(255,255,
255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel
=0,Size=UDim2.fromScale(1,1),ZIndex=0,h'UICorner'{Name='UICorner',CornerRadius=
UDim.new(0,5)},h'UIStroke'{Name='UIStroke',ApplyStrokeMode=Enum.ApplyStrokeMode.
Border,Transparency=0.95,__dynamicKeys={Color=k.Shadow}}},h'Frame'{Name='Layer2'
,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Size=UDim2.fromScale(1,1),
ZIndex=-1,h'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,5)},h'UIStroke'{
Name='UIStroke',ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Thickness=2,
Transparency=0.98,__dynamicKeys={Color=k.Shadow}}}}}))l.Shadows=l.Body:
FindFirstChild'ShadowLayers'l.Shadow1=l.Shadows:FindFirstChild'Layer1':
FindFirstChild'UIStroke'l.Shadow2=l.Shadows:FindFirstChild'Layer2':
FindFirstChild'UIStroke'local m,n={TextColor3=function()local m=d.State return m
=='Primary'and c.Theme.Text.SelectionPrimary[1].Value or m=='Secondary'and c.
Theme.Text.Primary[1].Value or m=='Destructive'and c.Theme.Accents.Red[1].Value
end,TextTransparency=function()local m=d.State return m=='Primary'and c.Theme.
Text.SelectionPrimary[2].Value or m=='Secondary'and c.Theme.Text.Primary[2].
Value or m=='Destructive'and c.Theme.Accents.Red[2].Value end},{Color=function()
local m=d.State return m=='Primary'and k.FillPrimary.Value or(m=='Secondary'or m
=='Destructive')and k.FillSecondary.Value end}l.Label=(h'TextLabel'{Size=UDim2.
fromScale(1,1),Name='Label',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3
=Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new'rbxassetid://12187365364',
RichText=true,TextSize=14,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.
Center,TextYAlignment=Enum.TextYAlignment.Center,Parent=l.Body.__instance,
__dynamicKeys={TextColor3=c.Theme.Text.SelectionPrimary[1],TextTransparency=c.
Theme.Text.SelectionPrimary[2]},__contextKeys=m,h'UIPadding'{Name='UIPadding',
PaddingBottom=UDim.new(0,3),PaddingLeft=UDim.new(0,7),PaddingRight=UDim.new(0,7)
,PaddingTop=UDim.new(0,3)}})l.Fill=(h'UIGradient'{Name='UIGradient',Rotation=90,
Parent=l.Body.__instance,__dynamicKeys={Color=k.FillPrimary},__contextKeys=n})
local o,p={State=function()task.defer(function()l.Label.TextColor3=m.TextColor3(
)l.Label.TextTransparency=m.TextTransparency()l.Fill.Color=n.Color()end)end,
Label=function(o)l.Label.Text=o end}p=f.Wrap(d,o,l.Body)p.Type='Button'p.Theme=c
.Theme p.Structures=l l.Body.MouseButton1Click:Connect(function()if d.Pushed
then task.spawn(d.Pushed,p)end end)l.Body.MouseButton1Down:Connect(function()
local q=TweenInfo.new(0.08,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out)i:
Create(l.Shadow1,q,{Transparency=0.8}):Play()i:Create(l.Shadow2,q,{Transparency=
0.9}):Play()end)l.Body.MouseButton1Up:Connect(function()local q=TweenInfo.new(
0.12,Enum.EasingStyle.Sine,Enum.EasingDirection.Out)i:Create(l.Shadow1,q,{
Transparency=0.95}):Play()i:Create(l.Shadow2,q,{Transparency=0.98}):Play()end)l.
Body.MouseLeave:Connect(function()local q=TweenInfo.new(0.12,Enum.EasingStyle.
Sine,Enum.EasingDirection.Out)i:Create(l.Shadow1,q,{Transparency=0.95}):Play()i:
Create(l.Shadow2,q,{Transparency=0.98}):Play()end)f.Apply(d,p)return p end end
function b.F()b.load'b'return function(c,d)local e,f,g=b.load'd',b.load'c',b.
load'l'local h,i,j,k,l,m,n,o,p=e.Create,c.__container or c.__instance or c,c.
Theme.Controls.Stepper,{},false,{},0.35,0.083,function(h)local i=tostring(h)
local j,k=string.find(i,'%.'),0 if j then k=#i-j end return k end local q,r=
function(q,r)local s,t=p(r),p(q)local u=math.max(s,t)local v='%.'..u..'f'return
string.format(v,q)end,function(q,r)local s=10^(r or 0)return math.floor(q*s+0.5)
/s end d=d or{}d.Value=d.Value or 0 d.Step=d.Step or 0.1 d.Maximum=d.Maximum or
1 d.Minimum=d.Minimum or 0 d.Fielded=d.Fielded or false k.Body=(f.Apply(d,h
'ImageLabel'{Name='Stepper',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://85888499115674',Size=UDim2.fromOffset(13,20),Parent=i,
__dynamicKeys={ImageColor3=j.Background[1],ImageTransparency=j.Background[2]},h
'ImageLabel'{Name='Shadow',BackgroundTransparency=1,AnchorPoint=Vector2.new(0.5,
0.5),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://105571270097608',LayoutOrder=1,Position=UDim2.fromScale(0.5,0.5),
Size=UDim2.fromOffset(19,27),__dynamicKeys={ImageColor3=j.Dropshadow[1],
ImageTransparency=j.Dropshadow[2]}},h'ImageButton'{Name='Up',AutoButtonColor=
false,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://133515997946294',Size=UDim2.new(1,0,0,9),Position=UDim2.
fromOffset(0,1),__dynamicKeys={ImageColor3=c.Theme.Text.Primary[1],
ImageTransparency=c.Theme.Text.Primary[2]},__contextKeys={ImageColor3=function()
if d.Value>=d.Maximum then return c.Theme.Text.Tertiary[1].Value else return c.
Theme.Text.Primary[1].Value end end,ImageTransparency=function()if d.Value>=d.
Maximum then return c.Theme.Text.Tertiary[2].Value else return c.Theme.Text.
Primary[2].Value end end}},h'ImageButton'{Name='Down',AnchorPoint=Vector2.new(0,
1),AutoButtonColor=false,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://83836660987173',Position=UDim2.fromScale(0,1),Size=UDim2.
new(1,0,0,9),__dynamicKeys={ImageColor3=c.Theme.Text.Primary[1],
ImageTransparency=c.Theme.Text.Primary[2]},__contextKeys={ImageColor3=function()
if d.Value<=d.Minimum then return c.Theme.Text.Tertiary[1].Value else return c.
Theme.Text.Primary[1].Value end end,ImageTransparency=function()if d.Value<=d.
Minimum then return c.Theme.Text.Tertiary[2].Value else return c.Theme.Text.
Primary[2].Value end end}},h'Frame'{Name='Top',BackgroundColor3=Color3.fromRGB(
255,255,255),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2
.fromOffset(0,6),Size=UDim2.new(1,0,0,4),ZIndex=0,h'UIGradient'{Name=
'UIGradient',Rotation=90,Transparency=NumberSequence.new{NumberSequenceKeypoint.
new(0,0.949),NumberSequenceKeypoint.new(1,0.949)},__dynamicKeys={Color=j.
SegmentShadow}}},h'Frame'{Name='Separator',AnchorPoint=Vector2.new(0,0.5),
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position=UDim2.fromScale(0,
0.5),Size=UDim2.new(1,0,0,1),ZIndex=0,__dynamicKeys={BackgroundColor3=j.
Separator[1],BackgroundTransparency=j.Separator[2]}},h'Frame'{Name='Bottom',
BackgroundColor3=Color3.fromRGB(255,255,255),BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Position=UDim2.fromOffset(0,10),Size=UDim2.new(1,0,0,4),ZIndex
=0,h'UIGradient'{Name='UIGradient',Rotation=-90,Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,0.949),NumberSequenceKeypoint.new(1,0.949)},
__dynamicKeys={Color=j.SegmentShadow}}},h'Frame'{Name='Filler',AnchorPoint=
Vector2.new(0,0.5),BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Position
=UDim2.fromScale(0,0.5),Size=UDim2.new(1,0,0,2),ZIndex=0,__dynamicKeys={
BackgroundColor3=j.Filler[1],BackgroundTransparency=j.Filler[2]}}}))k.IPlus=(k.
Body:FindFirstChild'Up')k.IMinus=(k.Body:FindFirstChild'Down')k.Field=g(c)k.
Field.Padding.PaddingBottom=UDim.new(0,2)k.Field.Padding.PaddingTop=UDim.new(0,2
)k.Field.Padding.PaddingRight=UDim.new(0,2)k.Field.Body.Size=UDim2.fromOffset(0,
23)k.Field.Field.Size=UDim2.fromOffset(0,0)k.Field.Corner.CornerRadius=UDim.new(
0,6)k.Field.FieldPadding:Destroy()local s local t={Fielded=function(t)if t then
k.Field.Body.Parent=i k.Body.Parent=k.Field.Body.__instance k.Body.LayoutOrder=1
else k.Field.Body.Parent=nil k.Body.Parent=i k.Body.LayoutOrder=0 end end,Value=
function(t)if t<=d.Minimum then k.IMinus.ImageColor3=c.Theme.Text.Tertiary[1].
Value k.IMinus.ImageTransparency=c.Theme.Text.Tertiary[2].Value k.IMinus.
Interactable=false else k.IMinus.ImageColor3=c.Theme.Text.Primary[1].Value k.
IMinus.ImageTransparency=c.Theme.Text.Primary[2].Value k.IMinus.Interactable=
true end if t>=d.Maximum then k.IPlus.ImageColor3=c.Theme.Text.Tertiary[1].Value
k.IPlus.ImageTransparency=c.Theme.Text.Tertiary[2].Value k.IPlus.Interactable=
false else k.IPlus.ImageColor3=c.Theme.Text.Primary[1].Value k.IPlus.
ImageTransparency=c.Theme.Text.Primary[2].Value k.IPlus.Interactable=true end if
k.Field then k.Field.Field.Text=q(t,d.Step)end if d.ValueChanged then d.Value=t
task.spawn(d.ValueChanged,s,t)end end}s=f.Wrap(d,t,k.Body)s.Type='Stepper's.
Theme=c.Theme s.Structures=k s.Increment=function()assert(d.Minimum)assert(d.
Maximum)local u,v=math.max(p(s.Value),p(d.Step)),s.Value+d.Step local w=r(v,u)s.
Value=math.clamp(w,d.Minimum,d.Maximum)end s.Decrement=function()assert(d.
Minimum)assert(d.Maximum)local u,v=math.max(p(s.Value),p(d.Step)),s.Value-d.Step
local w=r(v,u)s.Value=math.clamp(w,d.Minimum,d.Maximum)end local u,v=function(u)
l=true local v=(u=='Up')and s.Increment or s.Decrement m[u]=task.spawn(function(
)if l then task.wait(n)end if not l then return end v()while l do task.wait(o)if
l then v()end end end)end,function(u)l=false if m[u]then task.cancel(m[u])m[u]=
nil end end k.IPlus.MouseButton1Down:Connect(function()s.Increment()u'Up'end)k.
IPlus.MouseButton1Up:Connect(function()v'Up'end)k.IPlus.MouseLeave:Connect(
function()v'Up'end)k.IMinus.MouseButton1Down:Connect(function()s.Decrement()u
'Down'end)k.IMinus.MouseButton1Up:Connect(function()v'Down'end)k.IMinus.
MouseLeave:Connect(function()v'Down'end)k.Body.AncestryChanged:Connect(function(
w,x)if not x then v'Up'v'Down'for y,z in pairs(m)do if typeof(z)==
'RBXScriptConnection'then z:Disconnect()end end m={}end end)k.Field.Field.
FocusLost:Connect(function(w)if w then assert(d.Minimum)assert(d.Maximum)local x
=k.Field.Field.Text local y=tonumber(x)if y and d.Fielded then d.Value=math.
clamp(y,d.Minimum,d.Maximum)if d.Value then t.Value(d.Value)end end else k.Field
.Field.Text=tostring(d.Value)end end)f.Apply(d,s)return s end end function b.G()
b.load'b'return function(c,d)local e,f=b.load'd',b.load'c'local g,h,i,j=e.Create
,c.__container or c.__instance or c,c.Theme.Controls.RadioButtonGroup,{
RadioButtons={}}local k=function(k,l,m)j.RadioButtons[m]=(g'Frame'{Name=
'RadioButton',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.
fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0)
,BorderSizePixel=0,LayoutOrder=m,Parent=j.Body.__instance,g'UIListLayout'{Name=
'UIListLayout',FillDirection=Enum.FillDirection.Horizontal,HorizontalAlignment=
Enum.HorizontalAlignment.Right,Padding=UDim.new(0,6),SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},g'ImageButton'{Name
='Button',BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://118333468121914',Size=UDim2.fromOffset(14,14),__dynamicKeys={
ImageColor3=i.Background[1],ImageTransparency=i.Background[2]},__contextKeys={
ImageColor3=function()return d.Value==m and c.Theme.Controls.Selection[1].Value
or i.Background[1].Value end,ImageTransparency=function()return d.Value==m and c
.Theme.Controls.Selection[2].Value or i.Background[2].Value end},g'ImageLabel'{
Name='Overlay',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://118333468121914',Size=UDim2.fromOffset(14,14),__dynamicKeys=
{ImageColor3=i.Overlay[1],ImageTransparency=i.Overlay[2]},g'UIGradient'{Name=
'UIGradient',Rotation=90,Transparency=NumberSequence.new{NumberSequenceKeypoint.
new(0,0),NumberSequenceKeypoint.new(1,1)}}},g'ImageLabel'{Name='Dot',AnchorPoint
=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://118333468121914',Position=UDim2.fromScale(0.5,0.5),ScaleType
=Enum.ScaleType.Fit,Size=UDim2.fromOffset(6,6),SliceCenter=Rect.new(7,7,7,7),
__dynamicKeys={ImageColor3=i.Dot[1],ImageTransparency=i.Dot[2]},__contextKeys={
ImageTransparency=function()return d.Value==m and i.Dot[2].Value or 1 end}},g
'ImageLabel'{Name='Stroke',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,Image='rbxassetid://132968326823931',Position=
UDim2.fromScale(0.5,0.5),Size=UDim2.fromScale(1,1),__dynamicKeys={ImageColor3=i.
Stroke[1],ImageTransparency=i.Stroke[2]},__contextKeys={ImageTransparency=
function()return d.Value==m and 1 or i.Stroke[2].Value end}},g'ImageLabel'{Name=
'InnerShadow',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://95115717327743',Position=UDim2.fromScale(
0.5,0.5),Size=UDim2.fromScale(1,1),__dynamicKeys={ImageColor3=i.InnerShadow[1],
ImageTransparency=i.InnerShadow[2]},__contextKeys={ImageTransparency=function()
return d.Value==m and 1 or i.InnerShadow[2].Value end}},g'ImageLabel'{Name=
'DropShadow',AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(
255,255,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),
BorderSizePixel=0,Image='rbxassetid://110994967430153',Position=UDim2.new(0.5,0,
0.5,1),ScaleType=Enum.ScaleType.Fit,Size=UDim2.fromOffset(20,20),__dynamicKeys={
ImageColor3=c.Theme.Controls.Selection[1],ImageTransparency=c.Theme.Controls.
Selection[2]},__contextKeys={ImageTransparency=function()return d.Value==m and
0.76 or 1 end}}},g'TextLabel'{Name='Label',AutomaticSize=Enum.AutomaticSize.XY,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new
'rbxassetid://12187365364',LayoutOrder=1,RichText=true,Text=l,TextSize=15,
TextTruncate=Enum.TextTruncate.AtEnd,Visible=not not l,__dynamicKeys={TextColor3
=c.Theme.Text.Primary[1],TextTransparency=c.Theme.Text.Primary[2]}}})local n=(j.
RadioButtons[m]:FindFirstChild'Button')if n and n:IsA'ImageButton'then n.
MouseButton1Click:Connect(function()if k then k.Value=m end end)end end d=d or{}
d.Options=d.Options or{}j.Body=(f.Apply(d,g'Frame'{Name='RadioButtons',
AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Parent=h,g'UIListLayout'{Name='UIListLayout',FillDirection=Enum.FillDirection.
Horizontal,HorizontalAlignment=Enum.HorizontalAlignment.Right,Padding=UDim.new(0
,16),SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.
VerticalAlignment.Center,Wraps=true}}))local l local m={Options=function(m)for n
,o in ipairs(m)do if j.RadioButtons[n]then j.RadioButtons[n]:Destroy()end k(l,o,
n)end end,Value=function(m)for n,o in ipairs(j.RadioButtons)do local p=n==m if o
then local q=o:FindFirstChild'Button'q.ImageColor3=p and c.Theme.Controls.
Selection[1].Value or i.Background[1].Value q.ImageTransparency=p and c.Theme.
Controls.Selection[2].Value or i.Background[2].Value q:FindFirstChild'Dot'.
ImageTransparency=p and i.Dot[2].Value or 1 q:FindFirstChild'Stroke'.
ImageTransparency=p and 1 or i.Stroke[2].Value q:FindFirstChild'InnerShadow'.
ImageTransparency=p and 1 or i.InnerShadow[2].Value q:FindFirstChild'DropShadow'
.ImageTransparency=p and 0.76 or 1 end end if d.ValueChanged then d.Value=m task
.spawn(d.ValueChanged,l,m)end end}l=f.Wrap(d,m,j.Body)l.Type='RadioButtonGroup'l
.Theme=c.Theme l.Structures=j l.Option=function(n,o)local p=#j.RadioButtons+1 k(
l,o,p)table.insert(d.Options or{},o)return j.RadioButtons[p]end f.Apply(d,l)
return l end end function b.H()b.load'b'return function(c,d)local e,f,g=b.load
'd',b.load'c',b.load'e'local h,i,j,k,l=e.Create,g.UserInputService,g.
TweenService,g.Workspace,g.GuiService local m,n,o,p,q,r,s,t=k.CurrentCamera,c.
__container or c.__instance or c,c.Theme.Controls.MenuButton,{Options={}},-1,6,6
,239 local u,v,w=function()p.Menu.AutomaticSize=Enum.AutomaticSize.XY task.
defer(function()local u=p.Menu.AbsoluteSize.Y if u>=t then p.Menu.AutomaticSize=
Enum.AutomaticSize.X p.Menu.Size=UDim2.fromOffset(0,t)else p.Menu.Size=UDim2.
fromOffset(0,u)p.Menu.AutomaticSize=Enum.AutomaticSize.X end end)end,function()
local u,v=p.Body,p.Menu if not v or not u then return end local w,x,y,z,A=u.
AbsolutePosition,u.AbsoluteSize,v.AbsoluteSize,(m.ViewportSize)if d.Maximum and
d.Maximum>1 then local B=p.PopUpIndicator or u local C=B.AbsolutePosition A=C.X+
q else A=w.X+q end local B,C,D=w.Y+x.Y+r,math.max(s,z.X-s-y.X),math.max(s,z.Y-s-
y.Y)A=math.clamp(A,s,C)B=math.clamp(B,s,D)v.Position=UDim2.new(0,A,0,B)end,
function(u,v,w)local x=(h'TextButton'{Name='Item',Size=UDim2.fromScale(1,0),
AutoButtonColor=false,AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=
Color3.fromRGB(0,122,255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0
,0,0),BorderSizePixel=0,Selectable=false,Text='',LayoutOrder=w,Parent=p.Menu,h
'UIPadding'{Name='UIPadding',PaddingBottom=UDim.new(0,3),PaddingLeft=UDim.new(0,
7),PaddingRight=UDim.new(0,12),PaddingTop=UDim.new(0,3)},h'UIListLayout'{Name=
'UIListLayout',FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,2)
,SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.
Center},h'ImageLabel'{Name='Checkmark',BackgroundColor3=Color3.fromRGB(255,255,
255),BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel
=0,Image='rbxassetid://127464789357538',ImageColor3=Color3.fromRGB(0,0,0),
ImageTransparency=1,Size=UDim2.fromOffset(16,16),Visible=false,__dynamicKeys={
ImageColor3=c.Theme.Text.Primary[1],ImageTransparency=c.Theme.Text.Primary[2]}},
h'Frame'{Name='CheckmarkRepl',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Size=UDim2.fromOffset(16,16),Visible=true},h'TextLabel'{Name='Label',
AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
FontFace=Font.new'rbxassetid://12187365364',LayoutOrder=1,RichText=true,Text=v,
TextColor3=Color3.fromRGB(0,0,0),TextSize=15,TextTransparency=0.15,TextTruncate=
Enum.TextTruncate.AtEnd,__dynamicKeys={TextColor3=c.Theme.Text.Primary[1],
TextTransparency=c.Theme.Text.Primary[2]}},h'UICorner'{Name='UICorner',
CornerRadius=UDim.new(0,5)}})local y,z=x:FindFirstChild'Label',x:FindFirstChild
'Checkmark'p.Options[w]=x.__instance x:GetPropertyChangedSignal'GuiState':
Connect(function()if not u.Expanded then return end if x.GuiState==Enum.GuiState
.Hover then x.BackgroundTransparency=c.Theme.Controls.SelectionFocused[2].Value
y.TextColor3=c.Theme.Controls.SelectionFocusedAccent[1].Value y.TextTransparency
=c.Theme.Controls.SelectionFocusedAccent[2].Value z.ImageColor3=c.Theme.Controls
.SelectionFocusedAccent[1].Value z.ImageTransparency=c.Theme.Controls.
SelectionFocusedAccent[2].Value else x.BackgroundTransparency=1 y.TextColor3=c.
Theme.Text.Primary[1].Value y.TextTransparency=c.Theme.Text.Primary[2].Value z.
ImageColor3=c.Theme.Text.Primary[1].Value z.ImageTransparency=c.Theme.Text.
Primary[2].Value end end)x.MouseButton1Click:Connect(function()if u then if u.
Maximum and u.Maximum>1 then local A=u.Value or{}if typeof(A)~='table'then A=A
and{A}or{}end local B for C,D in ipairs(A)do if D==w then B=C break end end if B
then table.remove(A,B)else if#A<u.Maximum then table.insert(A,w)else table.
remove(A,1)table.insert(A,w)end end u.Value=A else u.Expanded=false task.wait(
0.2)u.Value=w end end end)end d=d or{}d.Maximum=d.Maximum or 1 d.Expanded=d.
Expanded or false p.Body=(f.Apply(d,h'TextButton'{Name='PopUpButton',
AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255)
,BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Selectable=false,Text='',Parent=n,h'UIPadding'{Name='UIPadding',PaddingBottom=
UDim.new(0,3),PaddingLeft=UDim.new(0,3),PaddingRight=UDim.new(0,3),PaddingTop=
UDim.new(0,3)},h'UIListLayout'{Name='UIListLayout',FillDirection=Enum.
FillDirection.Horizontal,Padding=UDim.new(0,7),SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},h'Frame'{Name=
'PopUpIndicator',BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
LayoutOrder=1,Selectable=true,Size=UDim2.fromOffset(16,16),__dynamicKeys={
BackgroundColor3=o.IndicatorBackground[1],BackgroundTransparency=o.
IndicatorBackground[2]},h'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,4)},
h'ImageLabel'{Name='Indicators',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://89151647333378',Size=UDim2.fromScale(1,1),__dynamicKeys={
ImageColor3=c.Theme.Text.Primary[1],ImageTransparency=c.Theme.Text.Primary[2]}}}
,h'TextLabel'{Name='Label',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new'rbxassetid://12187365364',
RichText=true,Text='None',TextSize=15,TextTransparency=0.15,TextTruncate=Enum.
TextTruncate.AtEnd,__dynamicKeys={TextColor3=c.Theme.Text.Primary[1],
TextTransparency=c.Theme.Text.Primary[2]}}}))p.PopUpIndicator=(p.Body:
FindFirstChild'PopUpIndicator')p.CurrentTab=(p.Body:FindFirstChild'Label')p.
MenuContainer=(h'ScreenGui'{Name='Container',IgnoreGuiInset=true,ScreenInsets=
Enum.ScreenInsets.None,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=
201,OnTopOfCoreBlur=true,h'CanvasGroup'{Name='MenuBody',BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,BackgroundTransparency=1,Size=UDim2.fromScale(1
,1),h'ScrollingFrame'{Name='PopUpMenu',AutomaticSize=Enum.AutomaticSize.X,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,AutomaticCanvasSize=Enum.
AutomaticSize.Y,CanvasSize=UDim2.new(),ScrollBarImageColor3=Color3.fromRGB(0,0,0
),ScrollBarImageTransparency=0.5,ScrollBarThickness=3,__dynamicKeys={
BackgroundColor3=o.MenuBackground[1],BackgroundTransparency=o.MenuBackground[2]}
,h'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,6)},h'UIStroke'{Name=
'UIStroke',ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Transparency=0.9},h
'UIPadding'{Name='UIPadding',PaddingBottom=UDim.new(0,5),PaddingLeft=UDim.new(0,
5),PaddingRight=UDim.new(0,5),PaddingTop=UDim.new(0,5)},h'UIListLayout'{Name=
'UIListLayout',SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,1)}}}})p.
MenuBody=(p.MenuContainer:FindFirstChild'MenuBody')p.Menu=(p.MenuBody:
FindFirstChild'PopUpMenu')local x local y={Options=function(y)for z,A in ipairs(
p.Options)do A:Destroy()end for z,A in ipairs(y)do w(x,A,z)u()end end,Expanded=
function(y)local z=y==true if z then p.MenuContainer.Parent=p.Body.__instance
end v()local A,B={GroupTransparency=z and 0 or 1},TweenInfo.new(z and 0 or 0.4,
Enum.EasingStyle.Exponential)local C=j:Create(p.MenuBody,B,A)C:Play()C.Completed
:Connect(function()if x.Expanded==false then p.MenuContainer.Parent=nil end end)
end,Value=function(y)local z=x and x.Maximum and x.Maximum>1 if z then local A={
}if typeof(y)=='table'then for B,C in ipairs(y)do A[C]=true end elseif y then A[
y]=true end local B={}for C,D in ipairs(p.Options)do if A[C]and D and D:
FindFirstChild'Label'then table.insert(B,D:FindFirstChild'Label'.Text)end end if
#B==0 then p.CurrentTab.Text='None'else p.CurrentTab.Text=table.concat(B,', ')
end for C,D in ipairs(p.Options)do if not D or not D:FindFirstChild'Checkmark'
then continue end if A[C]then D:FindFirstChild'Checkmark'.Visible=true D:
FindFirstChild'CheckmarkRepl'.Visible=false else D:FindFirstChild'Checkmark'.
Visible=false D:FindFirstChild'CheckmarkRepl'.Visible=true end end else if not y
or not p.Options[y]then p.CurrentTab.Text='None'else p.CurrentTab.Text=p.Options
[y]:FindFirstChild'Label'.Text end for A,B in ipairs(p.Options)do local C=A==y
if not B or not B:FindFirstChild'Checkmark'then continue end if not C then B:
FindFirstChild'Checkmark'.Visible=false B:FindFirstChild'CheckmarkRepl'.Visible=
true else B:FindFirstChild'CheckmarkRepl'.Visible=false if not y then B:
FindFirstChild'Checkmark'.Visible=false else B:FindFirstChild'Checkmark'.Visible
=true end end end end if d.ValueChanged then d.Value=y task.spawn(d.ValueChanged
,x,y)end end}x=f.Wrap(d,y,p.Body)x.Type='PopUpButton'x.Theme=c.Theme x.
Structures=p x.Option=function(z,A)local B=#p.Options+1 w(x,A,B)u()table.insert(
x.Options,A)return p.Options[B]end x.Remove=function(z,A)if A and p.Options[A]
then p.Options[A]:Destroy()x.Options[A]=nil end end f.Apply(d,x)p.Body:
GetPropertyChangedSignal'AbsolutePosition':Connect(v)p.Body:
GetPropertyChangedSignal'AbsoluteSize':Connect(v)p.Menu:GetPropertyChangedSignal
'AbsoluteSize':Connect(v)i.InputBegan:Connect(function(z)if x.Expanded and(z.
UserInputType==Enum.UserInputType.MouseButton1 or z.UserInputType==Enum.
UserInputType.Touch)then local A,B,C=i:GetMouseLocation(),l:GetGuiInset(),p.Menu
local D,E,F=C.AbsolutePosition,C.AbsoluteSize,A.Y-B.Y if A.X<D.X or A.X>D.X+E.X
or F<D.Y or F>D.Y+E.Y then x.Expanded=false end end end)p.Body.MouseButton1Click
:Connect(function()x.Expanded=not x.Expanded end)return x end end function b.I()
b.load'b'return function(c,d)local e,f,g=b.load'd',b.load'c',b.load'e'local h,i,
j,k,l=e.Create,g.UserInputService,g.TweenService,g.Workspace,g.GuiService local
m,n,o,p,q,r,s=k.CurrentCamera,c.__container or c.__instance or c,c.Theme.
Controls.MenuButton,{Options={}},-1,6,6 local t,u=function()local t,u=p.Body,p.
Menu if not u or not t then return end local v,w,x,y=t.AbsolutePosition,t.
AbsoluteSize,u.AbsoluteSize,m.ViewportSize local z,A,B,C=v.X+q,v.Y+(w.Y*3)+(r*3)
,math.max(s,y.X-s-x.X),math.max(s,y.Y-s-x.Y)z=math.clamp(z,s,B)A=math.clamp(A,s,
C)u.Position=UDim2.new(0,z,0,A)end,function(t,u,v)local w=(h'TextButton'{Name=
'Item',Size=UDim2.fromScale(1,0),AutoButtonColor=false,AutomaticSize=Enum.
AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(0,122,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Selectable=false,Text='',LayoutOrder=v,Parent=p.Menu,h'UIPadding'{Name=
'UIPadding',PaddingBottom=UDim.new(0,3),PaddingLeft=UDim.new(0,7),PaddingRight=
UDim.new(0,12),PaddingTop=UDim.new(0,3)},h'UIListLayout'{Name='UIListLayout',
FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,2),SortOrder=Enum
.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},h
'TextLabel'{Name='Label',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new'rbxassetid://12187365364',
LayoutOrder=1,RichText=true,Text=u,TextColor3=Color3.fromRGB(0,0,0),TextSize=15,
TextTransparency=0.15,TextTruncate=Enum.TextTruncate.AtEnd,__dynamicKeys={
TextColor3=c.Theme.Text.Primary[1],TextTransparency=c.Theme.Text.Primary[2]}},h
'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,5)}})local x=w:FindFirstChild
'Label'p.Options[v]=w.__instance w:GetPropertyChangedSignal'GuiState':Connect(
function()if not t.Expanded then return end if w.GuiState==Enum.GuiState.Hover
then w.BackgroundTransparency=c.Theme.Controls.SelectionFocused[2].Value x.
TextColor3=c.Theme.Controls.SelectionFocusedAccent[1].Value x.TextTransparency=c
.Theme.Controls.SelectionFocusedAccent[2].Value else w.BackgroundTransparency=1
x.TextColor3=c.Theme.Text.Primary[1].Value x.TextTransparency=c.Theme.Text.
Primary[2].Value end end)w.MouseButton1Click:Connect(function()if t then t.
Expanded=false t.Value=v end end)end d=d or{}d.Expanded=d.Expanded or false p.
Body=(f.Apply(d,h'TextButton'{Name='PullDownButton',AutomaticSize=Enum.
AutomaticSize.XY,BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Selectable=false,Text='',Parent=n,h'UIPadding'{Name='UIPadding',PaddingBottom=
UDim.new(0,3),PaddingLeft=UDim.new(0,7),PaddingRight=UDim.new(0,3),PaddingTop=
UDim.new(0,3)},h'UIListLayout'{Name='UIListLayout',FillDirection=Enum.
FillDirection.Horizontal,Padding=UDim.new(0,7),SortOrder=Enum.SortOrder.
LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center},h'Frame'{Name=
'PullDownIndicator',BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
LayoutOrder=1,Selectable=true,Size=UDim2.fromOffset(16,16),__dynamicKeys={
BackgroundColor3=o.IndicatorBackground[1],BackgroundTransparency=o.
IndicatorBackground[2]},h'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,4)},
h'ImageLabel'{Name='Indicators',BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,
Image='rbxassetid://86693411280110',Size=UDim2.fromScale(1,1),__dynamicKeys={
ImageColor3=c.Theme.Text.Primary[1],ImageTransparency=c.Theme.Text.Primary[2]}}}
,h'TextLabel'{Name='Label',AutomaticSize=Enum.AutomaticSize.XY,BackgroundColor3=
Color3.fromRGB(255,255,255),BackgroundTransparency=1,BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,FontFace=Font.new'rbxassetid://12187365364',
RichText=true,TextSize=15,TextTransparency=0.15,TextTruncate=Enum.TextTruncate.
AtEnd,Visible=false,__dynamicKeys={TextColor3=c.Theme.Text.Primary[1],
TextTransparency=c.Theme.Text.Primary[2]}}}))p.PullDownIndicator=(p.Body:
FindFirstChild'PullDownIndicator')p.CurrentTab=(p.Body:FindFirstChild'Label')p.
MenuContainer=(h'ScreenGui'{Name='Container',IgnoreGuiInset=true,ScreenInsets=
Enum.ScreenInsets.None,ZIndexBehavior=Enum.ZIndexBehavior.Sibling,DisplayOrder=
201,OnTopOfCoreBlur=true,h'CanvasGroup'{Name='MenuBody',BorderColor3=Color3.
fromRGB(0,0,0),BorderSizePixel=0,BackgroundTransparency=1,Size=UDim2.fromScale(1
,1),h'ScrollingFrame'{Name='PullDownMenu',AutomaticSize=Enum.AutomaticSize.XY,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,AutomaticCanvasSize=Enum.
AutomaticSize.Y,CanvasSize=UDim2.new(),ScrollBarImageColor3=Color3.fromRGB(0,0,0
),ScrollBarImageTransparency=0.5,ScrollBarThickness=3,__dynamicKeys={
BackgroundColor3=o.MenuBackground[1],BackgroundTransparency=o.MenuBackground[2]}
,h'UICorner'{Name='UICorner',CornerRadius=UDim.new(0,6)},h'UIStroke'{Name=
'UIStroke',ApplyStrokeMode=Enum.ApplyStrokeMode.Border,Transparency=0.9},h
'UIPadding'{Name='UIPadding',PaddingBottom=UDim.new(0,5),PaddingLeft=UDim.new(0,
5),PaddingRight=UDim.new(0,5),PaddingTop=UDim.new(0,5)},h'UIListLayout'{Name=
'UIListLayout',SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,1)}}}})p.
MenuBody=(p.MenuContainer:FindFirstChild'MenuBody')p.Menu=(p.MenuBody:
FindFirstChild'PullDownMenu')local v local w={Options=function(w)for x,y in
ipairs(p.Options)do y:Destroy()end for x,y in ipairs(w)do u(v,y,x)end end,
Expanded=function(w)local x=w==true if x then p.MenuContainer.Parent=p.Body.
__instance end t()local y,z={GroupTransparency=x and 0 or 1},TweenInfo.new(x and
0 or 0.4,Enum.EasingStyle.Exponential)local A=j:Create(p.MenuBody,z,y)A:Play()A.
Completed:Connect(function()if v.Expanded==false then p.MenuContainer.Parent=nil
end end)end,Label=function(w)if type(w)=='string'then p.CurrentTab.Visible=true
p.CurrentTab.Text=w end end,Value=function(w)if d.ValueChanged then d.Value=w
task.spawn(d.ValueChanged,v,w)end end}v=f.Wrap(d,w,p.Body)v.Type=
'PullDownButton'v.Theme=c.Theme v.Structures=p v.Option=function(x,y)local z=#p.
Options+1 u(v,y,z)table.insert(v.Options,y)return p.Options[z]end v.Remove=
function(x,y)if y and p.Options[y]then p.Options[y]:Destroy()v.Options[y]=nil
end end f.Apply(d,v)p.Body:GetPropertyChangedSignal'AbsolutePosition':Connect(t)
p.Body:GetPropertyChangedSignal'AbsoluteSize':Connect(t)p.Menu:
GetPropertyChangedSignal'AbsoluteSize':Connect(t)i.InputBegan:Connect(function(x
)if v.Expanded and(x.UserInputType==Enum.UserInputType.MouseButton1 or x.
UserInputType==Enum.UserInputType.Touch)then local y,z,A=i:GetMouseLocation(),l:
GetGuiInset(),p.Menu local B,C,D=A.AbsolutePosition,A.AbsoluteSize,y.Y-z.Y if y.
X<B.X or y.X>B.X+C.X or D<B.Y or D>B.Y+C.Y then v.Expanded=false end end end)p.
Body.MouseButton1Click:Connect(function()v.Expanded=not v.Expanded end)return v
end end function b.J()local c,d=b.load'c',{Window=b.load'o',Section=b.load'p',
Tab=b.load'q',PageSection=b.load's',Form=b.load't',Row=b.load'u',HStack=b.load
'v',VStack=b.load'w',TitleStack=b.load'x',Label=b.load'y',Symbol=b.load'z',
Toggle=b.load'A',TextField=b.load'B',KeybindField=b.load'C',Slider=b.load'D',
Button=b.load'E',Stepper=b.load'F',RadioButtonGroup=b.load'G',PopUpButton=b.load
'H',PullDownButton=b.load'I'}for e,f in pairs(d)do d[e]=(function(g)return
function(...)local h=g(...)c.Apply(d,h)return h end end)(f)end return d end end
local c,d,e,f,g,h,i,j=b.load'a',b.load'b',b.load'd',b.load'c',b.load'e',b.load
'f',b.load'i',b.load'J'local k,l,m,n,o=e.Create,g.TweenService,{Themes=i,Symbols
=h},(TweenInfo.new(0.4,Enum.EasingStyle.Exponential,Enum.EasingDirection.Out))
local function p(q)local r={}for s,t in pairs(q)do local u=typeof(t)if u==
'table'then if t.Value~=nil and t.Connect and typeof(t.Connect)=='function'then
r[s]=e.Value(t.Value)else r[s]=p(t)end else r[s]=t end end return r end m.New=
function(q)if not game:IsLoaded()then game.Loaded:Wait()end q=q or{}local r=q.
Theme or i.Light q.Theme=p(r)local s=(c.ProtectUI(k'ScreenGui'{Name='Cascade',
IgnoreGuiInset=true,ResetOnSpawn=false,ZIndexBehavior=Enum.ZIndexBehavior.
Sibling,DisplayOrder=200,OnTopOfCoreBlur=true}))local t=(k'ImageButton'{Name=
'WindowPill',AnchorPoint=Vector2.new(0.5,0),AutoButtonColor=false,
BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=1,
BorderColor3=Color3.fromRGB(0,0,0),BorderSizePixel=0,Image=
'rbxassetid://93520763686656',ImageTransparency=0.5,Position=UDim2.new(0.5,0,0,
10),Size=UDim2.fromOffset(180,5),Parent=s.__instance,k'UICorner'{Name='UICorner'
,CornerRadius=UDim.new(1,0)}})t.MouseEnter:Connect(function()if o then o:Cancel(
)end o=l:Create(t.__instance,n,{ImageTransparency=0.15})if o then o:Play()end
end)t.MouseLeave:Connect(function()if o then o:Cancel()end o=l:Create(t.
__instance,n,{ImageTransparency=0.5})if o then o:Play()end end)local u=f.Wrap(q,
{WindowPill=function(u)t.Visible=u end,Theme=function(u)local function v(w,x)for
y,z in pairs(x)do if typeof(z)=='table'and typeof(w[y])=='table'and not z.Value
then v(w[y],z)elseif w[y]and z and z.Value~=nil then w[y].Value=z.Value end end
end v(q.Theme,u)end},s,{'Theme'})u.Structures={WindowPill=t}for v,w in pairs(j)
do u[v]=w end f.Apply(q,u)task.defer(f.Apply,q,u)return u end m.Window=function(
q)warn
'[Cascade] You cannot call `cascade.Window` directly.\r\nWindows are created *on the app object*, not on the module.\r\n\r\nExample:\r\n    local app = cascade.New()\r\n    local window = app:Window({ ... })\r\n\r\nMake sure you call `:Window` on the app returned by `cascade.New`.'
end return m end function a.a()local c=a.cache.a if not c then c={c=b()}a.cache.
a=c end return c.c end end do local b=function()return function(b)for c,d in
ipairs(b)do local e=getfenv(0)for f in string.gmatch(d,'[^%.]+')do e=e and e[f]
if e==nil then break end end if not e then return false,d end end return true
end end function a.b()local c=a.cache.b if not c then c={c=b()}a.cache.b=c end
return c.c end end do local b=function()return function()if not cache or not
cache.invalidate then return{status=400,message='Global not found'}end local b=
game:GetService'BadgeService'if b~=game:GetService'BadgeService'then return{
status=500,message=
[[Did a cosmic ray just hit your computer? This should never evaluate]]}end
cache.invalidate(b)if b==game:GetService'BadgeService'then return{status=500,
message='Reference to service object retained'}elseif typeof(b)~='Instance'then
return{status=500,message="Reference type wasn't retained"}end local c,d=a.b(){}
if not c then return{status=501,message=`Alias not found: {d}`}end return{status
=200,message=`Passed`}end end function a.c()local c=a.cache.c if not c then c={c
=b()}a.cache.c=c end return c.c end end do local b=function()return function()if
not cache or not cache.iscached then return{status=400,message=
'Global not found'}elseif not cache.invalidate then return{status=401,message=
"Dependency 'cache.invalidate' missing"}end local b=Instance.new'Part'if not
cache.iscached(b)then return{status=500,message='Cached part assumed uncached'}
end cache.invalidate(b)if cache.iscached(b)then return{status=500,message=
'Uncached part assumed cached'}end local c,d=a.b(){}if not c then return{status=
501,message=`Alias not found: {d}`}end return{status=200,message=`Passed`}end
end function a.d()local c=a.cache.d if not c then c={c=b()}a.cache.d=c end
return c.c end end do local b=function()return function()if not cache or not
cache.replace then return{status=400,message='Global not found'}end local b,c=
game:GetService'BadgeService',game:GetService'Stats'if b==c then return{status=
500,message=
[[Did a cosmic ray just hit your computer? This should never evaluate]]}end
cache.replace(b,c)if b==c then return{status=500,message=
'Reference is old reference'}elseif b==game:GetService'Stats'then return{status=
500,message='Reference is old references object'}end local d,e=a.b(){}if not d
then return{status=501,message=`Alias not found: {e}`}end return{status=200,
message=`Passed`}end end function a.e()local c=a.cache.e if not c then c={c=b()}
a.cache.e=c end return c.c end end do local b=function()return function()if not
islclosure then return{status=400,message='Global not found'}end local b,c=
function()return 1 end,print if not islclosure(b)then return{status=500,message=
'Failed to identify lua closure'}elseif islclosure(c)then return{status=500,
message='Identified C closure as lua closure'}end local d,e=a.b(){}if not d then
return{status=501,message=`Alias not found: {e}`}end return{status=200,message=`Passed`
}end end function a.f()local c=a.cache.f if not c then c={c=b()}a.cache.f=c end
return c.c end end do local b=function()return function()if not iscclosure then
return{status=400,message='Global not found'}end local b,c,d=function()return 1
end,print,newcclosure(function()return 1 end)if iscclosure(b)then return{status=
500,message='Lua closure identified as C closure'}elseif not iscclosure(c)then
return{status=500,message='C closure not identified as C closure'}elseif not
iscclosure(d)then return{status=500,message=
'C closure not identified as C closure'}end local e,f=a.b(){}if not e then
return{status=501,message=`Alias not found: {f}`}end return{status=200,message=`Passed`
}end end function a.g()local c=a.cache.g if not c then c={c=b()}a.cache.g=c end
return c.c end end do local b=function()return function()if not
isexecutorclosure then return{status=400,message='Global not found'}end local b=
function()return 1 end if not isexecutorclosure(isexecutorclosure)then return{
status=500,message='Failed to identify an executor closure'}elseif not
isexecutorclosure(b)then return{status=500,message=
'Did not identify an lua closure as an executor closure'}elseif
isexecutorclosure(print)then return{status=500,message=
'Identified a lua standard closure as an executor closure'}end local c,d=a.b(){
'checkclosure','isourclosure'}if not c then return{status=501,message=`Alias not found: {
d}`}end return{status=200,message=`Passed`}end end function a.h()local c=a.cache
.h if not c then c={c=b()}a.cache.h=c end return c.c end end do local b=function
()return function()if not newcclosure then return{status=400,message=
'Global not found'}elseif not iscclosure then return{status=500,message=
'iscclosure required to test newcclosure'}end local b=function(...)return...end
local c=newcclosure(b)if iscclosure(b)then return{status=500,message=
'iscclosure returned true a lua closure'}elseif not iscclosure(c)then return{
status=500,message='Returned false for a C closure'}elseif c(1)~=1 then return{
status=500,message='C closure did not return the expected value'}end local d,e=a
.b(){}if not d then return{status=501,message=`Alias not found: {e}`}end return{
status=200,message='Passed'}end end function a.i()local c=a.cache.i if not c
then c={c=b()}a.cache.i=c end return c.c end end do local b=function()return
function()if not clonefunction then return{status=400,message='Global not found'
}end local b=function()return 1 end local c=clonefunction(b)if c==b then return{
status=500,message='Cloned function is the same as the original'}elseif c()~=1
then return{status=500,message='Cloned function behavior mismatch'}end local d,e
=a.b(){}if not d then return{status=501,message=`Alias not found: {e}`}end
return{status=200,message='Passed'}end end function a.j()local c=a.cache.j if
not c then c={c=b()}a.cache.j=c end return c.c end end do local b=function()
return function()if not hookfunction then return{status=400,message=
'Global not found'}end local b=function()return 1 end local c,d=b,function()
return 2 end if c()~=1 then return{status=500,message=
[[This should never evaluate. Did a cosmic ray hit your computer and flip a bit?]]
}end local e=hookfunction(c,d)if c()~=2 then return{status=500,message=
'Hooked function did not return the expected value'}elseif e()~=1 then return{
status=500,message='Old function did not return the expected value'}end
hookfunction(c,e)if c()~=1 then return{status=500,message=
'Restored function did not return the expected value'}end local f,g=a.b(){
'hookfunc','replaceclosure'}if not f then return{status=501,message=`Alias not found: {
g}`}end return{status=200,message='Passed'}end end function a.k()local c=a.cache
.k if not c then c={c=b()}a.cache.k=c end return c.c end end do local b=function
()return function()if not restorefunction then return{status=400,message=
'Global not found'}elseif not hookfunction then return{status=401,message=
"'hookfunction' needed to test this"}end local b=function()return 1 end local c,
d=b,function()return 2 end if c()~=1 then return{status=500,message=
[[This should never evaluate. Did a cosmic ray hit your computer and flip a bit?]]
}end local e=hookfunction(c,d)if c()~=2 then return{status=500,message=
'Hooked function did not return the expected value'}elseif e()~=1 then return{
status=500,message='Old function did not return the expected value'}end
restorefunction(c)if c()~=1 then hookfunction(c,e)return{status=500,message=
'Restored function did not return the expected value'}end local f,g=a.b(){
'restorefunc'}if not f then return{status=501,message=`Alias not found: {g}`}end
return{status=200,message='Passed'}end end function a.l()local c=a.cache.l if
not c then c={c=b()}a.cache.l=c end return c.c end end do local b=function()
return function()if not getfunctionhash then return{status=400,message=
'Global not found'}end local b,c,d,e,f,g,h=function(b)return#b==96 and b:match
'^[0-9a-fA-F]+$'~=nil end,function()end,function(...)end,function()end,function(
)return 1 end,function()return 2 end,pcall(function()getfunctionhash(print)end)
if not b(getfunctionhash(c))then return{status=500,message=
'Hash is not hex encoded'}elseif getfunctionhash(c)==getfunctionhash(d)then
return{status=500,message='Unequal functions returned equal hashes'}elseif
getfunctionhash(c)~=getfunctionhash(e)then return{status=500,message=
'Equal functions returned unequal hashes'}elseif getfunctionhash(f)==
getfunctionhash(g)then return{status=500,message=
'Unequal returns gave equal returns'}elseif h then return{status=500,message=
'Passed when given a lua standard C closure'}end local i,j=a.b(){}if not i then
return{status=501,message=`Alias not found: {j}`}end return{status=200,message=`Passed`
}end end function a.m()local c=a.cache.m if not c then c={c=b()}a.cache.m=c end
return c.c end end do local b=function()return function()if not checkcaller then
return{status=400,message='Global not found'}elseif not hookmetamethod then
return{status=401,message="Dependency 'hookmetamethod' missing"}end local b,c,d=
(checkcaller())d=hookmetamethod(game,'__namecall',function(...)if c==nil then c=
checkcaller()end return d(...)end)tostring(game)task.wait(0.1)hookmetamethod(
game,'__namecall',d)if b~=true then return{status=500,message=
'Returned false in executor thread'}elseif c~=false then return{status=500,
message='Did not return false in a hook'}end local e,f=a.b(){}if not e then
return{status=501,message=`Alias not found: {f}`}end return{status=200,message=
'Passed'}end end function a.n()local c=a.cache.n if not c then c={c=b()}a.cache.
n=c end return c.c end end do local b=function()local b,c={},{}for d=65,90 do
table.insert(b,d)end for d=97,122 do table.insert(b,d)end for d=48,57 do table.
insert(b,d)end table.insert(b,43)table.insert(b,47)for d,e in ipairs(b)do c[e]=d
end local d,e,f,g={},bit32.rshift,bit32.lshift,bit32.band function d.Encode(h)
local i,j={},0 for k=1,#h,3 do local l,m,n=string.byte(h,k,k+2)local o,p,q,r=e(l
,2),f(g(l,3),4)+e(m or 0,4),f(g(m or 0,15),2)+e(n or 0,6),g(n or 0,63)j=j+1 i[j]
=b[o+1]j=j+1 i[j]=b[p+1]j=j+1 i[j]=m and b[q+1]or 61 j=j+1 i[j]=n and b[r+1]or
61 end local k,l,m={},0 for n=1,j,4096 do l=l+1 m=n+4096-1 k[l]=string.char(
table.unpack(i,n,m>j and j or m))end return table.concat(k)end function d.Decode
(h)local i,j={},0 for k=1,#h,4 do local l,m,n,o=string.byte(h,k,k+3)local p,q,r,
s=c[l]-1,c[m]-1,(c[n]or 1)-1,(c[o]or 1)-1 local t,u,v=f(p,2)+e(q,4),f(g(q,15),4)
+e(r,2),f(g(r,3),6)+s j=j+1 i[j]=t if n~=61 then j=j+1 i[j]=u end if o~=61 then
j=j+1 i[j]=v end end local k,l,m={},0 for n=1,j,4096 do l=l+1 m=n+4096-1 k[l]=
string.char(table.unpack(i,n,m>j and j or m))end return table.concat(k)end
return d end function a.o()local c=a.cache.o if not c then c={c=b()}a.cache.o=c
end return c.c end end do local b=function()local b,c,d={},function(b,c)return
string.find(b,c,0,true)end,function(b)local c={}c.Offset=0 c.Source=b c.Length=
string.len(b)c.IsFinished=false c.LastUnreadBytes=0 function c.read(d,e,f)local
g,h=e or 1,(f~=nil and{f}or{true})[1]local i=string.sub(d.Source,d.Offset+1,d.
Offset+g)local j=string.len(i)local k=g-j if h then d:seek(g)end d.
LastUnreadBytes=k return i end function c.seek(d,e)local f=e or 1 d.Offset=math.
clamp(d.Offset+f,0,d.Length)d.IsFinished=d.Offset>=d.Length end function c.
append(d,e)d.Source..=e d.Length=string.len(d.Source)d:seek(0)end function c.
toEnd(d)d:seek(d.Length)end return c end function b.compress(e)local f,g={},d(e)
if g.Length>12 then local h=g:read(4)local i,j,k,l,m=h,h,'','',true repeat m=
true local n=g:read()if c(i,n)then local o=g:read(3,false)if string.len(o)<3
then l=n..o g:seek(3)else k=n..o local p=c(i,k)if p then g:seek(3)repeat local q
=g:read(1,false)local r=k..q local s=c(i,r)if s then k=r p=s g:seek(1)end until
not c(i,r)or g.IsFinished local q,r=string.len(k),true if g.Length-g.Offset<=5
then l=k r=false end if r then m=false local s=string.len(i)-p i=i..k table.
insert(f,{Literal=j,LiteralLength=string.len(j),MatchOffset=s+1,MatchLength=q})j
=''end else l=n end end else l=n end if m then j=j..l i=i..n end until g.
IsFinished table.insert(f,{Literal=j,LiteralLength=string.len(j)})else local h=g
.Source f[1]={Literal=h,LiteralLength=string.len(h)}end local h=string.rep('\0',
4)local i=function(i)h=h..i end for j,k in f do local l,m=k.LiteralLength,(k.
MatchLength or 4)-4 local n,o=math.clamp(l,0,15),math.clamp(m,0,15)local p=bit32
.lshift(n,4)+o i(string.pack('<I1',p))if l>=15 then l=l-15 repeat local q=math.
clamp(l,0,0xff)i(string.pack('<I1',q))if q==0xff then l=l-255 end until q<0xff
end i(k.Literal)if j~=#f then i(string.pack('<I2',k.MatchOffset))if m>=15 then m
=m-15 repeat local q=math.clamp(m,0,0xff)i(string.pack('<I1',q))if q==0xff then
m=m-255 end until q<0xff end end end local j,k=string.len(h)-4,g.Length return
string.pack('<I4',j)..string.pack('<I4',k)..h end function b.decompress(e)local
f=d(e)local g,h=string.unpack('<I4',f:read(4)),string.unpack('<I4',f:read(4))if
g==0 then return f:read(h)end local i=d''repeat local j=string.byte(f:read())
local k,l=bit32.rshift(j,4),bit32.band(j,15)+4 if k>=15 then repeat local m=
string.byte(f:read())k+=m until m~=0xff end local m=f:read(k)i:append(m)i:toEnd(
)if i.Length<h then local n=string.unpack('<I2',f:read(2))if l>=19 then repeat
local o=string.byte(f:read())l+=o until o~=0xff end i:seek(-n)local o,p,q,r=i.
Offset,i:read(l),(i.LastUnreadBytes)if q then repeat i.Offset=o r=i:read(q)q=i.
LastUnreadBytes p..=r until q<=0 end i:append(p)i:toEnd()end until i.Length>=h
return i.Source end return b end function a.p()local c=a.cache.p if not c then c
={c=b()}a.cache.p=c end return c.c end end do local b=function()local b,c,d,e={
99,124,119,123,242,107,111,197,48,1,103,43,254,215,171,118,202,130,201,125,250,
89,71,240,173,212,162,175,156,164,114,192,183,253,147,38,54,63,247,204,52,165,
229,241,113,216,49,21,4,199,35,195,24,150,5,154,7,18,128,226,235,39,178,117,9,
131,44,26,27,110,90,160,82,59,214,179,41,227,47,132,83,209,0,237,32,252,177,91,
106,203,190,57,74,76,88,207,208,239,170,251,67,77,51,133,69,249,2,127,80,60,159,
168,81,163,64,143,146,157,56,245,188,182,218,33,16,255,243,210,205,12,19,236,95,
151,68,23,196,167,126,61,100,93,25,115,96,129,79,220,34,42,144,136,70,238,184,20
,222,94,11,219,224,50,58,10,73,6,36,92,194,211,172,98,145,149,228,121,231,200,55
,109,141,213,78,169,108,86,244,234,101,122,174,8,186,120,37,46,28,166,180,198,
232,221,116,31,75,189,139,138,112,62,181,102,72,3,246,14,97,53,87,185,134,193,29
,158,225,248,152,17,105,217,142,148,155,30,135,233,206,85,40,223,140,161,137,13,
191,230,66,104,65,153,45,15,176,84,187,22},{82,9,106,213,48,54,165,56,191,64,163
,158,129,243,215,251,124,227,57,130,155,47,255,135,52,142,67,68,196,222,233,203,
84,123,148,50,166,194,35,61,238,76,149,11,66,250,195,78,8,46,161,102,40,217,36,
178,118,91,162,73,109,139,209,37,114,248,246,100,134,104,152,22,212,164,92,204,
93,101,182,146,108,112,72,80,253,237,185,218,94,21,70,87,167,141,157,132,144,216
,171,0,140,188,211,10,247,228,88,5,184,179,69,6,208,44,30,143,202,63,15,2,193,
175,189,3,1,19,138,107,58,145,17,65,79,103,220,234,151,242,207,206,240,180,230,
115,150,172,116,34,231,173,53,133,226,249,55,232,28,117,223,110,71,241,26,113,29
,41,197,137,111,183,98,14,170,24,190,27,252,86,62,75,198,210,121,32,154,219,192,
254,120,205,90,244,31,221,168,51,136,7,199,49,177,18,16,89,39,128,236,95,96,81,
127,169,25,181,74,13,45,229,122,159,147,201,156,239,160,224,59,77,174,42,245,176
,200,235,187,60,131,83,153,97,23,43,4,126,186,119,214,38,225,105,20,99,85,33,12,
125},{0,1,2,4,8,16,32,64,128,27,54,108,216,171,77,154,47,94,188,99,198,151,53,
106,212,179,125,250,239,197,145,57},function(b)local c=bit32.lshift(b,1)return(
bit32.band(b,128)==0 and{c}or{(bit32.bxor(c,27)%256)})[1]end local f,g,h,i,j,k,l
=function(f,g)g=(g and{c}or{b})[1]for h=1,4 do for i=1,4 do f[h][i]=g[f[h][i]+1]
end end end,function(f,g)f[1][3],f[2][3],f[3][3],f[4][3]=f[3][3],f[4][3],f[1][3]
,f[2][3]if g then f[1][2],f[2][2],f[3][2],f[4][2]=f[4][2],f[1][2],f[2][2],f[3][2
]f[1][4],f[2][4],f[3][4],f[4][4]=f[2][4],f[3][4],f[4][4],f[1][4]else f[1][2],f[2
][2],f[3][2],f[4][2]=f[2][2],f[3][2],f[4][2],f[1][2]f[1][4],f[2][4],f[3][4],f[4]
[4]=f[4][4],f[1][4],f[2][4],f[3][4]end end,function(f,g)for h=1,4 do for i=1,4
do f[h][i]=bit32.bxor(f[h][i],g[h][i])end end end,function(f,g)local h,i if g
then for j=1,4 do h=e(e(bit32.bxor(f[j][1],f[j][3])))i=e(e(bit32.bxor(f[j][2],f[
j][4])))f[j][1],f[j][2]=bit32.bxor(f[j][1],h),bit32.bxor(f[j][2],i)f[j][3],f[j][
4]=bit32.bxor(f[j][3],h),bit32.bxor(f[j][4],i)end end local j for k=1,4 do j=f[k
]h,i=bit32.bxor(j[1],j[2],j[3],j[4]),j[1]for l=1,4 do j[l]=bit32.bxor(j[l],h,e(
bit32.bxor(j[l],j[l+1]or i)))end end end,function(f,g,h)if h then table.move(g[1
],1,4,1,f)table.move(g[2],1,4,5,f)table.move(g[3],1,4,9,f)table.move(g[4],1,4,13
,f)else for i=1,#g/4 do table.clear(f[i])table.move(g,i*4-3,i*4,1,f[i])end end
return f end,function(f,g,h)table.clear(f)for i=1,math.min(#g,#h)do table.
insert(f,bit32.bxor(g[i],h[i]))end return f end,function(f,g)local h=true for i=
g and 1 or#f,(g and{(#f)}or{1})[1],g and 1 or-1 do if f[i]==255 then f[i]=0 else
f[i]+=1 h=false break end end return h,f end local m,n,o,p=function(m)local n,o,
p,q,r=j(#m==16 and{{},{},{},{}}or(#m==24 and{{},{},{},{},{},{}}or{{},{},{},{},{}
,{},{},{}}),m),#m/4,2,{}while#n<(#m/4+7)*4 do r=table.clone(n[#n])if#n%o==0 then
table.insert(r,table.remove(r,1))for s=1,4 do r[s]=b[r[s]+1]end r[1]=bit32.bxor(
r[1],d[p])p+=1 elseif#m==32 and#n%o==4 then for s=1,4 do r[s]=b[r[s]+1]end end
table.clear(q)k(r,table.move(r,1,4,1,q),n[#n-o+1])table.insert(n,r)end table.
clear(q)for s=1,#n/4 do table.insert(q,{})table.move(n,s*4-3,s*4,1,q[#q])end
return q end,function(m,n,o,p,q)j(p,o)h(p,n[1])for r=2,#m/4+6 do f(p)g(p)i(p)h(p
,n[r])end f(p)g(p)h(p,n[#n])return j(q,p,true)end,function(m,n,o,p,q)j(p,o)h(p,n
[#n])g(p,true)f(p,true)for r=#m/4+6,2,-1 do h(p,n[r])i(p,true)g(p,true)f(p,true)
end h(p,n[1])return j(q,p,true)end,function(m)if type(m)=='string'then local n={
}for o=1,string.len(m),7997 do table.move({string.byte(m,o,o+7996)},1,7997,o,n)
end return n elseif type(m)=='table'then for n,o in ipairs(m)do assert(type(o)==
'number'and math.floor(o)==o and 0<=o and o<256,'Unable to cast value to bytes')
end return m else error'Unable to cast value to bytes'end end local q=function(q
,r,s,t,u)q=p(q)assert(#q==16 or#q==24 or#q==32,
'Key must be either 16, 24 or 32 bytes long')r=p(r)assert(#r%(u or 16)==0,
'Input must be a multiple of '..((u and{('segment size '..u)}or{'16'})[1])..
' bytes in length')if s then if type(t)=='table'then t=table.clone(t)local v,w=t
.Length,t.LittleEndian assert(type(v)=='number'and 0<v and v<=16,
'Counter value length must be between 1 and 16 bytes')t.Prefix=p(t.Prefix or{})t
.Suffix=p(t.Suffix or{})assert(#t.Prefix+#t.Suffix+v==16,
'Counter must be 16 bytes long')t.InitValue=t.InitValue==nil and{1}or table.
clone(p(t.InitValue))assert(#t.InitValue<=v,
'Initial value length must be of the counter value')t.InitOverflow=(t.
InitOverflow==nil and{(table.create(v,0))}or{(table.clone(p(t.InitOverflow)))})[
1]assert(#t.InitOverflow<=v,
'Initial overflow value length must be of the counter value')for x=1,v-#t.
InitValue do table.insert(t.InitValue,1+(w and{(#t.InitValue)}or{0})[1],0)end
for x=1,v-#t.InitOverflow do table.insert(t.InitOverflow,1+(w and{(#t.
InitOverflow)}or{0})[1],0)end elseif type(t)~='function'then local v,w=(t and{(
p(t))}or{(table.create(16,0))})[1],{}assert(#v==16,
'Counter must be 16 bytes long')t={Length=16,Prefix=w,Suffix=w,InitValue=v,
InitOverflow=table.create(16,0)}end elseif s==false then t=(t==nil and{(table.
create(16,0))}or{(p(t))})[1]assert(#t==16,
'Initialization vector must be 16 bytes long')end if u then u=math.floor(
tonumber(u)or 1)assert(type(u)=='number'and 0<u and u<=16,
'Segment size must be between 1 and 16 bytes')end return q,r,m(q),t,u end return
{encrypt_ECB=function(r,s)local t r,s,t=q(r,s)local u,v,w,x={},{},{{},{},{},{}},
{}for y=1,#s,16 do table.move(s,y,y+15,1,v)table.move(n(r,t,v,w,x),1,16,y,u)end
return u end,decrypt_ECB=function(r,s)local t r,s,t=q(r,s)local u,v,w,x={},{},{{
},{},{},{}},{}for y=1,#s,16 do table.move(s,y,y+15,1,v)table.move(o(r,t,v,w,x),1
,16,y,u)end return u end,encrypt_CBC=function(r,s,t)local u r,s,u,t=q(r,s,false,
t)local v,w,x,y,z={},{},t,{{},{},{},{}},{}for A=1,#s,16 do table.move(s,A,A+15,1
,w)table.move(n(r,u,k(z,w,x),y,x),1,16,A,v)end return v end,decrypt_CBC=function
(r,s,t)local u r,s,u,t=q(r,s,false,t)local v,w,x,y,z={},{},t,{{},{},{},{}},{}for
A=1,#s,16 do table.move(s,A,A+15,1,w)table.move(k(w,o(r,u,w,y,z),x),1,16,A,v)
table.move(s,A,A+15,1,x)end return v end,encrypt_PCBC=function(r,s,t)local u r,s
,u,t=q(r,s,false,t)local v,w,x,y,z,A={},{},t,table.create(16,0),{{},{},{},{}},{}
for B=1,#s,16 do table.move(s,B,B+15,1,w)table.move(n(r,u,k(w,k(A,x,w),y),z,x),1
,16,B,v)table.move(s,B,B+15,1,y)end return v end,decrypt_PCBC=function(r,s,t)
local u r,s,u,t=q(r,s,false,t)local v,w,x,y,z,A={},{},t,table.create(16,0),{{},{
},{},{}},{}for B=1,#s,16 do table.move(s,B,B+15,1,w)table.move(k(y,o(r,u,w,z,A),
k(w,x,y)),1,16,B,v)table.move(s,B,B+15,1,x)end return v end,encrypt_CFB=function
(r,s,t,u)local v r,s,v,t,u=q(r,s,false,t,u==nil and 1 or u)local w,x,y,z,A,B={},
{},t,{},{{},{},{},{}},{}for C=1,#s,u do table.move(s,C,C+u-1,1,x)table.move(k(z,
n(r,v,y,A,B),x),1,u,C,w)for D=16,u+1,-1 do table.insert(z,1,y[D])end table.move(
z,1,16,1,y)end return w end,decrypt_CFB=function(r,s,t,u)local v r,s,v,t,u=q(r,s
,false,t,u==nil and 1 or u)local w,x,y,z,A,B={},{},t,{},{{},{},{},{}},{}for C=1,
#s,u do table.move(s,C,C+u-1,1,x)table.move(k(z,n(r,v,y,A,B),x),1,u,C,w)for D=16
,u+1,-1 do table.insert(x,1,y[D])end table.move(x,1,16,1,y)end return w end,
encrypt_OFB=function(r,s,t)local u r,s,u,t=q(r,s,false,t)local v,w,x,y,z={},{},t
,{{},{},{},{}},{}for A=1,#s,16 do table.move(s,A,A+15,1,w)table.move(n(r,u,x,y,z
),1,16,1,x)table.move(k(z,w,x),1,16,A,v)end return v end,encrypt_CTR=function(r,
s,t)local u r,s,u,t=q(r,s,true,t)local v,w,x,y,z,A,B={},{},{},{{},{},{},{}},{},(
type(t)=='table')for C=1,#s,16 do if A then if C>1 and l(t.InitValue,t.
LittleEndian)then table.move(t.InitOverflow,1,16,1,t.InitValue)end table.clear(x
)table.move(t.Prefix,1,#t.Prefix,1,x)table.move(t.InitValue,1,t.Length,#x+1,x)
table.move(t.Suffix,1,#t.Suffix,#x+1,x)else B=p(t(x,(C+15)/16))assert(#B==16,
'Counter must be 16 bytes long')table.move(B,1,16,1,x)end table.move(s,C,C+15,1,
w)table.move(k(x,n(r,u,x,y,z),w),1,16,C,v)end return v end}end function a.q()
local c=a.cache.q if not c then c={c=b()}a.cache.q=c end return c.c end end do
local b=function()local b,c,d,e,f,g=a.o(),a.p(),a.q(),buffer.tostring,bit32.
lshift(1,10),{}function g.encrypt(h,i,j)return d.encrypt_CBC(i,h,j)end function
g.decrypt(h,i,j)return d.decrypt_CBC(i,h,j)end function g.base64encode(h)return
b.Encode(h)end function g.base64decode(h)return b.Decode(h)end function g.
lz4compress(h)return c.compress(h)end function g.lz4decompress(h)return c.
decompress(h)end function g.random(h)if h>f or h<0 then error(
'Expected number within range (0, 1024), got: '..tostring(h),0)else local i={}
for j=33,57 do table.insert(i,string.char(j))end for j=65,90 do table.insert(i,
string.char(j))end for j=97,122 do table.insert(i,string.char(j))end local j={}
for k=1,h do local l=math.random(1,#i)table.insert(j,i[l])end return table.
concat(j)end end return g end function a.r()local c=a.cache.r if not c then c={c
=b()}a.cache.r=c end return c.c end end do local b=function()return function()
local b=a.r()if not crypt or not crypt.encrypt then return{status=400,message=
'Global not found'}end local c,d,e,f='1234567890abcdef',
'GMVIsgHnxm0YDYwUGkBhtRWSrSsfRMjY','1234567890abcdef','CBC'local g,h=pcall(
function()return crypt.encrypt(c,d,e,f)end)if not g then return{status=0,message
='Encrypt failed: '..tostring(h)}end local i,j=
'G3H9Fk0PSWKs46qqlbA3VKnzfz7wRRTh',b.base64encode(h)if j~=i then return{status=
500,message="Encrypted data doesn't match reference data"}end local k,l=a.b(){}
if not k then return{status=501,message=`Alias not found: {l}`}end return{status
=200,message='Passed'}end end function a.s()local c=a.cache.s if not c then c={c
=b()}a.cache.s=c end return c.c end end do local b=function()return function()
local b=a.r()if not crypt or not crypt.decrypt then return{status=400,message=
'Global not found'}end local c,d,e,f=b.base64decode
'G3H9Fk0PSWKs46qqlbA3VKnzfz7wRRTh','GMVIsgHnxm0YDYwUGkBhtRWSrSsfRMjY',
'1234567890abcdef','CBC'local g,h=pcall(function()return crypt.decrypt(c,d,e,f)
end)if not g then return{status=0,message='Decrypt failed: '..tostring(h)}elseif
not h then return{status=500,message='Decrypt returned nothing'}elseif h~=
'1234567890abcdef'then return{status=500,message=
"Decrypted data doesn't match reference data"}end local i,j=a.b(){}if not i then
return{status=501,message=`Alias not found: {j}`}end return{status=200,message=
'Passed'}end end function a.t()local c=a.cache.t if not c then c={c=b()}a.cache.
t=c end return c.c end end do local b=function()return function()local b=a.r()if
not crypt or not crypt.generatekey then return{status=400,message=
'Global not found'}end local c,d=b.base64decode(crypt.generatekey()),b.
base64decode(crypt.generatekey())if type(c)~='string'then return{status=500,
message="Generated key doesn't form a string"}elseif#c~=32 then return{status=
500,message="Key dosen't match the expected length"}elseif c==d then return{
status=500,message="Keys aren't unique"}end local e,f=a.b(){}if not e then
return{status=501,message=`Alias not found: {f}`}end return{status=200,message=
'Passed'}end end function a.u()local c=a.cache.u if not c then c={c=b()}a.cache.
u=c end return c.c end end do local b=function()return function()local b=a.r()if
not crypt or not crypt.generatebytes then return{status=400,message=
'Global not found'}end local c=math.random(1,512)local d=crypt.generatebytes(c)
local e=b.base64decode(d)if type(e)~='string'then return{status=500,message=
'Generated bytes do not form a string'}elseif#e~=c then return{status=500,
message='Bytes length mismatch: '..tostring(#e)..' != '..tostring(c)}end local f
,g=a.b(){'base64_decode','crypt.base64.decode','base64.decode',
'crypt.base64_decode'}if not f then return{status=501,message=`Alias not found: {
g}`}end return{status=200,message='Passed'}end end function a.v()local c=a.cache
.v if not c then c={c=b()}a.cache.v=c end return c.c end end do local b=function
()return function()local b=a.r()if not crypt or not crypt.base64encode then
return{status=400,message='Global not found'}end local c='MYRIAD'local d,e=crypt
.base64encode(c),crypt.base64encode''if not d or typeof(d)~='string'then return{
status=500,message='Did not return the expected type'}elseif d~=b.base64encode(c
)then return{status=500,message="Encoded data doesn't match reference data"}
elseif not e or typeof(e)~='string'then return{status=500,message=
'Empty string encoding failed to return string'}elseif e~=''then return{status=
500,message='Empty string encoding mismatch'}elseif#d%4~=0 then return{status=
500,message='Encoded data length not multiple of 4, padding issue'}end local f,g
=a.b(){'base64_encode','crypt.base64.encode','base64.encode',
'crypt.base64_encode'}if not f then return{status=501,message=`Alias not found: {
g}`}end return{status=200,message='Passed'}end end function a.w()local c=a.cache
.w if not c then c={c=b()}a.cache.w=c end return c.c end end do local b=function
()return function()local b=a.r()if not crypt or not crypt.base64decode then
return{status=400,message='Global not found'}end local c='MYRIAD'local d=b.
base64encode(c)local e,f=crypt.base64decode(d),crypt.base64decode''if not d or
typeof(d)~='string'then return{status=500,message='Reference crypt failed'}
elseif not e or typeof(e)~='string'then return{status=500,message=
'Did not return the expected type'}elseif e~=c then return{status=500,message=
"Decoded data doesn't match reference data"}elseif not f or typeof(f)~='string'
then return{status=500,message='Empty string decode failed to return string'}
elseif f~=''then return{status=500,message='Empty string decode mismatch'}end
local g,h=a.b(){'base64_decode','crypt.base64.decode','base64.decode',
'crypt.base64_decode'}if not g then return{status=501,message=`Alias not found: {
h}`}end return{status=200,message='Passed'}end end function a.x()local c=a.cache
.x if not c then c={c=b()}a.cache.x=c end return c.c end end do local b=function
()return function()if not crypt or not crypt.hash then return{status=400,message
='Global not found'}end local b,c='MYRIAD',{md5=
'aa39362cc72b25918aaf443d3c7e86ef',sha1=
'8a0e38abbd784796e0ceb2455098bfbd31d1551f',sha224=
'6217b88a947fcf19f3266a1e68645db03892f301fc78d1b594678e72',sha256=
[[0597955faf24cde12e5f91f77794a0a938108bca686df0cad269489140889068]],sha384=
[[368c5054df9ffab72c8c1bb8b46f8376cd8dc9aafb62e0970453a01dd203b384c4806b24e4f025832353467e2cfe8bff]]
,sha512=
[[6454bf8242f5184e3c770afdf098f8f11ec1d4f6bc09f68923efdb27b97c45583e2211df38d42c282ca64429b4af3b54e42003c15d9df5c182f85605c5dd749d]]
,['sha3-256']=
[[406ea26a267c8eda63ae494c35e86e26d5b83b67af1074de8c3b65dcf74fab16]],['sha3-384'
]=
[[57a8309bb9f263d50b481f176e1463d70e6fa50e4bcac9e7f5e0c20aae3dc8661dffd17649b22a29ae19e815bdb51e13]]
,['sha3-512']=
[[4776a57dc3c5611a09d868a9adfba256484a95c7923a408d3274330f3d1e46a1dcd26a77fb9690c90111e182e303710f0d40fbd6957c2f5da0d4f7828b16dde9]]
}for d,e in pairs(c)do local f,g=pcall(crypt.hash,b,d)if not f and(g:lower():
find'unknown'or g:lower():find'not found'or g:lower():find'exist')then return{
status=0,message=`Hashing failed, executor dosen't seem to have algo: {d}`}
elseif not f then return{status=0,message=`Hashing failed with {d}: {g}`}elseif
not g then return{status=500,message=`Hashing failed, expected a hash. Algorithm: {
d}`}elseif g:lower()~=e:lower()then return{status=500,message=`Hash mismatch. Algorithm: {
d}`}end end local d,e=a.b(){}if not d then return{status=501,message=`Alias not found: {
e}`}end return{status=200,message='Passed'}end end function a.y()local c=a.cache
.y if not c then c={c=b()}a.cache.y=c end return c.c end end do local b=function
()return function()if not crypt or not crypt.random then return{status=400,
message='Global not found'}end local b=pcall(function()return crypt.random(512)
end)local c=pcall(function()return crypt.random(-1)end)local d,e=pcall(function(
)return crypt.random(64)end)if not d then return{status=0,message='Failed: '..
tostring(e)}elseif c then return{status=500,message=
'Arg[1] passed -1, should have failed.'}elseif not b then return{status=500,
message='Arg[1] passed 512, should have passed.'}elseif#e~=64 then return{status
=500,message='Len mismatch. Expected 64, got: '..tostring(#e)}end local f,g=a.b(
){}if not f then return{status=501,message=`Alias not found: {g}`}end return{
status=200,message='Passed'}end end function a.z()local c=a.cache.z if not c
then c={c=b()}a.cache.z=c end return c.c end end do local b=function()return
function()a.r()if not crypt or not crypt.hmac then return{status=400,message=
'Global not found'}end local b,c,d,e='MYRIAD','secret_key','sha256',
'FaDPiTSLlbxRP5rKvomt0dzwl7zhszc46/QFPsZRGWY='local f=crypt.hmac(c,b,d)if not f
then return{status=500,message='Did not return the expected type'}elseif f~=e
then return{status=500,message="Data doesn't match reference data"}end local g,h
=a.b(){}if not g then return{status=501,message=`Alias not found: {h}`}end
return{status=200,message='Passed'}end end function a.A()local c=a.cache.A if
not c then c={c=b()}a.cache.A=c end return c.c end end do local b=function()
return function()if not debug or not debug.getconstant then return{status=400,
message='Global not found'}end local b,c=nil,false local d,e=function()local d,e
=2,'A'print(d)tostring(e)Date.now()end,{[1]='print',[3]='A',[4]='tostring',[6]=
'Date',[7]='now'}for f,g in ipairs(e)do local h=debug.getconstant(d,f)if h~=g
then c=true b=g pi=f end end local f,g=pcall(debug.getconstant,d,9)if not f then
return{status=500,message=
'Should pass nil instead of errroing for invalid indexes'}elseif g then return{
status=500,message="Constant 9 shouldn't exist"}elseif pcall(debug.getconstant,
print,1)then return{status=500,message='Should error with C closures'}end local
h,i=a.b(){'getconstant'}if not h then return{status=501,message=`Alias not found: {
i}`}end return{status=200,message=`Passed with inconsistency:  Constant at {i} should be: {
v}. Got: {const}`}end end function a.B()local c=a.cache.B if not c then c={c=b()
}a.cache.B=c end return c.c end end do local b=function()return function()if not
debug or not debug.getconstants then return{status=400,message=
'Global not found'}end local b,c,d=false local e,f=false local g,h=function()
local g,h=2,'A'print(g)tostring(h)Date.now()end,{[1]='print',[3]='A',[4]=
'tostring',[6]='Date',[7]='now'}for i,j in ipairs(debug.getconstants(g))do if
not h[i]then e=true f=i break elseif h[i]~=j then b=true c,d=i,j break end end
if pcall(debug.getconstants,print)then return{status=500,message=
'Should error with C closures'}end local i,j=a.b(){'getconstants'}if not i then
return{status=501,message=`Alias not found: {j}`}end if b then return{status=200
,message=`Passed with inconsistency: Constant at {c} should be: {h[c]}. Got: {d}`
}elseif e then return{status=200,message=`Passed with inconsistency: {f} dosen't exist in expected constant order`
}end return{status=200,message=`Passed`}end end function a.C()local c=a.cache.C
if not c then c={c=b()}a.cache.C=c end return c.c end end do local b=function()
return function()if not debug or not debug.getproto then return{status=400,
message='Global not found'}end local b=function()return function()return'MYRI'
end end local c=debug.getproto(b,1,true)if type(c)~='table'or not c[1]then
return{status=500,message='getproto did not return proto'}end local d,e=a.b(){
'getproto'}if not d then return{status=501,message=`Alias not found: {e}`}end
return{status=200,message=`Passed`}end end function a.D()local c=a.cache.D if
not c then c={c=b()}a.cache.D=c end return c.c end end do local b=function()
return function()if not debug or not debug.getprotos then return{status=400,
message='Global not found'}end local b=function()return function()return'MYRI1'
end,function()return'MYRI2'end end local c=debug.getprotos(b)if#c~=2 then return
{status=500,message='Incorrect proto count'}end if c[1]==c[2]then return{status=
500,message="Protos aren't unique."}end local d,e=a.b(){'getprotos'}if not d
then return{status=501,message=`Alias not found: {e}`}end return{status=200,
message=`Passed`}end end function a.E()local c=a.cache.E if not c then c={c=b()}
a.cache.E=c end return c.c end end do local b=function()return function()if not
debug or not debug.getupvalue then return{status=400,message='Global not found'}
end local b,c=a.b(){'getupvalue'}if not b then return{status=501,message=`Alias not found: {
c}`}end return{status=200,message=`Passed`}end end function a.F()local c=a.cache
.F if not c then c={c=b()}a.cache.F=c end return c.c end end do local b=function
()return function()if not debug or not debug.getupvalues then return{status=400,
message='Global not found'}end local b,c=a.b(){'getupvalues'}if not b then
return{status=501,message=`Alias not found: {c}`}end return{status=200,message=`Passed`
}end end function a.G()local c=a.cache.G if not c then c={c=b()}a.cache.G=c end
return c.c end end do local b=function()return function()if not debug or not
debug.getstack then return{status=400,message='Global not found'}end local b,c=a
.b(){'getstack'}if not b then return{status=501,message=`Alias not found: {c}`}
end return{status=200,message=`Passed`}end end function a.H()local c=a.cache.H
if not c then c={c=b()}a.cache.H=c end return c.c end end do local b=function()
return function()if not debug or not debug.setconstant then return{status=400,
message='Global not found'}end local b,c=a.b(){'setconstant'}if not b then
return{status=501,message=`Alias not found: {c}`}end return{status=200,message=`Passed`
}end end function a.I()local c=a.cache.I if not c then c={c=b()}a.cache.I=c end
return c.c end end do local b=function()return function()if not debug or not
debug.setupvalue then return{status=400,message='Global not found'}end local b,c
=a.b(){'setupvalue'}if not b then return{status=501,message=`Alias not found: {c
}`}end return{status=200,message=`Passed`}end end function a.J()local c=a.cache.
J if not c then c={c=b()}a.cache.J=c end return c.c end end do local b=function(
)return function()if not Drawing or not Drawing.new then return{status=400,
message='Global Drawing API not found'}end local b=function(b,c,d)for e,f in
ipairs(d)do local g,h=pcall(function()return c[f]end)if not g or h==nil then
return{status=500,message=`{b} is missing property: {f} (Did you give it a default value?)`
}end c:Destroy()end end do local c=Drawing.new'Line'if not c then return{status=
500,message='Line drawing object not found'}end local d=b('Line',c,{'Visible',
'ZIndex','Transparency','Color','__OBJECT_EXISTS','Destroy','Thickness','From',
'To'})if d then return d end end do local c=Drawing.new'Text'if not c then
return{status=500,message='Text drawing object not found'}end local d=b('Text',c
,{'Visible','ZIndex','Transparency','Color','__OBJECT_EXISTS','Destroy','Text',
'TextBounds','Center','Size','Font','Outline','OutlineColor','Position'})if d
then return d end end do local c=Drawing.new'Image'if not c then return{status=
500,message='Image drawing object not found'}end local d=b('Image',c,{'Visible',
'ZIndex','Transparency','Color','__OBJECT_EXISTS','Destroy','Data','Size',
'Position'})if d then return d end end do local c=Drawing.new'Circle'if not c
then return{status=500,message='Circle drawing object not found'}end local d=b(
'Circle',c,{'Visible','ZIndex','Transparency','Color','__OBJECT_EXISTS',
'Destroy','NumSides','Radius','Position','Thickness','Filled'})if d then return
d end end do local c=Drawing.new'Square'if not c then return{status=500,message=
'Square drawing object not found'}end local d=b('Square',c,{'Visible','ZIndex',
'Transparency','Color','__OBJECT_EXISTS','Destroy','Size','Position','Thickness'
,'Filled'})if d then return d end end do local c=Drawing.new'Quad'if not c then
return{status=500,message='Quad drawing object not found'}end local d=b('Quad',c
,{'Destroy','Visible','ZIndex','Transparency','Color','__OBJECT_EXISTS','PointA'
,'PointB','PointC','PointD','Thickness','Filled'})if d then return d end end do
local c=Drawing.new'Triangle'if not c then return{status=500,message=
'Triangle drawing object not found'}end local d=b('Triangle',c,{'Destroy',
'Visible','ZIndex','Transparency','Color','__OBJECT_EXISTS','PointA','PointB',
'PointC','Thickness','Filled'})if d then return d end end local c,d,e,f,g=math.
random(1,255),math.random(1,255),math.random(1,255),gethui and gethui()or game:
GetService'CoreGui',Drawing.new'Line'g.Color=Color3.fromRGB(c,d,e)g.Transparency
=1-c/255 if f then for h,i in pairs(f:GetDescendants())do if i:IsA'Frame'and i.
BackgroundColor3==g.Color and i.BackgroundTransparency==g.Transparency then
return{status=500,message=
'Drawing library almost certainly depends on ScreenGui'}end end end local h,i=a.
b(){}if not h then return{status=501,message=`Alias not found: {i}`}end return{
status=200,message='Passed'}end end function a.K()local c=a.cache.K if not c
then c={c=b()}a.cache.K=c end return c.c end end do local b=function()return
function()if not Drawing or not Drawing.Fonts then return{status=400,message=
'Global not found'}end if not Drawing.Fonts.UI then return{status=500,message=
'UI font not found'}elseif not Drawing.Fonts.System then return{status=500,
message='System font not found'}elseif not Drawing.Fonts.Plex then return{status
=500,message='Plex font not found'}elseif not Drawing.Fonts.Monospace then
return{status=500,message='Monospace font not found'}elseif Drawing.Fonts.UI~=0
then return{status=500,message="UI font isn't ID 0"}elseif Drawing.Fonts.System
~=1 then return{status=500,message="System font isn't ID 1"}elseif Drawing.Fonts
.Plex~=2 then return{status=500,message="Plex font isn't ID 2"}elseif Drawing.
Fonts.Monospace~=3 then return{status=500,message="Monospace font isn't ID 3"}
end local b,c=a.b(){}if not b then return{status=501,message=`Alias not found: {
c}`}end return{status=200,message=`Passed`}end end function a.L()local c=a.cache
.L if not c then c={c=b()}a.cache.L=c end return c.c end end do local b=function
()return function()if not getrenderproperty then return{status=400,message=
'Global not found'}elseif not Drawing or not Drawing.new then return{status=401,
message='Drawing library needed to test this'}end local b=Drawing.new'Line'b.
Thickness=2 b.Visible=false local c,d=getrenderproperty(b,'Thickness'),
getrenderproperty(b,'Visible')if c~=2 or d~=false then return{status=500,message
='Property not found or mismatch'}end local e,f=a.b(){}if not e then return{
status=501,message=`Alias not found: {f}`}end return{status=200,message=`Passed`
}end end function a.M()local c=a.cache.M if not c then c={c=b()}a.cache.M=c end
return c.c end end do local b=function()return function()if not
setrenderproperty then return{status=400,message='Global not found'}elseif not
Drawing or not Drawing.new then return{status=401,message=
'Drawing library needed to test this'}end local b=Drawing.new'Line'
setrenderproperty(b,'Thickness',2)setrenderproperty(b,'Visible',false)if b.
Thickness~=2 or b.Visible~=false then return{status=500,message=
'Incorrect property value'}end local c,d=a.b(){}if not c then return{status=501,
message=`Alias not found: {d}`}end return{status=200,message=`Passed`}end end
function a.N()local c=a.cache.N if not c then c={c=b()}a.cache.N=c end return c.
c end end do local b=function()return function()if not cleardrawcache then
return{status=400,message='Global not found'}elseif not Drawing or not Drawing.
new then return{status=401,message='Drawing library needed to test this'}end
local b=Drawing.new'Line'b.Visible=false b.Thickness=2 task.defer(cleardrawcache
)task.wait(0.1)if b.__OBJECT_EXISTS then return{status=500,message=
'Drawing exists after draw clear'}end local c,d=a.b(){}if not c then return{
status=501,message=`Alias not found: {d}`}end return{status=200,message=`Passed`
}end end function a.O()local c=a.cache.O if not c then c={c=b()}a.cache.O=c end
return c.c end end do local b=function()return function()if not isrenderobj then
return{status=400,message='Global not found'}elseif not Drawing or not Drawing.
new then return{status=401,message='Drawing library needed to test this'}end
local b=Drawing.new'Line'b.Visible=false if not isrenderobj(b)then return{status
=500,message="Didn't return true for a render object"}elseif isrenderobj{}or
isrenderobj(game:GetService'Workspace')then return{status=500,message=
'Returned true for a non-render object'}end local c,d=a.b(){}if not c then
return{status=501,message=`Alias not found: {d}`}end return{status=200,message=`Passed`
}end end function a.P()local c=a.cache.P if not c then c={c=b()}a.cache.P=c end
return c.c end end do local b=function()return function()if not getgenv then
return{status=400,message='Global not found'}end getfenv().MYRI='Hello, World!'
getgenv().MYRI1='Hello, World!'getgenv().MYRI2=123456789 if getgenv().MYRI==
'Hello, World!'then return{status=500,message='getfenv affected getgenv'}end if
getgenv().MYRI1~='Hello, World!'then return{status=500,message=
'MYRI1 not found or unexpected value'}elseif getgenv().MYRI2~=123456789 then
return{status=500,message='MYRI2 not found or unexpected value'}end local b,c=a.
b(){}if not b then return{status=501,message=`Alias not found: {c}`}end return{
status=200,message=`Passed`}end end function a.Q()local c=a.cache.Q if not c
then c={c=b()}a.cache.Q=c end return c.c end end do local b=function()return
function()if not getrenv then return{status=400,message='Global not found'}end
getrenv().MYRIR1='Hello, World!'getrenv().MYRIR2=123456789 if getrenv().MYRIR1~=
'Hello, World!'then return{status=500,message=
'MYRIR1 not found or unexpected value'}elseif getrenv().MYRIR2~=123456789 then
return{status=500,message='MYRIR2 not found or unexpected value'}elseif getrenv(
).game~=game then return{status=500,message='game not found or unexpected value'
}elseif getrenv().print~=print then return{status=500,message=
'print not found or unexpected value'}elseif getrenv()._G==_G then return{status
=500,message="_G in roblox environment shouldn't match the executor's"}end local
b,c=a.b(){}if not b then return{status=501,message=`Alias not found: {c}`}end
return{status=200,message=`Passed`}end end function a.R()local c=a.cache.R if
not c then c={c=b()}a.cache.R=c end return c.c end end do local b=function()
return function()if not getgc then return{status=400,message='Global not found'}
end local b,c={},function()end task.wait(0.1)local d,e for f,g in pairs(getgc(
true))do if g==c then d=true elseif g==b then e=true end end if not d then
return{status=500,message='Original function not found'}elseif not e then return
{status=500,message='Original table not found'}end local f,g=a.b(){}if not f
then return{status=501,message=`Alias not found: {g}`}end return{status=200,
message=`Passed`}end end function a.S()local c=a.cache.S if not c then c={c=b()}
a.cache.S=c end return c.c end end do local b=function()return function()if not
filtergc then return{status=400,message='Global not found'}end local b='MYRIAD'
local c,d=function()return'MYRIAD',b end,setmetatable({MYRIAD='MYRI'},{__index=
function()end})do local e=d.MYRIAD c()end task.wait(0.1)local e,f=filtergc(
'function',{Constants={'MYRIAD'},Upvalues={'MYRIAD'},IgnoreExecutor=false},true)
,filtergc('table',{KeyValuePairs={MYRIAD='MYRI'},Metatable=getmetatable(d)},true
)if e~=c then return{status=500,message=
'filtergc failed to retrieve the original function'}elseif f~=d then return{
status=500,message='filtergc failed to retrieve the original table'}end local g,
h=a.b(){}if not g then return{status=501,message=`Alias not found: {h}`}end
return{status=200,message='Passed'}end end function a.T()local c=a.cache.T if
not c then c={c=b()}a.cache.T=c end return c.c end end do local b=function()
return function()if not getcustomasset then return{status=400,message=
'Global not found'}elseif not writefile then return{status=401,message=
"Dependency 'writefile' not found"}end local b=game:GetService'HttpService':
GenerateGUID(false):gsub('-','')writefile(b,'31kr6ji222uvn7zvz6ue5yfyn7ky')task.
wait(0.2)local c=getcustomasset(b)if not typeof(c)=='string'then return{status=
500,message='Asset is not of the expected type (string)'}elseif not c:match
'rbxasset://'then return{status=500,message=
"Asset string dosen't include a rbxasset prefix"}end delfile(b)local d,e=a.b(){}
if not d then return{status=501,message=`Alias not found: {e}`}end return{status
=200,message=`Passed`}end end function a.U()local c=a.cache.U if not c then c={c
=b()}a.cache.U=c end return c.c end end do local b=function()return function()if
not isfile then return{status=400,message='Global not found'}elseif not
writefile then return{status=401,message="Dependency 'writefile' not found"}
elseif not delfile then return{status=401,message=
"Dependency 'delfile' not found"}end local b,c,d,e=game:GetService'HttpService':
GenerateGUID(false):gsub('-',''),game:GetService'HttpService':GenerateGUID(false
):gsub('-',''),false,false writefile(b,'')writefile(c,'')task.wait(0.2)for f,g
in listfiles''do if g==b then d=true end if g==c then e=true end end if not d
and e then return{status=500,message="Didn't find the expected files"}end
delfile(b)delfile(c)local f,g=a.b(){}if not f then return{status=501,message=`Alias not found: {
g}`}end return{status=200,message=`Passed`}end end function a.V()local c=a.cache
.V if not c then c={c=b()}a.cache.V=c end return c.c end end do local b=function
()return function()if not loadfile then return{status=400,message=
'Global not found'}elseif not writefile then return{status=401,message=
"Dependency 'writefile' not found"}elseif not delfile then return{status=401,
message="Dependency 'delfile' not found"}end local b,c,d=math.random(1,100),math
.random(1,100),game:GetService'HttpService':GenerateGUID(false):gsub('-','')
writefile(d,[[return function(...) return select(1, ...) + select(2, ...) end]])
task.wait(0.2)local e=loadfile(d)if not e then return{status=500,message=
'Failed to load file'}end if e()(b,c)~=b+c then return{status=500,message=
'File did not return the expected value'}end delfile(d)local f,g=a.b(){}if not f
then return{status=501,message=`Alias not found: {g}`}end return{status=200,
message=`Passed`}end end function a.W()local c=a.cache.W if not c then c={c=b()}
a.cache.W=c end return c.c end end do local b=function()return function()if not
appendfile then return{status=400,message='Global not found'}elseif not
writefile then return{status=401,message="Dependency 'writefile' not found"}
elseif not readfile then return{status=401,message=
"Dependency 'readfile' not found"}elseif not delfile then return{status=401,
message="Dependency 'delfile' not found"}end local b=game:GetService
'HttpService':GenerateGUID(false):gsub('-','')writefile(b,'Hello, ')task.wait(
0.2)appendfile(b,'World!')task.wait(0.2)if readfile(b)~='Hello, World!'then
return{status=500,message='File did not read the expected value'}end delfile(b)
local c,d=a.b(){}if not c then return{status=501,message=`Alias not found: {d}`}
end return{status=200,message=`Passed`}end end function a.X()local c=a.cache.X
if not c then c={c=b()}a.cache.X=c end return c.c end end do local b=function()
return function()if not delfile then return{status=400,message=
'Global not found'}elseif not writefile then return{status=401,message=
"Dependency 'writefile' not found"}elseif not isfile then return{status=401,
message="Dependency 'isfile' not found"}end local b,c=pcall(writefile,
'test1.txt','Content')local d,e=pcall(writefile,'./test2.txt','Content')local f,
g=pcall(writefile,'C:/test3.txt','Content'),pcall(writefile,'../test4.txt',
'Content')if not b then return{status=0,message='Failed to write @ test1.txt: '
..c}elseif not d then return{status=0,message='Failed to write @ ./test2.txt: '
..e}elseif f then return{status=500,message=
"Didn't fail to write in illegal location: @ C:/test3.txt"}elseif g then return{
status=500,message="Didn't fail to write in illegal location: @ ../test4.txt"}
elseif not isfile'test1.txt'then return{status=500,message=
"Didn't find: test1.txt"}elseif not isfile'./test2.txt'then return{status=500,
message="Didn't find: ./test2.txt"}end delfile'test1.txt'delfile'./test2.txt'
task.wait(0.2)if isfile'test1.txt'then return{status=500,message=
'Found: test1.txt'}elseif isfile'./test2.txt'then return{status=500,message=
'Found: ./test2.txt'}end local h,i=a.b(){}if not h then return{status=501,
message=`Alias not found: {i}`}end return{status=200,message=`Passed`}end end
function a.Y()local c=a.cache.Y if not c then c={c=b()}a.cache.Y=c end return c.
c end end do local b=function()return function()if not delfolder then return{
status=400,message='Global not found'}elseif not makefolder then return{status=
401,message="Dependency 'makefolder' not found"}elseif not isfolder then return{
status=401,message="Dependency 'isfolder' not found"}end local b=game:GetService
'HttpService':GenerateGUID(false):gsub('-','')if isfolder(b)then return{status=
500,message=`Nonexistent file returned true`}end makefolder(b)task.wait(0.2)if
not isfolder(b)then return{status=500,message=`Existing file returned false`}end
delfolder(b)task.wait(0.2)if isfolder(b)then return{status=500,message=`Nonexistent file returned true`
}end local c,d=a.b(){}if not c then return{status=501,message=`Alias not found: {
d}`}end return{status=200,message=`Passed`}end end function a.Z()local c=a.cache
.Z if not c then c={c=b()}a.cache.Z=c end return c.c end end do local b=function
()return function()if not isfile then return{status=400,message=
'Global not found'}elseif not writefile then return{status=401,message=
"Dependency 'writefile' not found"}elseif not delfile then return{status=401,
message="Dependency 'delfile' not found"}end local b=game:GetService
'HttpService':GenerateGUID(false):gsub('-','')if isfile(b)then return{status=500
,message=`Nonexistent file returned true`}end writefile(b,'')task.wait(0.2)if
not isfile(b)then return{status=500,message=`Existing file returned false`}end
delfile(b)local c,d=a.b(){}if not c then return{status=501,message=`Alias not found: {
d}`}end return{status=200,message=`Passed`}end end function a._()local c=a.cache
._ if not c then c={c=b()}a.cache._=c end return c.c end end do local b=function
()return function()if not isfolder then return{status=400,message=
'Global not found'}elseif not makefolder then return{status=401,message=
"Dependency 'makefolder' not found"}elseif not delfolder then return{status=401,
message="Dependency 'delfolder' not found"}end local b=game:GetService
'HttpService':GenerateGUID(false):gsub('-','')if isfolder(b)then return{status=
500,message=`Nonexistent folder returned true`}end makefolder(b)task.wait(0.2)if
not isfolder(b)then return{status=500,message=`Existing folder returned false`}
end delfolder(b)local c,d=a.b(){}if not c then return{status=501,message=`Alias not found: {
d}`}end return{status=200,message=`Passed`}end end function a.aa()local c=a.
cache.aa if not c then c={c=b()}a.cache.aa=c end return c.c end end do local b=
function()return function()if not writefile then return{status=400,message=
'Global not found'}elseif not delfile then return{status=401,message=
"Dependency 'delfile' not found"}elseif not readfile then return{status=401,
message="Dependency 'readfile' not found"}end local b,c=pcall(writefile,
'test1.txt','Content')local d,e=pcall(writefile,'./test2.txt','Content')local f,
g=pcall(writefile,'C:/test3.txt','Content'),pcall(writefile,'../test4.txt',
'Content')if not b then return{status=0,message='Failed to write @ test1.txt: '
..c}elseif not d then return{status=0,message='Failed to write @ ./test2.txt: '
..e}elseif f then return{status=500,message=
"Didn't fail to write in illegal location: @ C:/test3.txt"}elseif g then return{
status=500,message="Didn't fail to write in illegal location: @ ../test4.txt"}
elseif readfile'test1.txt'~='Content'then return{status=500,message=
"File didn't give expected contnet"}elseif readfile'test2.txt'~='Content'then
return{status=500,message="File didn't give expected contnet"}end delfile
'test1.txt'delfile'./test2.txt'local h,i=a.b(){}if not h then return{status=501,
message=`Alias not found: {i}`}end return{status=200,message=`Passed`}end end
function a.ab()local c=a.cache.ab if not c then c={c=b()}a.cache.ab=c end return
c.c end end do local b=function()return function()if not readfile then return{
status=400,message='Global not found'}elseif not delfile then return{status=401,
message="Dependency 'delfile' not found"}elseif not writefile then return{status
=401,message="Dependency 'writefile' not found"}end local b,c=pcall(writefile,
'test1.txt','Content')if not b then return{status=0,message=
'Failed to write @ test1.txt: '..c}elseif readfile'test1.txt'~='Content'then
return{status=500,message="File didn't return the expected content"}end delfile
'test1.txt'local d,e=a.b(){}if not d then return{status=501,message=`Alias not found: {
e}`}end return{status=200,message=`Passed`}end end function a.ac()local c=a.
cache.ac if not c then c={c=b()}a.cache.ac=c end return c.c end end do local b=
function()return function()if not makefolder then return{status=400,message=
'Global not found'}elseif not delfolder then return{status=401,message=
"Dependency 'delfolder' not found"}end local b,c=pcall(makefolder,'test1')local
d,e=pcall(makefolder,'./test2')local f,g=pcall(makefolder,'C:/test3'),pcall(
makefolder,'../test4')if not b then return{status=0,message=
'Failed to make @ test1: '..c}elseif not d then return{status=0,message=
'Failed to make @ ./test2: '..e}elseif f then return{status=500,message=
"Didn't fail to make in illegal location: @ C:/test3"}elseif g then return{
status=500,message="Didn't fail to make in illegal location: @ ../test4"}end
delfolder'test1'delfolder'./test2'local h,i=a.b(){}if not h then return{status=
501,message=`Alias not found: {i}`}end return{status=200,message=`Passed`}end
end function a.ad()local c=a.cache.ad if not c then c={c=b()}a.cache.ad=c end
return c.c end end do local b=function()return function()if not isrbxactive then
return{status=400,message='Global not found'}end local b,c=a.b(){
'iswindowactive','isgameactive'}if not b then return{status=501,message=`Alias not found: {
c}`}end return{status=200,message=`Passed`}end end function a.ae()local c=a.
cache.ae if not c then c={c=b()}a.cache.ae=c end return c.c end end do local b=
function()return function()if not keypress then return{status=400,message=
'Global not found'}end local b,c=a.b(){}if not b then return{status=501,message=
`Alias not found: {c}`}end return{status=200,message=`Passed`}end end function a
.af()local c=a.cache.af if not c then c={c=b()}a.cache.af=c end return c.c end
end do local b=function()return function()if not keyrelease then return{status=
400,message='Global not found'}end local b,c=a.b(){}if not b then return{status=
501,message=`Alias not found: {c}`}end return{status=200,message=`Passed`}end
end function a.ag()local c=a.cache.ag if not c then c={c=b()}a.cache.ag=c end
return c.c end end do local b=function()return function()if not keytap then
return{status=400,message='Global not found'}end local b,c=a.b(){'keyclick'}if
not b then return{status=501,message=`Alias not found: {c}`}end return{status=
200,message=`Passed`}end end function a.ah()local c=a.cache.ah if not c then c={
c=b()}a.cache.ah=c end return c.c end end do local b=function()return function()
if not mouse1click then return{status=400,message='Global not found'}end local b
,c=a.b(){}if not b then return{status=501,message=`Alias not found: {c}`}end
return{status=200,message=`Passed`}end end function a.ai()local c=a.cache.ai if
not c then c={c=b()}a.cache.ai=c end return c.c end end do local b=function()
return function()if not mouse1press then return{status=400,message=
'Global not found'}end local b,c=a.b(){}if not b then return{status=501,message=
`Alias not found: {c}`}end return{status=200,message=`Passed`}end end function a
.aj()local c=a.cache.aj if not c then c={c=b()}a.cache.aj=c end return c.c end
end do local b=function()return function()if not mouse1release then return{
status=400,message='Global not found'}end local b,c=a.b(){}if not b then return{
status=501,message=`Alias not found: {c}`}end return{status=200,message=`Passed`
}end end function a.ak()local c=a.cache.ak if not c then c={c=b()}a.cache.ak=c
end return c.c end end do local b=function()return function()if not mouse2click
then return{status=400,message='Global not found'}end local b,c=a.b(){}if not b
then return{status=501,message=`Alias not found: {c}`}end return{status=200,
message=`Passed`}end end function a.al()local c=a.cache.al if not c then c={c=b(
)}a.cache.al=c end return c.c end end do local b=function()return function()if
not mouse2press then return{status=400,message='Global not found'}end local b,c=
a.b(){}if not b then return{status=501,message=`Alias not found: {c}`}end return
{status=200,message=`Passed`}end end function a.am()local c=a.cache.am if not c
then c={c=b()}a.cache.am=c end return c.c end end do local b=function()return
function()if not mouse2release then return{status=400,message='Global not found'
}end local b,c=a.b(){}if not b then return{status=501,message=`Alias not found: {
c}`}end return{status=200,message=`Passed`}end end function a.an()local c=a.
cache.an if not c then c={c=b()}a.cache.an=c end return c.c end end do local b=
function()return function()if not mousemoveabs then return{status=400,message=
'Global not found'}end local b,c=a.b(){}if not b then return{status=501,message=
`Alias not found: {c}`}end return{status=200,message=`Passed`}end end function a
.ao()local c=a.cache.ao if not c then c={c=b()}a.cache.ao=c end return c.c end
end do local b=function()return function()if not mousemoverel then return{status
=400,message='Global not found'}end local b,c=a.b(){}if not b then return{status
=501,message=`Alias not found: {c}`}end return{status=200,message=`Passed`}end
end function a.ap()local c=a.cache.ap if not c then c={c=b()}a.cache.ap=c end
return c.c end end do local b=function()return function()if not mousescroll then
return{status=400,message='Global not found'}end local b,c=a.b(){}if not b then
return{status=501,message=`Alias not found: {c}`}end return{status=200,message=`Passed`
}end end function a.aq()local c=a.cache.aq if not c then c={c=b()}a.cache.aq=c
end return c.c end end do local b=function()return function()if not setclipboard
then return{status=400,message='Global not found'}end local b,c=a.b(){
'toclipboard'}if not b then return{status=501,message=`Alias not found: {c}`}end
return{status=200,message=`Passed`}end end function a.ar()local c=a.cache.ar if
not c then c={c=b()}a.cache.ar=c end return c.c end end do local b=function()
return function()if not setrbxclipboard then return{status=400,message=
'Global not found'}end local b,c=a.b(){}if not b then return{status=501,message=
`Alias not found: {c}`}end return{status=200,message=`Passed`}end end function a
.as()local c=a.cache.as if not c then c={c=b()}a.cache.as=c end return c.c end
end do local b=function()return function()if not gethui then return{status=400,
message='Global not found'}end local b=gethui()if not(b:IsA'ScreenGui'or b:IsA
'BasePlayerGui'or b:IsA'Folder')then return{status=500,message=
'Container is not a ScreenGui, BasePlayerGui, or Folder'}end if b==game:
GetService'CoreGui'then return{status=500,message=
'Container cannot be an uncloned reference to CoreGui'}end local c,d=a.b(){
'get_hidden_gui'}if not c then return{status=501,message=`Alias not found: {d}`}
end return{status=200,message=`Passed`}end end function a.at()local c=a.cache.at
if not c then c={c=b()}a.cache.at=c end return c.c end end do local b=function()
return function()if not cloneref then return{status=400,message=
'Global not found'}end local b,c=Instance.new'Part',game:GetService'CoreGui'if
cloneref(b)==b then return{status=500,message=`Cloned part cannot be equal to original reference`
}elseif cloneref(c)==c then return{status=500,message=`Cloned service cannot be equal to original reference`
}end local d,e=a.b(){'clonereference'}if not d then return{status=501,message=`Alias not found: {
e}`}end return{status=200,message=`Passed`}end end function a.au()local c=a.
cache.au if not c then c={c=b()}a.cache.au=c end return c.c end end do local b=
function()return function()if not compareinstances then return{status=400,
message='Global not found'}elseif not cloneref then return{status=401,message=
"'cloneref' needed to test this reliably"}end local b,c=Instance.new'Part',game:
GetService'CoreGui'if cloneref(b)==b then return{status=500,message=`(CR) Cloned part cannot be equal to original reference`
}elseif cloneref(c)==c then return{status=500,message=`(CR) Cloned service cannot be equal to original reference`
}elseif not compareinstances(game,game)then return{status=500,message=`Two equal instances (game, game) assumed unequal`
}elseif compareinstances(game,workspace)then return{status=500,message=`Two unequal instances (game, workspace) assumed equal`
}elseif not compareinstances(b,cloneref(b))then return{status=500,message=`Two equal instances (originalPart, clonedPart) assumed equal`
}elseif not compareinstances(c,cloneref(c))then return{status=500,message=`Two equal instances (originalService, clonedService) assumed equal`
}end local d,e=a.b(){}if not d then return{status=501,message=`Alias not found: {
e}`}end return{status=200,message=`Passed`}end end function a.av()local c=a.
cache.av if not c then c={c=b()}a.cache.av=c end return c.c end end do local b=
function()return function()if not getinstances then return{status=400,message=
'Global not found'}end local b,c,d,e=Instance.new'Part',false,Instance.new(
'Part',workspace),false d.Anchored=true d.Transparency=1 d.CanCollide=false d.
Position=Vector3.new(0,-100,0)for f,g in pairs(getinstances())do if g==b then c=
true elseif g==d then e=true elseif not g:IsA'Instance'then return{status=500,
message="Found a part that isn't an instance"}end end if not c then return{
status=500,message="Didn't find a part w/ a nil parent"}elseif not e then return
{status=500,message="Didn't find a part w/ a parent"}end local f,g=a.b(){}if not
f then return{status=501,message=`Alias not found: {g}`}end return{status=200,
message=`Passed`}end end function a.aw()local c=a.cache.aw if not c then c={c=b(
)}a.cache.aw=c end return c.c end end do local b=function()return function()if
not getnilinstances then return{status=400,message='Global not found'}end local
b,c,d,e,f=Instance.new'Part',false,Instance.new('Part',workspace),false,false d.
Anchored=true d.Transparency=1 d.CanCollide=false d.Position=Vector3.new(0,-100,
0)for g,h in pairs(getnilinstances())do if h==b then c=true elseif h==d then e=
true elseif h:IsDescendantOf(game)then f=true elseif not h:IsA'Instance'then
return{status=500,message="Found a part that isn't an instance"}end end if not c
then return{status=500,message="Didn't find a part w/ a nil parent"}elseif e or
f then return{status=500,message='Found a part w/ a parent'}end local g,h=a.b(){
}if not g then return{status=501,message=`Alias not found: {h}`}end return{
status=200,message=`Passed`}end end function a.ax()local c=a.cache.ax if not c
then c={c=b()}a.cache.ax=c end return c.c end end do local b=function()return
function()if not getinstances then return{status=400,message='Global not found'}
end local b,c,d,e,f,g=math.random(1,10),math.random(1,10),math.random(1,10),
Instance.new'BindableFunction',Instance.new'BindableFunction',Instance.new
'RemoteFunction'e.OnInvoke=function(h,i)return(h+i)^d end g.OnServerInvoke=
function()return d end local h,i,j=getcallbackvalue(e,'OnInvoke'),
getcallbackvalue(f,'OnInvoke'),getcallbackvalue(g,'OnServerInvoke')if not h then
return{status=500,message="Didn't return a callback value for a bindable"}elseif
i then return{status=500,message=
'Returned a callback value for a bindable with none'}elseif not j then return{
status=500,message='Returned a callback value for a remote with none'}elseif h(b
,c)~=(b+c)^d then return{status=500,message=
"Bindable's callback value didn't return the expected value"}elseif j(game.
Players.LocalPlayer)~=d then return{status=500,message=
"Remote's callback value didn't return the expected value"}end local k,l=a.b(){
'getcallbackmember'}if not k then return{status=501,message=`Alias not found: {l
}`}end return{status=200,message=`Passed`}end end function a.ay()local c=a.cache
.ay if not c then c={c=b()}a.cache.ay=c end return c.c end end do local b=
function()return function()if not fireclickdetector then return{status=400,
message='Global not found'}end local b=Instance.new('Part',workspace)local c=
Instance.new('ClickDetector',b)b.Anchored=true b.Transparency=1 b.CanCollide=
false b.Position=Vector3.new(0,-100,0)local d=function(d)c[d]:Connect(function(e
)if e~=game:GetService'Players'.LocalPlayer then return{status=500,message=
"Player passed wasn't the LocalPlayer"}end end)local e,f=fireclickdetector(c,0,d
)if not e then return{status=0,message=`Failed w/ error: {f}`}end return true
end local e,f,g,h=d'MouseClick',d'RightMouseClick',d'MouseHoverEnter',d
'MouseHoverLeave'game:GetService'RunService'.PostSimulation:Wait()if not e then
return{status=500,message='MouseClick event was not fired.'}end if not f then
return{status=500,message='RightMouseClick event was not fired.'}end if not g
then return{status=500,message='MouseHoverEnter event was not fired.'}end if not
h then return{status=500,message='MouseHoverLeave event was not fired.'}end
local i,j=a.b(){}if not i then return{status=501,message=`Alias not found: {j}`}
end return{status=200,message=`Passed`}end end function a.az()local c=a.cache.az
if not c then c={c=b()}a.cache.az=c end return c.c end end do local b=function()
return function()if not fireproximityprompt then return{status=400,message=
'Global not found'}end local b,c,d,e=false,game:GetService'Players'.LocalPlayer,
game:GetService'ProximityPromptService',Instance.new('Part',workspace)local f=
Instance.new('ProximityPrompt',e)e.Anchored=true e.Transparency=1 e.CanCollide=
false e.Position=Vector3.new(0,-100,0)f.HoldDuration=1 d.PromptButtonHoldBegan:
Connect(function(g)return{status=500,message=
'Proximity prompt was manually fired'}end)d.PromptButtonHoldEnded:Connect(
function(g)return{status=500,message='Proximity prompt was manually fired'}end)f
:GetPropertyChangedSignal'HoldDuration':Connect(function()return{status=500,
message='Modified HoldDuration'}end)f.Triggered:Connect(function(g)if g~=c then
return{status=500,message="Player passed wasn't the LocalPlayer"}end b=true end)
local g,h=pcall(fireproximityprompt,f)game:GetService'RunService'.PostSimulation
:Wait()if not g then return{status=0,message=`Failed w/ error: {h}`}elseif not b
then return{status=500,message=`Prompt was not triggered`}end local i,j=a.b(){}
if not i then return{status=501,message=`Alias not found: {j}`}end return{status
=200,message=`Passed`}end end function a.aA()local c=a.cache.aA if not c then c=
{c=b()}a.cache.aA=c end return c.c end end do local b=function()return function(
)if not firetouchinterest then return{status=400,message='Global not found'}end
local b,c,d,e=game.Players.LocalPlayer.Character.Head,false,false,Instance.new
'Part'e.Anchored=true e.Transparency=1 e.CanCollide=false e.Position=Vector3.
new(0,-100,0)e.Parent=workspace e.Touched:Connect(function(f)if f~=b then e:
Destroy()return{status=500,message=
"Touch part given wasn't the passed touch part"}end c=true end)e.TouchEnded:
Connect(function(f)if f~=b then e:Destroy()return{status=500,message=
"Touch part given wasn't the passed touch part"}end d=true end)
firetouchinterest(b,e,false)game:GetService'RunService'.PostSimulation:Wait()if
not c then return{status=500,message="Touched event wasn't fired"}end
firetouchinterest(b,e,true)game:GetService'RunService'.PostSimulation:Wait()if
not d then return{status=500,message="Touched event wasn't fired"}end e:Destroy(
)local f,g=a.b(){}if not f then return{status=501,message=`Alias not found: {g}`
}end return{status=200,message=`Passed`}end end function a.aB()local c=a.cache.
aB if not c then c={c=b()}a.cache.aB=c end return c.c end end do local b=
function()return function()if not saveinstance then return{status=400,message=
'Global not found'}elseif not listfiles then return{status=501,message=
"Dependant global 'listfiles' not found"}elseif not delfile then return{status=
501,message="Dependant global 'delfile' not found"}end local b,c=game:GetService
'HttpService':GenerateGUID(false):gsub('-',''),Instance.new'Part'saveinstance(c,
{FileName=b})task.wait(0.5)local d=false for e,f in pairs(listfiles'')do if f:
find(b)then d=true delfile(f)end end if not d then return{status=500,message=
[[Couldn't find saved part. Args passed: (Instance, { FileName = string })]]}end
local e,f=a.b(){}if not e then return{status=501,message=`Alias not found: {f}`}
end return{status=200,message=`Passed`}end end function a.aC()local c=a.cache.aC
if not c then c={c=b()}a.cache.aC=c end return c.c end end do local b=function()
return function()if not getrawmetatable then return{status=400,message=
'Global not found'}end local b=getrawmetatable(game)if typeof(b)~='table'then
return{status=500,message="Didn't return a table"}elseif b.__index(game,
'Workspace')~=game:GetService'Workspace'then return{status=500,message=
"Didn't give correct index for Workspace"}elseif b.__index(game,
'ReplicatedStorage')~=game:GetService'ReplicatedStorage'then return{status=500,
message="Didn't give correct index for ReplicatedStorage"}elseif b.__index(game,
'Stats')~=game:GetService'Stats'then return{status=500,message=
"Didn't give correct index for Stats"}end local c={__add='add',__sub='sub',__mul
='mul',__div='div',__mod='mod',__pow='pow',__unm='unm',__idiv='idiv',__band=
'band',__bor='bor',__bxor='bxor',__bnot='bnot',__shl='shl',__shr='shr',__concat=
'concat',__len='len',__eq='eq',__lt='lt',__le='le',__call='call'}for d,e in
pairs(c)do if b[d]then return{status=500,message=`Found {e} metamethod in the raw meta table`
}end end local d,e=a.b(){}if not d then return{status=501,message=`Alias not found: {
e}`}end return{status=200,message=`Passed`}end end function a.aD()local c=a.
cache.aD if not c then c={c=b()}a.cache.aD=c end return c.c end end do local b=
function()return function()if not setrawmetatable then return{status=400,message
='Global not found'}end local b=setmetatable({},{__index=function()return false
end,__metatable='Locked'})local c=setrawmetatable(b,{__index=function()return
true end})if not b then return{status=500,message='Original object not given'}
elseif b.MYRI~=true then return{status=500,message=
'Return function gave true, MYRI not found'}elseif not c then return{status=500,
message='Returned object not given'}end local d,e=a.b(){}if not d then return{
status=501,message=`Alias not found: {e}`}end return{status=200,message='Passed'
}end end function a.aE()local c=a.cache.aE if not c then c={c=b()}a.cache.aE=c
end return c.c end end do local b=function()return function()if not
hookmetamethod then return{status=400,message='Global not found'}end local b,c=
false c=hookmetamethod(game,'__namecall',function(...)b=true return c(...)end)
game:GetService'RunService'.Heartbeat:Wait()if not b then return{status=500,
message='Failed to hook __namecall metamethod'}end local d,e=a.b(){}if not d
then return{status=501,message=`Alias not found: {e}`}end return{status=200,
message='Passed'}end end function a.aF()local c=a.cache.aF if not c then c={c=b(
)}a.cache.aF=c end return c.c end end do local b=function()return function()if
not getnamecallmethod then return{status=400,message='Global not found'}elseif
not hookmetamethod then return{status=400,message='Global not found'}end local b
,c,d=Instance.new'Part',false d=hookmetamethod(b,'__namecall',function(...)if
not c then c=getnamecallmethod()end return d(...)end)b:Destroy()task.wait()if c
~='Destroy'then return{status=500,message="Didn't return the correct method"}end
local e,f=a.b(){}if not e then return{status=501,message=`Alias not found: {f}`}
end return{status=200,message='Passed'}end end function a.aG()local c=a.cache.aG
if not c then c={c=b()}a.cache.aG=c end return c.c end end do local b=function()
return function()if not setreadonly then return{status=400,message=
'Global not found'}end local b=table.freeze{MYRIAD='MYRI'}local c=pcall(function
()b.MYRIAD='MYRIAD'end)local d=pcall(function()setreadonly(b,false)b.MYRIAD=
'MYRIAD'end)local e,f=pcall(function()setreadonly(b,true)b.MYRIAD='MYRIAD'end)if
c then return{status=500,message='Frozen table writable (???): '..f}elseif not d
then return{status=500,message='Table unwritable after readonly was disabled: '
..f}elseif e then return{status=500,message=
'Table writable after readonly was enabled: '..f}end local g,h=a.b(){}if not g
then return{status=501,message=`Alias not found: {h}`}end return{status=200,
message=`Passed`}end end function a.aH()local c=a.cache.aH if not c then c={c=b(
)}a.cache.aH=c end return c.c end end do local b=function()return function()if
not makereadonly then return{status=400,message='Global not found'}end local b=
table.freeze{MYRIAD='MYRI'}local c=pcall(function()b.MYRIAD='MYRIAD'end)local d,
e=pcall(function()makereadonly(b)b.MYRIAD='MYRIAD'end)if c then return{status=
500,message='Frozen table writable (???): '..e}elseif d then return{status=500,
message='Table unwritable after readonly was disabled: '..e}end local f,g=a.b(){
}if not f then return{status=501,message=`Alias not found: {g}`}end return{
status=200,message=`Passed`}end end function a.aI()local c=a.cache.aI if not c
then c={c=b()}a.cache.aI=c end return c.c end end do local b=function()return
function()if not isreadonly then return{status=400,message='Global not found'}
end local b={}if isreadonly(b)then return{status=500,message=
'Writable table is assumed read-only'}end table.freeze(b)if not isreadonly(b)
then return{status=500,message=
'Table assumed writable after being set as read-only'}end local c,d=a.b(){}if
not c then return{status=501,message=`Alias not found: {d}`}end return{status=
200,message=`Passed`}end end function a.aJ()local c=a.cache.aJ if not c then c={
c=b()}a.cache.aJ=c end return c.c end end do local b=function()return function()
if not identifyexecutor then return{status=400,message='Global not found'}end
local b,c=identifyexecutor()if not b or not c then return{status=500,message=`Did not return expected data (executor, version)`
}elseif type(b)~='string'or type(c)~='string'then return{status=500,message=`Expected [string, string] got [{
b}, {c}]`}end local d,e=a.b(){'getexecutorname'}if not d then return{status=501,
message=`Alias not found: {e}`}end return{status=200,message=`Passed ({b}, {c})`
}end end function a.aK()local c=a.cache.aK if not c then c={c=b()}a.cache.aK=c
end return c.c end end do local b=function()return function()if not setfpscap
then return{status=400,message='Global not found'}end local b=game:GetService
'RunService'.RenderStepped local c=function()b:Wait()local c=0 for d=1,10 do c+=
1/b:Wait()end return math.round(c/10)end setfpscap(60)local d=c()setfpscap(0)
local e,f,g=c(),a.b(){}if not f then return{status=501,message=`Alias not found: {
g}`}end return{status=200,message=`Passed (60: {d}, 0: {e})`}end end function a.
aL()local c=a.cache.aL if not c then c={c=b()}a.cache.aL=c end return c.c end
end do local b=function()return function()if not getfpscap then return{status=
400,message='Global not found'}end if typeof(getfpscap())~='number'then return{
status=500,message=`Did not return a number`}end local b,c=a.b(){}if not b then
return{status=501,message=`Alias not found: {c}`}end return{status=200,message=`Passed`
}end end function a.aM()local c=a.cache.aM if not c then c={c=b()}a.cache.aM=c
end return c.c end end do local b=function()return function()if not request then
return{status=400,message='Global not found'}end local b=request{Url=
'https://httpbin.org/user-agent',Method='GET'}if typeof(b)~='table'then return{
status=500,message="Reponse wasn't a table"}elseif b.StatusCode~=200 then return
{status=500,message="Didn't give status 200 (is httpbin.org down?)"}end local c=
game:GetService'HttpService':JSONDecode(b.Body)if type(c)~='table'and type(c[
'user-agent'])~='string'then return{status=500,message=
"Didn't give a table w/ user-agent string"}end local d,e=a.b(){'http.request',
'http_request'}if not d then return{status=501,message=`Alias not found: {e}`}
end return{status=200,message=`Passed ({c['user-agent']})`}end end function a.aN
()local c=a.cache.aN if not c then c={c=b()}a.cache.aN=c end return c.c end end
do local b=function()return function()local b=a.r()if not lz4compress then
return{status=400,message='Global not found'}end local c,d='MYRIAD',b.
base64decode'YE1ZUklBRA=='local e=lz4compress(c)if typeof(e)~='string'then
return{status=500,message='Did not return the expected type'}elseif e~=d then
return{status=500,message="Compressed data doesn't match reference data"}end
local f,g=a.b(){'crypt.lz4compress'}if not f then return{status=501,message=`Alias not found: {
g}`}end return{status=200,message='Passed'}end end function a.aO()local c=a.
cache.aO if not c then c={c=b()}a.cache.aO=c end return c.c end end do local b=
function()return function()local b=a.r()if not lz4decompress then return{status=
400,message='Global not found'}end local c,d='MYRIAD',b.base64decode
'YE1ZUklBRA=='local e=lz4decompress(d,#c)if typeof(e)~='string'then return{
status=500,message='Did not return the expected type'}elseif e~=c then return{
status=500,message="Compressed data doesn't match reference data"}end local f,g=
a.b(){'crypt.lz4decompress'}if not f then return{status=501,message=`Alias not found: {
g}`}end return{status=200,message='Passed'}end end function a.aP()local c=a.
cache.aP if not c then c={c=b()}a.cache.aP=c end return c.c end end do local b=
function()return function()if not getfpscap then return{status=400,message=
'Global not found'}end local b,c=a.b(){'queueonteleport'}if not b then return{
status=501,message=`Alias not found: {c}`}end return{status=200,message=`Passed`
}end end function a.aQ()local c=a.cache.aQ if not c then c={c=b()}a.cache.aQ=c
end return c.c end end do local b=function()return function()if not messagebox
then return{status=400,message='Global not found'}end local b,c=a.b(){}if not b
then return{status=501,message=`Alias not found: {c}`}end return{status=200,
message=`Passed`}end end function a.aR()local c=a.cache.aR if not c then c={c=b(
)}a.cache.aR=c end return c.c end end do local b=function()return function()if
not rconsoleprint then return{status=400,message='Global not found'}end local b,
c=a.b(){}if not b then return{status=501,message=`Alias not found: {c}`}end
return{status=200,message=`Passed`}end end function a.aS()local c=a.cache.aS if
not c then c={c=b()}a.cache.aS=c end return c.c end end do local b=function()
return function()if not rconsoleinfo then return{status=400,message=
'Global not found'}end local b,c=a.b(){}if not b then return{status=501,message=
`Alias not found: {c}`}end return{status=200,message=`Passed`}end end function a
.aT()local c=a.cache.aT if not c then c={c=b()}a.cache.aT=c end return c.c end
end do local b=function()return function()if not rconsolewarn then return{status
=400,message='Global not found'}end local b,c=a.b(){}if not b then return{status
=501,message=`Alias not found: {c}`}end return{status=200,message=`Passed`}end
end function a.aU()local c=a.cache.aU if not c then c={c=b()}a.cache.aU=c end
return c.c end end do local b=function()return function()if not rconsoleerr then
return{status=400,message='Global not found'}end local b,c=a.b(){}if not b then
return{status=501,message=`Alias not found: {c}`}end return{status=200,message=`Passed`
}end end function a.aV()local c=a.cache.aV if not c then c={c=b()}a.cache.aV=c
end return c.c end end do local b=function()return function()if not
rconsoleinput then return{status=400,message='Global not found'}end local b,c=a.
b(){}if not b then return{status=501,message=`Alias not found: {c}`}end return{
status=200,message=`Passed`}end end function a.aW()local c=a.cache.aW if not c
then c={c=b()}a.cache.aW=c end return c.c end end do local b=function()return
function()if not rconsoleclear then return{status=400,message='Global not found'
}end local b,c=a.b(){}if not b then return{status=501,message=`Alias not found: {
c}`}end return{status=200,message=`Passed`}end end function a.aX()local c=a.
cache.aX if not c then c={c=b()}a.cache.aX=c end return c.c end end do local b=
function()return function()if not rconsolename then return{status=400,message=
'Global not found'}end local b,c=a.b(){}if not b then return{status=501,message=
`Alias not found: {c}`}end return{status=200,message=`Passed`}end end function a
.aY()local c=a.cache.aY if not c then c={c=b()}a.cache.aY=c end return c.c end
end do local b=function()return function()if not rconsolehide then return{status
=400,message='Global not found'}end local b,c=a.b(){}if not b then return{status
=501,message=`Alias not found: {c}`}end return{status=200,message=`Passed`}end
end function a.aZ()local c=a.cache.aZ if not c then c={c=b()}a.cache.aZ=c end
return c.c end end do local b=function()return function()if not rconsoleshow
then return{status=400,message='Global not found'}end local b,c=a.b(){}if not b
then return{status=501,message=`Alias not found: {c}`}end return{status=200,
message=`Passed`}end end function a.a_()local c=a.cache.a_ if not c then c={c=b(
)}a.cache.a_=c end return c.c end end do local b=function()return function()if
not sethiddenproperty then return{status=400,message='Global not found'}elseif
not gethiddenproperty then return{status=401,message=
"Dependant global 'gethiddenproperty' not found"}end local b=Instance.new'Part'
gethiddenproperty(b,'shape')sethiddenproperty(b,'shape',Enum.PartType.
CornerWedge)if not gethiddenproperty(b,'shape')==Enum.PartType.CornerWedge then
return{status=500,message="Hidden property's value was incorrectly set"}end
local c,d=a.b(){}if not c then return{status=501,message=`Alias not found: {d}`}
end return{status=200,message=`Passed`}end end function a.a0()local c=a.cache.a0
if not c then c={c=b()}a.cache.a0=c end return c.c end end do local b=function()
return function()if not gethiddenproperty then return{status=400,message=
'Global not found'}end local b=Instance.new'Part'local c,d=gethiddenproperty(b,
'Name')local e,f=gethiddenproperty(b,'PropertyStatusStudio')local g,h=task.
spawn(pcall,gethiddenproperty,b,'siz')if d then return{status=500,message=
'Non-hidden property assumed hidden'}elseif c~='Part'then return{status=500,
message=
[[Non-hidden property value incorrect, ensure you still return values for non-hidden properties.]]
}elseif not f then return{status=500,message=
'Hidden property assumed non-hidden'}elseif e~=Enum.PropertyStatus.Ok then
return{status=500,message='Hidden property value incorrect'}elseif not g then
return{status=500,message=
[[Should not have errored accessing a writeonly hidden property.]]}elseif h then
return{status=500,message=
[[Should have passed nil while attempting to access a writeonly hidden property.]]
}end local i,j=a.b(){}if not i then return{status=501,message=`Alias not found: {
j}`}end return{status=200,message=`Passed`}end end function a.a1()local c=a.
cache.a1 if not c then c={c=b()}a.cache.a1=c end return c.c end end do local b=
function()return function()if not setthreadidentity then return{status=400,
message='Global not found'}end local b,c=a.b(){'setidentity','setthreadcontext'}
if not b then return{status=501,message=`Alias not found: {c}`}end return{status
=200,message=`Passed`}end end function a.a2()local c=a.cache.a2 if not c then c=
{c=b()}a.cache.a2=c end return c.c end end do local b=function()return function(
)if not getthreadidentity then return{status=400,message='Global not found'}end
if typeof(getthreadidentity())~='number'then return{status=500,message=
'Did not return a number'}end local b,c=a.b(){'getidentity','getthreadcontext'}
if not b then return{status=501,message=`Alias not found: {c}`}end return{status
=200,message=`Passed`}end end function a.a3()local c=a.cache.a3 if not c then c=
{c=b()}a.cache.a3=c end return c.c end end do local b=function()return function(
)if not setscriptable then return{status=400,message='Global not found'}end
local b=Instance.new'Part'if pcall(function()local c=b.MaterialVariantSerialized
end)then return{status=500,message='Unaccessible property accessible'}end
setscriptable(b,'MaterialVariantSerialized',true)if not pcall(function()local c=
b.MaterialVariantSerialized end)then return{status=500,message=
[[MaterialVariantSerialized inaccessible after being set as scriptable]]}end
setscriptable(b,'MaterialVariantSerialized',false)if pcall(function()local c=b.
MaterialVariantSerialized end)then return{status=500,message=
[[MaterialVariantSerialized accessible after being set as unscriptable]]}end
local c,d=a.b(){}if not c then return{status=501,message=`Alias not found: {d}`}
end return{status=200,message=`Passed`}end end function a.a4()local c=a.cache.a4
if not c then c={c=b()}a.cache.a4=c end return c.c end end do local b=function()
return function()if not isscriptable then return{status=400,message=
'Global not found'}end local b=Instance.new'Part'if not isscriptable(b,'Name')
then return{status=500,message="Accessible property 'Name' assumed inaccessible"
}elseif isscriptable(b,'MaterialVariantSerialized')then return{status=500,
message=[[Inaccessible property 'MaterialVariantSerialized' assumed accessible]]
}end local c,d=a.b(){}if not c then return{status=501,message=`Alias not found: {
d}`}end return{status=200,message=`Passed`}end end function a.a5()local c=a.
cache.a5 if not c then c={c=b()}a.cache.a5=c end return c.c end end do local b=
function()return function()if not getscripts then return{status=400,message=
'Global not found'}end local b,c,d,e=Instance.new'LocalScript',Instance.new
'ModuleScript',Instance.new'Script',Instance.new'Script'e.RunContext=Enum.
RunContext.Client local f=getscripts()if not table.find(f,b)then return{status=
500,message='LocalScript not found in returned table'}elseif not table.find(f,c)
then return{status=500,message='ModuleScript not found in returned table'}elseif
not table.find(f,e)then return{status=500,message=
[[ServerScript w/ client runcontext not found in returned table]]}elseif table.
find(f,d)then return{status=500,message='ServerScript found in returned table'}
end local g,h=a.b(){}if not g then return{status=501,message=`Alias not found: {
h}`}end return{status=200,message=`Passed`}end end function a.a6()local c=a.
cache.a6 if not c then c={c=b()}a.cache.a6=c end return c.c end end do local b=
function()return function()if not getrunningscripts then return{status=400,
message='Global not found'}end local b,c,d,e,f,g,h,i=game.Players.LocalPlayer.
Character:FindFirstChild'Animate',game.Players.LocalPlayer.Character:
FindFirstChild'whysoud',game.Players.LocalPlayer.Character:FindFirstChild
'whysodtc',game.Players.LocalPlayer.Character:FindFirstChild'maybeisdtc',
Instance.new'LocalScript',Instance.new'ModuleScript',Instance.new'Script',
Instance.new'Script'i.RunContext=Enum.RunContext.Client local j=
getrunningscripts()if table.find(j,f)then return{status=500,message=
'LocalScript found in returned table'}elseif table.find(j,g)then return{status=
500,message='ModuleScript found in returned table'}elseif table.find(j,i)then
return{status=500,message=
'ServerScript w/ client runcontext found in returned table'}elseif table.find(j,
h)then return{status=500,message='ServerScript found in returned table'}elseif
table.find(j,d)then return{status=500,message=
'Disabled script found in returned table'}elseif table.find(j,e)then return{
status=500,message='Non-running script found in returned table'}elseif not table
.find(j,b)or not table.find(j,c)then return{status=500,message=
"Didn't find a running script in the returned table"}end local k,l=a.b(){}if not
k then return{status=501,message=`Alias not found: {l}`}end return{status=200,
message=`Passed`}end end function a.a7()local c=a.cache.a7 if not c then c={c=b(
)}a.cache.a7=c end return c.c end end do local b=function()return function()if
not getcallingscript then return{status=400,message='Global not found'}elseif
not checkcaller then return{status=401,message=
"Dependency 'checkcaller' not found"}elseif not hookmetamethod then return{
status=401,message="Dependency 'hookmetamethod' not found"}end local b b=
hookmetamethod(game,'__index',function(c,d)if not checkcaller()then
getcallingscript()hookmetamethod(game,'__index',b)end return b(c,d)end)if
getcallingscript()then return{status=500,message=
'Executor call assumed to be a game call'}end local c,d=a.b(){}if not c then
return{status=501,message=`Alias not found: {d}`}end return{status=200,message=`Passed`
}end end function a.a8()local c=a.cache.a8 if not c then c={c=b()}a.cache.a8=c
end return c.c end end do local b=function()return function()local b,c=pcall(
function()return game:GetService'StarterPlayer'.StarterPlayerScripts.
PlayerModule end)if not getloadedmodules then return{status=400,message=
'Global not found'}elseif not b then return{status=401,message=
"Testing dependency 'PlayerModule' not found."}end local d,e,f=require(c),
Instance.new'ModuleScript',getloadedmodules()if not table.find(f,c)then return{
status=500,message='Loaded module not found in returned table'}elseif table.
find(f,e)then return{status=500,message=
'Unloaded module found in returned table'}end local g,h=a.b(){}if not g then
return{status=501,message=`Alias not found: {h}`}end return{status=200,message=`Passed`
}end end function a.a9()local c=a.cache.a9 if not c then c={c=b()}a.cache.a9=c
end return c.c end end do local b=function()return function()local b,c=pcall(
function()return game.Players.LocalPlayer.Character.Animate end)if not
getloadedmodules then return{status=400,message='Global not found'}elseif not b
then return{status=401,message="Testing dependency 'Animate' not found."}end
local d=getsenv(c)if not d.onSwimming or not typeof(d.onSwimming)=='function'
then return{status=500,message=
[[Global in test script wasn't found, or didn't return the right type]]}end
local e,f=a.b(){}if not e then return{status=501,message=`Alias not found: {f}`}
end return{status=200,message=`Passed`}end end function a.ba()local c=a.cache.ba
if not c then c={c=b()}a.cache.ba=c end return c.c end end do local b=function()
return function()local b,c=pcall(function()return game.Players.LocalPlayer.
Character.Animate end)if not getscripthash then return{status=400,message=
'Global not found'}elseif not b then return{status=401,message=
"Testing dependency 'Animate' not found."}end local d,e,f=Instance.new
'LocalScript',pcall(function()return getscripthash(c)end)local g=pcall(function(
)return getscripthash(d)end)if not e then return{status=500,message=
"Failed to get bytecode of 'Animate': "..f}elseif not g then return{status=500,
message=
[[Failed to get script w/ no bytecode. Errored instead of returning nil.]]}
elseif typeof(f)~='string'then return{status=500,message=
'Did not return a hash string'}elseif hashNoBytecode~=nil then return{status=500
,message='A script with no bytecode returned non-nil data'}end local h,i=c:
Clone(),c.Source c.Source='return 1'local j=getscripthash(c)if f==j then return{
status=500,message='Gave the same hash for a modified script'}end c.Source=i
local k,l=a.b(){}if not k then return{status=501,message=`Alias not found: {l}`}
end return{status=200,message=`Passed`}end end function a.bb()local c=a.cache.bb
if not c then c={c=b()}a.cache.bb=c end return c.c end end do local b=function()
return function()if not loadstring then return{status=400,message=
'Global not found'}end local b=loadstring('MYRIAD','MYRIAD')loadstring
'\r\n\t\tglobalVar = {"Hello", "World"}\r\n\t'()if not globalVar or not(
globalVar[1]=='Hello'and globalVar[2]=='World')then return{status=500,message=
'Global variable insert from loadstring not found'}elseif b~=nil then return{
status=500,message="Didn't error on incomplete expression"}end local c,d=a.b(){}
if not c then return{status=501,message=`Alias not found: {d}`}end return{status
=200,message=`Passed`}end end function a.bc()local c=a.cache.bc if not c then c=
{c=b()}a.cache.bc=c end return c.c end end do local b=function()return function(
)a.r()if not getrunningscripts then return{status=400,message='Global not found'
}end local b=game.Players.LocalPlayer.Character:FindFirstChild'whysoud'local c,d
=getscriptbytecode(b),{'sigma','task','wait',
[[GOT A DROP ON THIS FLEXING FELLA<MYRIAD_UD_MAX_UD_NEVER_SPEAK_TO_ME_AGAIN_KING_VON_IS_A_SAINT]]
,'tostring'}for e,f in pairs(d)do if not c:find(f)then return{status=500,message
="Didn't find an expected segment in the bytecode"}end end local e,f=a.b(){
'dumpstring'}if not e then return{status=501,message=`Alias not found: {f}`}end
return{status=200,message=`Passed`}end end function a.bd()local c=a.cache.bd if
not c then c={c=b()}a.cache.bd=c end return c.c end end do local b=function()
return function()a.r()if not getscriptclosure then return{status=400,message=
'Global not found'}end local b=game.Players.LocalPlayer.Character:FindFirstChild
'maybeisdtc'local c=getscriptclosure(b)if typeof(c)~='function'then return{
status=500,message='Expected a closure'}elseif c()~=
'GOT A DROP ON THIS FLEXING FELLA'then return{status=500,message=
'Closure did not return the expected value'}end local d,e=a.b(){
'getscriptfunction'}if not d then return{status=501,message=`Alias not found: {e
}`}end return{status=200,message=`Passed`}end end function a.be()local c=a.cache
.be if not c then c={c=b()}a.cache.be=c end return c.c end end do local b=
function()return function()local b,c=pcall(function()return game.ReplicatedFirst
.decompmeplssss end)if not decompile then return{status=400,message=
'Global not found'}elseif not b then return{status=401,message=
[[Testing dependency 'ReplicatedFirst.decompmeplssss' not found.]]}end local d,e
=function(d,e)local f={}for g,h in ipairs(e)do if not d:find(h,1,true)then table
.insert(f,h)end end if#f>0 then return false,f end return true end,decompile(c)
if typeof(e)~='string'then return{status=500,message=
"Decompiled script isn't a string"}elseif#e<=0 then return{status=500,message=
"Decompiled script didn't return anything"}end local f,g=d(e,{'truthy','falsey',
'123','456','TableWeirdness','func','inline-fn','loopFn','nil-check',
'true-check','fallback','setmetatable','__index','secret','found','MethodStyle'}
)if not f then return{status=500,message=
'Decompiled script missing expected strings: '..table.concat(g,', ')}end local h
,i=a.b(){}if not h then return{status=501,message=`Alias not found: {i}`}end
return{status=200,message='Passed'}end end function a.bf()local c=a.cache.bf if
not c then c={c=b()}a.cache.bf=c end return c.c end end do local b=function()
return function()if not isparallel then return{status=400,message=
'Global not found'}elseif not run_on_actor then return{status=401,message=
"Dependency 'run_on_actor' not found"}end local b=game.Players.LocalPlayer.
Character:FindFirstChild'PMOVON'if isparallel()then return{status=500,message=
'Non-parallel thread assumed to be in a parallel state'}end run_on_actor(b,
'\r\n\t\tprint("MYRIAD: Ignore start -----------")\r\n\t\ttask.desynchronize()\r\n\t\tif isparallel() then\r\n\t\t\ttask.synchronize()\r\n\t\t\tprint("MYRIAD: Ignore end -----------")\r\n\t\t\tlocal originalPart = Instance.new("Part")\r\n\t\t\toriginalPart.Name = os.date("%H") .. "(1)"\r\n\t\t\toriginalPart.Parent = game.ReplicatedStorage\r\n\t\tend\r\n\t'
)task.wait(0.1)if not game.ReplicatedStorage:FindFirstChild(os.date'%H'..'(1)')
then return{status=500,message=
'Parallel thread assumed to be in a non-parallel state'}end task.wait()if
isparallel()then return{status=500,message=
'Non-parallel thread assumed to be in a parallel state'}end local c,d=a.b(){}if
not c then return{status=501,message=`Alias not found: {d}`}end return{status=
200,message=`Passed`}end end function a.bg()local c=a.cache.bg if not c then c={
c=b()}a.cache.bg=c end return c.c end end do local b=function()return function()
if not run_on_actor then return{status=400,message='Global not found'}end local
b=game.Players.LocalPlayer.Character:FindFirstChild'PMOVON'if not b then return{
status=500,message='Failed find to actor'}end run_on_actor(b,
'local originalPart = Instance.new("Part")\r\n\t\toriginalPart.Name = os.date("%H")\r\n\t\toriginalPart.Parent = game.ReplicatedStorage\r\n\t'
)task.wait(0.1)if not game.ReplicatedStorage:FindFirstChild(os.date'%H')then
return{status=500,message='Failed to find a part created by the actor'}end game.
ReplicatedStorage:FindFirstChild(os.date'%H'):Destroy()local c,d=a.b(){}if not c
then return{status=501,message=`Alias not found: {d}`}end return{status=200,
message=`Passed`}end end function a.bh()local c=a.cache.bh if not c then c={c=b(
)}a.cache.bh=c end return c.c end end do local b=function()return function()if
not create_comm_channel then return{status=400,message='Global not found'}elseif
not run_on_actor then return{status=401,message=
"Dependency 'run_on_actor' not found"}elseif not get_comm_channel then return{
status=401,message="Dependency 'get_comm_channel' not found"}end local b,c=0,
game.Players.LocalPlayer.Character:FindFirstChild'PMOVON'if not c then return{
status=500,message='Failed to find actor'}end local d,e=create_comm_channel()if
not e then return{status=500,message=`EventObject dosen't exist`}elseif typeof(d
)~='number'then return{status=500,message="Communication ID isn't a number"}end
e.Event:Connect(function(f)if f~='abs'then b=-1 end b=1 end)run_on_actor(c,
"\r\n\t\tlocal channel = get_comm_channel(...)\r\n\t\tchannel:Fire('abs')\r\n\t"
,d)task.wait(0.1)if b==0 then return{status=500,message='Did not fire the event'
}elseif not b==-1 then return{status=500,message=
"Passed argument[1] wasn't the expected value"}end local f,g=a.b(){}if not f
then return{status=501,message=`Alias not found: {g}`}end return{status=200,
message=`Passed`}end end function a.bi()local c=a.cache.bi if not c then c={c=b(
)}a.cache.bi=c end return c.c end end do local b=function()return function()if
not get_comm_channel then return{status=400,message='Global not found'}elseif
not run_on_actor then return{status=401,message=
"Dependency 'run_on_actor' not found"}elseif not create_comm_channel then return
{status=401,message="Dependency 'create_comm_channel' not found"}end local b,c=0
,game.Players.LocalPlayer.Character:FindFirstChild'PMOVON'if not c then return{
status=500,message='Failed to find actor'}end local d,e=create_comm_channel()if
not e then return{status=500,message=`EventObject dosen't exist`}elseif typeof(d
)~='number'then return{status=500,message="Communication ID isn't a number"}end
e.Event:Connect(function(f)if f~='abs'then b=-1 end b=1 end)run_on_actor(c,
"\r\n\t\tlocal channel = get_comm_channel(...)\r\n\t\tchannel:Fire('abs')\r\n\t"
,d)task.wait(0.1)if b==0 then return{status=500,message='Did not fire the event'
}elseif not b==-1 then return{status=500,message=
"Passed argument[1] wasn't the expected value"}end local f,g=a.b(){}if not f
then return{status=501,message=`Alias not found: {g}`}end return{status=200,
message=`Passed`}end end function a.bj()local c=a.cache.bj if not c then c={c=b(
)}a.cache.bj=c end return c.c end end do local b=function()return function()if
not getactors then return{status=400,message='Global not found'}end local b,c=
false,game.Players.LocalPlayer.Character:FindFirstChild'PMOVON'for d,e in pairs(
getactors())do if e==c then b=true end end if not b then return{status=500,
message="Didn't find a game actor"}end local d,e=a.b(){}if not d then return{
status=501,message=`Alias not found: {e}`}end return{status=200,message=`Passed`
}end end function a.bk()local c=a.cache.bk if not c then c={c=b()}a.cache.bk=c
end return c.c end end do local b=function()return function()if not WebSocket or
not WebSocket.connect then return{status=400,message='Global not found'}end
local b=WebSocket.connect'wss://echo.websocket.org/'if not(type(b)=='table'or
type(b)=='userdata')then return{status=500,message=
"Didn't give a table | userdata"}end for c,d in pairs{OnClose={'RBXScriptSignal'
,{table={'Connect','Once','Wait'}}},OnMessage={'RBXScriptSignal',{table={
'Connect','Once','Wait'}}},Send='function',Close='function'}do local e,f=pcall(
function()return b[c]end)if not e or f==nil then return{status=500,message=`WebSocketObject is missing: {
c}`}end local g=typeof(d)=='table'and d[1]or d if typeof(f)~=g then return{
status=500,message=`WebSocketObject.{c} is not a {g} (got {typeof(f)})`}end if
typeof(d)=='table'and d[2]and typeof(d[2])=='table'then for h,i in pairs(d[2])do
if h=='table'and typeof(f)=='table'then for j,k in ipairs(i)do if typeof(f[k])~=
'function'then return{status=500,message=`WebSocketObject.{c}.{k} is not a function`
}end end end end end end if result then return result end local c,d=a.b(){
'websocket.connect'}if not c then return{status=501,message=`Alias not found: {d
}`}end return{status=200,message=`Passed`}end end function a.bl()local c=a.cache
.bl if not c then c={c=b()}a.cache.bl=c end return c.c end end do local b=
function()return{cache={['cache.invalidate']=a.c(),['cache.iscached']=a.d(),[
'cache.replace']=a.e()},Closures={islclosure=a.f(),iscclosure=a.g(),
isexecutorclosure=a.h(),newcclosure=a.i(),clonefunction=a.j(),hookfunction=a.k()
,restorefunction=a.l(),getfunctionhash=a.m(),checkcaller=a.n()},crypt={[
'crypt.encrypt']=a.s(),['crypt.decrypt']=a.t(),['crypt.generatekey']=a.u(),[
'crypt.generatebytes']=a.v(),['crypt.base64encode']=a.w(),['crypt.base64decode']
=a.x(),['crypt.hash']=a.y(),['crypt.random']=a.z(),['crypt.hmac']=a.A()},debug={
['debug.getconstant']=a.B(),['debug.getconstants']=a.C(),['debug.getproto']=a.D(
),['debug.getprotos']=a.E(),['debug.getupvalue']=a.F(),['debug.getupvalues']=a.
G(),['debug.getstack']=a.H(),['debug.setconstant']=a.I(),['debug.setupvalue']=a.
J()},Drawing={['Drawing.new']=a.K(),['Drawing.Fonts']=a.L(),getrenderproperty=a.
M(),setrenderproperty=a.N(),cleardrawcache=a.O(),isrenderobj=a.P()},Environment=
{getgenv=a.Q(),getrenv=a.R(),getgc=a.S(),filtergc=a.T()},Filesystem={
getcustomasset=a.U(),listfiles=a.V(),loadfile=a.W(),appendfile=a.X(),delfile=a.
Y(),delfolder=a.Z(),isfile=a._(),isfolder=a.aa(),writefile=a.ab(),readfile=a.ac(
),makefolder=a.ad()},Input={isrbxactive=a.ae(),keypress=a.af(),keyrelease=a.ag()
,keytap=a.ah(),mouse1click=a.ai(),mouse1press=a.aj(),mouse1release=a.ak(),
mouse2click=a.al(),mouse2press=a.am(),mouse2release=a.an(),mousemoveabs=a.ao(),
mousemoverel=a.ap(),mousescroll=a.aq(),setclipboard=a.ar(),setrbxclipboard=a.as(
)},Instances={gethui=a.at(),cloneref=a.au(),compareinstances=a.av(),getinstances
=a.aw(),getnilinstances=a.ax(),getcallbackvalue=a.ay(),fireclickdetector=a.az(),
fireproximityprompt=a.aA(),firetouchinterest=a.aB(),saveinstance=a.aC()},
Metatable={getrawmetatable=a.aD(),setrawmetatable=a.aE(),hookmetamethod=a.aF(),
getnamecallmethod=a.aG(),setreadonly=a.aH(),makereadonly=a.aI(),isreadonly=a.aJ(
)},Miscellaneous={identifyexecutor=a.aK(),setfpscap=a.aL(),getfpscap=a.aM(),
request=a.aN(),lz4compress=a.aO(),lz4decompress=a.aP(),queue_on_teleport=a.aQ()}
,External={messagebox=a.aR(),rconsoleprint=a.aS(),rconsoleinfo=a.aT(),
rconsolewarn=a.aU(),rconsoleerr=a.aV(),rconsoleinput=a.aW(),rconsoleclear=a.aX()
,rconsolename=a.aY(),rconsolehide=a.aZ(),rconsoleshow=a.a_()},Reflection={
sethiddenproperty=a.a0(),gethiddenproperty=a.a1(),setthreadidentity=a.a2(),
getthreadidentity=a.a3(),setscriptable=a.a4(),isscriptable=a.a5()},Scripts={
getscripts=a.a6(),getrunningscripts=a.a7(),getcallingscript=a.a8(),
getloadedmodules=a.a9(),getsenv=a.ba(),getscripthash=a.bb(),loadstring=a.bc(),
getscriptbytecode=a.bd(),getscriptclosure=a.be(),decompile=a.bf()},Signals={},
Actors={isparallel=a.bg(),run_on_actor=a.bh(),create_comm_channel=a.bi(),
get_comm_channel=a.bj(),getactors=a.bk()},WebSocket={connect=a.bl()}}end
function a.bm()local c=a.cache.bm if not c then c={c=b()}a.cache.bm=c end return
c.c end end do local b=function()local b={}b.__index=b local c,d,e,f=Enum.Font.
RobotoMono,14,8,function(c,d)local e=Instance.new(c)for f,g in pairs(d)do e[f]=g
end return e end function b.new(g,h)local i=setmetatable({},b)i.Props=h or{}i.
RichText=i.Props.RichText~=false i.ReadOnly=i.Props.ReadOnly~=false i.Container=
f('Frame',{Name='ConsoleComponent',BackgroundColor3=Color3.fromRGB(20,20,20),
BorderSizePixel=0,Size=UDim2.new(1,0,0,300),Parent=g,ClipsDescendants=true})f(
'UICorner',{CornerRadius=UDim.new(0,6),Parent=i.Container})f('UIPadding',{
PaddingTop=UDim.new(0,e),PaddingBottom=UDim.new(0,e),PaddingLeft=UDim.new(0,e),
PaddingRight=UDim.new(0,e),Parent=i.Container})i.ScrollView=f('ScrollingFrame',{
Name='Scroll',BackgroundTransparency=1,Size=UDim2.new(1,0,1,0),CanvasSize=UDim2.
new(0,0,0,0),ScrollBarThickness=4,ScrollBarImageColor3=Color3.fromRGB(80,80,80),
AutomaticCanvasSize=Enum.AutomaticSize.Y,Parent=i.Container})i.Layout=f(
'UIListLayout',{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,2),
VerticalAlignment=Enum.VerticalAlignment.Top,Parent=i.ScrollView})if i.Props.
Height then i.Container.Size=UDim2.new(1,0,0,i.Props.Height)end i.Layout:
GetPropertyChangedSignal'AbsoluteContentSize':Connect(function()i.ScrollView.
CanvasSize=UDim2.new(0,0,0,i.Layout.AbsoluteContentSize.Y)local j,k,l=i.
ScrollView.CanvasPosition.Y,i.ScrollView.AbsoluteWindowSize.Y,i.Layout.
AbsoluteContentSize.Y if(l-k-j)<50 then i.ScrollView.CanvasPosition=Vector2.new(
0,l-k)end end)return i end function b:AppendText(g)f('TextLabel',{Name='Line',
BackgroundTransparency=1,Text=g,TextColor3=Color3.fromRGB(220,220,220),TextSize=
d,Font=c,RichText=self.RichText,TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,TextWrapped=true,Size=UDim2.new(1,0,0,0),
AutomaticSize=Enum.AutomaticSize.Y,Parent=self.ScrollView})end function b:
SetValue(g)self:Clear()f('TextLabel',{Name='Status',BackgroundTransparency=1,
Text=g,TextColor3=Color3.fromRGB(255,255,255),TextSize=d+2,Font=c,RichText=self.
RichText,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.
TextYAlignment.Top,TextWrapped=true,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.
AutomaticSize.Y,Parent=self.ScrollView})end function b:Clear()for g,h in ipairs(
self.ScrollView:GetChildren())do if h:IsA'GuiObject'then h:Destroy()end end self
.ScrollView.CanvasPosition=Vector2.new(0,0)end function b:GetValue()local g={}
for h,i in ipairs(self.ScrollView:GetChildren())do if i:IsA'TextLabel'then table
.insert(g,i.Text)end end return table.concat(g,'\n')end function b:__index(g)if
b[g]then return b[g]end if g=='__instance'then return self.Container end return
end return b end function a.bn()local c=a.cache.bn if not c then c={c=b()}a.
cache.bn=c end return c.c end end do local b=function()return function()for b,c
in pairs(getgc(true))do if typeof(c)=='table'then if rawget(c,'SideWindow')==8
and rawget(c,'Window')==10 and rawget(c,'Menu')==100000 and rawget(c,'Core')==
101000 then return true end end end return false end end function a.bo()local c=
a.cache.bo if not c then c={c=b()}a.cache.bo=c end return c.c end end do local b
=function()return function(b,c,d)local e,f,g,h,i,j,k,l,m=a.bm(),a.bn(),{},{},{
checkpointDelay=0,statusFilter=false,stripRichtext=false,formatDiff=false,
includeMetadata=false,excludedTests=''},{bullet='\u{2022}'},{[0]='\u{2753}',[200
]='\u{2705}',[400]='\u{1f50e}',[401]='\u{1f4e6}',[500]='\u{1f6e0}\u{fe0f}',[501]
='\u{1f3f7}\u{fe0f}'}local n,o=function(...)local n=table.concat({...},' ')m:
AppendText(n)end,function(...)local n=table.concat({...},' ')m:AppendText(`<font color="#FFA500">{
n}</font>`)end local function p()if l then task.cancel(l)end l=task.spawn(
function()local q,r,s,t,u,v=time(),0,0,0,0,{}if i.excludedTests and i.
excludedTests~=''then for w,x in ipairs(string.split(i.excludedTests,','))do v[x
:gsub('^%s*(.-)%s*$','%1')]=true end end for w,x in e do g[w]=nil h[w]={}for y
in x do t+=1 g[w]=y end end local w={}for x,y in e do for z,A in y do table.
insert(w,{groupName=x,name=z,test=A})end end for x,y in ipairs(w)do local z,A,B=
y.groupName,y.name,y.test if v[z]or v[A]or v[z..'.'..A]then u+=1 continue end
local C,D,E=w[x+1],pcall(B)local F,G if not D then F=0 G=E s+=1 m:SetValue(`<font color="#FFA500">{
A} failed</font>`)elseif E.status==200 then F=E.status G=E.message r+=1 m:
SetValue(`<font color="#84FF00">{A} passed</font>`)else F=E.status G=E.message s
+=1 m:SetValue(`<font color="#FFA500">{A} failed</font>`)end if C then n(`Next test: {
C.name}`)end table.insert(h[z],{name=A,status=F,message=G})if i.checkpointDelay
~=0 then task.wait(i.checkpointDelay)end end m:Clear()for x,y in h do local z,A=
false,false for B,C in y do if not i.statusFilter or k[C.status]==i.statusFilter
then if not A then n(x..':')A=true end local D=(C.status==200)and n or o D(`{j.
bullet} {k[C.status]} {C.name}: {C.message}`)z=true end end if z then n''end end
if i.stripRichtext then m:SetValue(m:GetValue():gsub('<br%s*/>','\n'):gsub(
'<[^<>]->',''))end if i.formatDiff then m:SetValue(m:GetValue():gsub('<br%s*/>',
'\n'):gsub('<[^<>]->',''))local x,y=m:GetValue(),{}for z,A in ipairs(string.
split(x,'\n'))do local B=A:gsub('^\u{2022}%s*',''):gsub('^%s*(.-)%s*$','%1')if B
~=''then if B:find'\u{2705}'then y[z]='+ '..B elseif B:find'\u{1f50e}'or B:find
'\u{2753}'or B:find'\u{1f6e0}\u{fe0f}'or B:find'\u{1f4e6}'or B:find
'\u{1f3f7}\u{fe0f}'then y[z]='- '..B else y[z]=B end else y[z]=''end end m:
SetValue(table.concat(y,'\n'))end local x,y,z=math.floor((time()-q)*100+0.5)/100
,identifyexecutor()n(`Summary:`)n(`{j.bullet} Took: {x}s`)n(`{j.bullet} Executor: {
y or'Unknown'}`)n(`{j.bullet} Tested: {t-u}`)n(`{j.bullet} Passed: {r}`)n(`{j.
bullet} Failed: {s}`)n(`{j.bullet} Pass Rate: {math.round(r/(t-u)*100)}%`)if u>0
then n(`{j.bullet} Excluded: {u} tests`)end if i.includeMetadata then local A,B=
m:GetValue(),string.format(
[[@metadata {
  "generated": "%s",
  "executor": "%s",
  "version": "%s",
} 

]]
,DateTime.now():ToIsoDate(),y,z)m:SetValue(B..A)end game.ReplicatedStorage.res:
FireServer(h,{testBuildMetadata=_P,executor=y,executorVersion=z,tested=t,passed=
r,failed=s,testTime=x,generated=DateTime.now():ToIsoDate()})end)end do local q=c
:Form()d(q,'Status Filter','Filter by status codes'):Right():PopUpButton{Options
={'All','\u{2705} Pass','\u{2753} Ambiguous','\u{1f50e} Missing',
'\u{1f4e6} Dependency','\u{1f6e0}\u{fe0f} Functionality',
'\u{1f3f7}\u{fe0f} Alias'},Value=1,ValueChanged=function(r,s)local t={[1]=false,
[2]=200,[3]=0,[4]=400,[5]=401,[6]=500,[7]=501}i.statusFilter=t[s]end}d(q,
'Excluded Tests','Exclude libs or globals from testing (delimited by commas)'):
Right():TextField{Placeholder='crypt, debug.info',Value='',ValueChanged=function
(r,s)i.excludedTests=s end}d(q,'Checkpoint Delay',
'Add delay per-checkpoint to analyze easily.'):Right():Stepper{Fielded=true,
Value=0,Minimum=0,Maximum=1,Step=0.01,ValueChanged=function(r,s)i.
checkpointDelay=s end}d(q,'Include Metadata',
[[Includes metadata in the output. Useful for sharing formatted results.]]):
Right():Toggle{Value=false,ValueChanged=function(r,s)i.includeMetadata=s end}d(q
,'Strip richtext',
[[Strips the richtext from output. Useful for sharing formatted results.]]):
Right():Toggle{Value=false,ValueChanged=function(r,s)i.stripRichtext=s end}d(q,
'Diff output',
[[Formats the output in diff. Useful for sharing formatted results.]]):Right():
Toggle{Value=false,ValueChanged=function(r,s)i.formatDiff=s end}end do local q=c
:Form()d(q,'Run Test'):Right():Button{Label='Run',Pushed=function()if a.bo()()
and _P.cfg~='Debug'then warn
[[Cant run test: Dex detected in GC. This can tamper with 'decompile' test results in certain builds.]]
return end coroutine.wrap(p)()end}m=f.new(c.__container,{ReadOnly=true,RichText=
true,LineHeight=1.3,Fill=true})m:Clear()end return h end end function a.bp()
local c=a.cache.bp if not c then c={c=b()}a.cache.bp=c end return c.c end end do
local b=function()return function(b,c)local d,e=0,0 c:Label{Text=
'Not implemented'}return{passed=d,failed=e}end end function a.bq()local c=a.
cache.bq if not c then c={c=b()}a.cache.bq=c end return c.c end end do local b=
function()return{Standards={path=a.bp(),icon='flag',selected=true},
Vulnerabilities={path=a.bq(),icon='shield',selected=false}}end function a.br()
local c=a.cache.br if not c then c={c=b()}a.cache.br=c end return c.c end end
end local b,c,d=a.a(),a.br(),game:GetService'ReplicatedStorage'local e,f,g=b.New
{Theme=b.Themes.Dark},80776325854596,function(e,f,g)local h=e:Row{SearchIndex=f}
h:Left():TitleStack{Title=f,Subtitle=g}return h end if game.PlaceId==f then
local h=d:FindFirstChild'connected'if not h then warn
"Can't find dependency `connected`"return end h:FireServer()local i=e:Window{
Title='Myriad',Subtitle=`{_P.cfg} {_P.vers}`}:Section{Disclosure=false,Title=
'Tests'}for j,k in c do local l=i:Tab{Title=j,Icon=b.Symbols[k.icon],Selected=k.
selected}coroutine.wrap(function()k.path(j,l,g)end)()end else local h=
'https://www.roblox.com/games/80776325854596'warn(`Please join the testing game to use myriad: {
h}`)if setclipboard or toclipboard then(setclipboard or toclipboard)(h)else
print('Failed to copy link: '..h)end end