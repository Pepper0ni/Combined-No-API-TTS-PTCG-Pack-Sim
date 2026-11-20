local listOfImages={
 "1847054888066180821/BC6BEA4B10B2A0BDF8814015C6E2D709B27DE59D",
 "1847054888066181074/57619A0B0FDD2E622D5E1468D89EC6E50851C5F3",
 "1847054888066181301/30B30215BCC51F4A3934374D8C7BB0E5EAED5A73",
 "1847054888066181504/CA57981D5CC32FC91211C94AEAB3048CA9BE2D78",
 "1847054888066181721/B388189CD368B3F0EEB580FFB11A6831FF25C38E",
 "1847054888066181966/9D9B0B122496A289538C821824DF0349265C00D1",
 "1847054888066182259/3057BFC9B9AE81DFB032D16D92E18CF6C5675374",
 "1847054888066182476/04324D6EE02F9278DC0DF2598E79F9B5D0C3B148",
 "1847054888066182687/81E0E4ED8D72584723990C3FDB941A0EA9F225E2",
 "1847054888066182925/0F8715505635E0676EB39D560B34830C654066B0",
 "1847054888066183904/CE3D1F0B1228FCF811DB39468338CE10320F1F3F",
 "1847054888066184131/28B793B3DCE733CEE11E22344F745E13CE9ACDC4",
 "1847054888066184328/F2DFF2536C3253AC452ABA246986FE9439AEB72E",
 "1847054888066184545/EABC3F7BE6DA153D5FCEFBCA833485C9F25DE0DB",
 "1847054888066184819/6C5AAC09F99677BC37B7BDA5B2B2A7AE0608E407",
 "1847054888066186056/9E31C0BBD2B6EE30134C2443BBFE665DB7368FBD",
 "1847054888066186280/014EBB0B1A2D1374CCF1BF90BCDBF3C06E92BB74",
 "1847054888066187105/CD93838DF73895D9A4E8D93C0E977873CAE8B861",
 "1847054888066187377/F659169C95B374F8159542D5F0394C1613568905",
 "1847054888066187636/19DE0911B62E156805A3D1CAFA26F4D50E1D8A35",
 "1847054888066187894/9C90D85377EA3D7B9174520FC55C70E92BA9CF46",
 "1847054888066188176/27D707C71C6DE48D3B83CCFA5C6555D7943F82B2",
 "1847054888066188427/98442F228CCB059FC11C5551EB86E83F79B20FFB",
 "1847054888066188663/54B0FE3A7FE1ADB0E6A0C5B4F2EEAE22443E51A8",
 "1847054888066188823/739EB4AAFEA0A547E367ADFBA077FD579488F559",
 "1847054888066189026/71C12DD507330DE1314C309DC1A18F9AD9B9F01E",
 "1847054888066189262/DE5892F528554C3C62BEA016871F39CF87D54B5F",
 "1847054888066189501/12335FC6C76F2F102B092788B785F15CE7EA092C",
 "1847054888066189738/679987F97D76662882CC342EEF949AC123F06807",
 "1847054888066189983/2373DDA006BBD14A8CB5E1DA9857178DCCCBAF2D",
 "1847054888066190228/196F114F9A9F839CE32B1CE319A4DAD3DFE7892C",
 "1847054888066190496/D9E72F4023091300D4D1072CD8CD0912CD83C7F7",
 "1847054888066190731/1ECD00F350C9C46167FD5E900B312475334B86FE",
 "1847054888066190971/F1C47CCBFB0BC0E0126F09F2B6B3BF06BFC1A9EC",
 "1847054888066191200/6CEEF2D46005985D90CD4B0B80CC93603D681238",
 "1847054888066191498/08CD7F84B9F0A18597FBABBAADD3AD1AE605CE5B",
 "1847054888066191723/744AE156782E82EF07612F00AE93BFBB9495475B",
 "1847054888066929317/002CA51857AEB386F38BBC667576EE387256B6B7",
 "1847054888066192199/0F35EE333C993F908843AAECEE38F3088A2DCAFC",
 "1847054888066223701/B8D287EDE36515DE81730E3D5BFFD9A12ED35882",
 "1847054888066193480/78F92FC65E007AE20A155CD47B718E7056CFA997",
 "1847054888066194439/23105EAC103082D016F0A151F5B53407E884CF98",
 "1847054888066194661/EE15BC613207FD279D124341FB2C5CA29E765AF0",
 "1847054888066194894/9EE2B25541685085BBBD78659FE08BFACCF436BE",
 "1847054888066196080/5D94ADE4B6DFC7CF946811EB12B12C902B11801A",
 "1847054888066196356/B0A4AB4BBFA77CD711C96A69AF89608ACCA95322",
 "1847054888066196599/345111CD5A7CCFA19FE834F1B88D0873E25C1A20",
 "1847054888066196848/43534EC33C07065FBF8DDC03F48ECFB417477A33",
 "1847054888066197028/A9744C131382B2648F373C55B5C12719517ED83C",
 "1847054888066197278/12EC098ABC5E19655EC8B583AACD832CEAFB2AFF",
 "1847054888066198281/E43FE12F7F6B8C55147F5AA1FA37B03990730370",
 "1847054888066198606/CF44C1545CDD5C1E2FA78177A9A4D4F6FB2E4CCC",
 "1847054888066198857/EC18B6211C884430B522D725EF786CF315CD1277",
 "1847054888066199028/69A138911C66FE188C3DD0169B8484107DDF69B2",
 "1847054888066199776/D3018668F8001244407E1DD6CBD8E4A91F3ADCBE",
 "1847054888066200015/1F8115CBEBE9E531FF1D818CB9E2E1B913805AE6",
 "1847054888066200958/C618A8BF395DD349157A5721E0033B619A91248A",
 "1847054888066202303/573639C2A26BABA9418593D99D1E44F6CFBDEFD8",
 "1847054888066202672/C9E45F870A1283DB2E69B3C5E9FC141A557DEA67",
 "1847054888066203764/760FD35F8CDA41C7984DB3B6E8F8542D5A86CA70",
 "1847054888066204018/834F75B77E1942543D561820EADADDCDEE1EDEF1",
 "1847054888066204263/CFC1A714CEA7101F3796A7A649096717C6B8261F",
 "1847054888066204482/41B76D245EEF938F58AA1E4B6B7CDE9AA95EC5CA",
 "1847054888066204776/65285705943E2D5AD5A69E69F621E8EDCE6F9495",
 "1847054888066205071/AF384B5318321F5B10A1776E7E425D60ECCD7380",
 "1847054888066205309/7F15F69474D6DC8B49F4170E6800952E2DC3B22D",
 "1847054888066206375/5CE662BF64FC2A38525E2B07611440C93030E4AE",
 "1847054888066206639/B6FE11824C62DC138AA27362C8676F09276D45FD",
 "1847054888066206831/29E9584961FFC0863BCAB5086D05CF221D3B2100",
 "1847054888066207051/E0E11BE952165A5755FBB6E9DD23923F72DBEB8E",
 "1847054888066207252/CA58982DFF3D47744A84E25D1ED0A3D646556689",
 "1847054888066208220/F03491FC1E3A40785BA39036243AD6CF9CEFD87D",
 "1847054888066208431/C0D8BEA7217EC4A34267BD04F501FB358846D472",
 "1847054888066208592/131A55FD0BFACAF72FD540E208C1B6703BF8EFDD",
 "1847054888066208794/49F372F83109CA69D8AAE96EC116247E828626C6",
 "1847054888066208992/DF15E68DACE34FCC321A4BE37427B9A42969EC0B",
 "1847054888066209215/411BEAB5B643545C825D1E4C082617DE0E3590AF",
 "1847054888066209468/183B663CCBC8047B20676FA137380C0800A9B603",
 "1847054888066209668/B49591FA98CB487E4CEEF7D176AB91E89779039B",
 "1847054888066209921/405479D789E92E37718FFF8CC010761E96691551",
 "1847054888066210163/4AAFC755FF00C13B94DF7AAFD0758F770CC0FCCE",
 "1847054888066210412/401C1BB8E0AAD6002E6655E56E9BCFB670EDC2CD",
 "1847054888066211121/26644A25E78429C8DAC75B4EF08CD9E25E6B157A",
 "1847054888066211416/186A7B1F59BEFE086B6EF3D35F3BB9F7CCDA7B56",
 "1847054888066212420/0ABFD709F10BAF6DC38A184B88307EA5D79D2123",
 "1847054888066212625/107C92122D22A2BAC191AED0B0B6C1A9857D43CA",
 "1847054888066212825/9B113DCF3934626ED7C9A28DDC6DB41310F2530B",
 "1847054888066212961/C4EF71BC3A5BFF80229FC0EDD99E2484C6EAC7FA",
 "1847054888066213164/A2D2847D76AC32444C56ED222A74D72C20B7FE6D",
 "1847054888066213379/D17128052AFD9916C2605309B50DD480096511A2",
 "1847054888066213597/C8853B5253FD7C142E4FB7C73FCAA03CF5494FCA",
 "1847054888066213805/5D097CEFD4CA97CEA711F6C65972D259DEADE985",
 "1847054888066214018/2597CB0DCB012A21A2E40CB97006C294C8F9AB48",
 "1847054888066214244/1D47D09C168660EF7B6352994E1191F8A51439AA",
 "1847054888066214481/515E1D55CEFB95B34C01156711636C1AA7BE8A52",
 "1847054888066214694/E109B4F38DE484500946782D55D97FF9895BFDF5",
 "1847054888066215012/B089B08E21DBC0E698CC979FD2129BA083D42BB8",
 "1847054888066215340/713428E48F811A1E9D969EC5F02E25E2B9CF1395",
 "1847054888066216590/89902E269224D1F0036A02CE7477A2D5FDFD8277",
 "1847054888066216838/F21CE2DD1C872B5AB0CED92AD28443CFFB4A0407",
 "1847054888066217152/2F69FE439ED989F0530E1AB6174E6BEFE5274960",
 "1847054888066217474/094D964D7C43E6AFC47BD3A93FBA5C516751DECC",
 "1847054888066218584/A43C2F0BF7F7E6F988B63EE34FCC32B80269ECAD",
 "1847054888066218905/9C2ED16984838C2594476411EB375F0E254DE9DB",
 "1847054888066219182/C935543577F47E0074126D14304EE50744AF1B92",
 "1847054888066219478/656944C02E8A224FAED0CD541FDB18B49FFF413B"
}

self.alt_view_angle={0,90,0}
lastButtonPress=os.time()
mainSnaps={
 {position={-0.0025,0.1,-0.715}},--active card
 {position={-0.0025,-0.9,-0.84}},--active BREAK
 {position={0.1975,0.1,-0.4625},rotation_snap=true},--active energy
 {position={1.537,0.1,-0.401}},--prize 1
 {position={1.263,0.1,-0.401}},--prize 2
 {position={1.537,0.1,0.03}},--prize 3
 {position={1.263,0.1,0.03}},--prize 4
 {position={1.537,0.1,0.461}},--prize 5
 {position={1.263,0.1,0.461}},--prize 6
 {position={-1.41,0.1,0.03},rotation_snap=true},--deck
 {position={-1.41,0.1,0.463},rotation_snap=true},--discard
 {position={-1.41,0.1,-0.38}},--GX Coin
 {position={-1.36,0.1,-0.76}},--Stadium
 {position={0.44,0.1,0.7}},--bench 2 card
 {position={-0.02,0.1,0.7}},--bench 3 card
 {position={-0.48,0.1,0.7}},--bench 4 card
 {position={0.44,-0.9,0.575}},--bench 2 BREAK
 {position={-0.02,-0.9,0.575}},--bench 3 BREAK
 {position={-0.48,-0.9,0.575}},--bench 4 BREAK
 {position={0.64,0.1,0.9525},rotation_snap=true},--bench 2 energy
 {position={0.18,0.1,0.9525},rotation_snap=true},--bench 3 energy
 {position={-0.28,0.1,0.9525},rotation_snap=true},--bench 4 energy
 {position={0.9,0.1,0.7}},--bench 1 card
 {position={-0.94,0.1,0.7}},--bench 5 card
 {position={0.9,-0.9,0.575}},--bench 1 BREAK
 {position={-0.94,-0.9,0.575}},--bench 5 BREAK
 {position={1.1,0.1,0.9525},rotation_snap=true},--bench 1 energy
 {position={-0.74,0.1,0.9525},rotation_snap=true},--bench 5 energy
}
exSnaps={
 {position={0.44,0.1,0.05}},--bench 7 card
 {position={-0.02,0.1,0.05}},--bench 8 card
 {position={-0.48,0.1,0.05}},--bench 9 card
 {position={0.44,-0.9,-0.075}},--bench 7 BREAK
 {position={-0.02,-0.9,-0.075}},--bench 8 BREAK
 {position={-0.48,-0.9,-0.075}},--bench 9 BREAK
 {position={0.64,0.1,0.3025},rotation_snap=true},--bench 7 energy
 {position={0.18,0.1,0.3025},rotation_snap=true},--bench 8 energy
 {position={-0.28,0.1,0.3025},rotation_snap=true},--bench 9 energy
 {position={0.9,0.1,0.05}},--bench 6 card
 {position={-0.94,0.1,0.05}},--bench 0 card
 {position={0.9,-0.9,-0.075}},--bench 6 BREAK
 {position={-0.94,-0.9,-0.075}},--bench 0 BREAK
 {position={1.1,0.1,0.3025},rotation_snap=true},--bench 6 energy
 {position={-0.74,0.1,0.3025},rotation_snap=true},--bench 0 energy
}

function onLoad(state)
 if state!=""then
  local save=json.parse(state)
  curImage=tonumber(save.curImage)
  curCut=save.curCut
  bench8=save.bench8
  revbench=save.revbench
  hand=save.hand
 else
  curImage=1
  curCut=7
  bench8=false
  revbench=false
  hand=false
 end
 if self.GetCustomObject().image!=getSteamUrl(listOfImages[curImage])then changeArt()end
 setUpBoard()

 local params={function_owner=self,
  input_function="updateArtToText",
  position={-1.63,0.1,-0.97},
  scale={1/8.26,1/8.26,1/8.26},
  width=400,
  height=223,
  font_size=200,
  color={0,0,0.5},
  font_color={1,1,1},
  tooltip="Set Board Art",
  alignment=3,
  value=tostring(curImage),
 }
 self.createInput(params)

 params.input_function="setCutAmount"
 params.tooltip="Amount to Cut"
 params.width=450
 params.position={1.63,0.1,0.05}
 params.value=tostring(curCut)
 self.createInput(params)

 wellData={Transform={posX=0,posY=0,posZ=0,rotX=0,rotY=0,rotZ=0,scaleX=0.01,scaleY=0.01,scaleZ=0.01},Name="Custom_Assetbundle_Bag",Nickname="Attach Well",Description="Place cards you attach to Pokemon here!",Locked=true,CustomAssetbundle={AssetbundleURL=getSteamUrl("1788515362268211451/0C434F47DB06FAFA3BAFD293A14D7B440CC1BE23"),AssetbundleSecondaryURL="",MaterialIndex=2,TypeIndex=6,LoopingEffectIndex=0},Bag={Order=0},LuaScript=WellLuaScript
}

 self.addContextMenuItem("Reverse Bench",function()revBench()end)
 self.addContextMenuItem("Sync with your hand",function(player_color)syncHand(player_color)end)
 self.addContextMenuItem("Delete Wells",function()deleteWells()end)
 self.addContextMenuItem("Respawn Wells",function()createWells()end)
 createWells()
end

_G["discard0"]=function()discard(self.positionToWorld({-0.0225,1.11,-0.715}),0)end

for c=1,5 do
 _G["clickSwitch"..tostring(c)]=function(_,color)switch(self.positionToWorld({-0.0225,1.11,-0.715}),self.positionToWorld({1.34-(c*0.46),1.11,0.7}),color)end
 _G["discard"..tostring(c)]=function()discard(self.positionToWorld({1.34-(c*0.46),1.11,0.7}),c)end
end
for c=6,10 do
 _G["clickSwitch"..tostring(c)]=function(_,color)switch(self.positionToWorld({-0.0225,1.11,-0.715}),self.positionToWorld({3.64-(c*0.46),1.11,0.05}),color)end
 _G["discard"..tostring(c)]=function()discard(self.positionToWorld({3.64-(c*0.46),1.11,0.05}),c)end
end

function makeZone(c,params,disParams)
 local hori=(c-3)*0.46
 local ver=0.4
 if c>5 then
  hori=(c-8)*0.46
  ver=-0.25
 end
 butWrapper(params,{hori+0.025,0.1,ver},'Switch','Switch Benched Mon with the Active','clickSwitch'..tostring(c))
 butWrapper(disParams,{hori+0.195,0.1,0.47+ver},'╳','Discard this Pokemon and all attached cards','discard'..tostring(c))
end

function syncHand(color)
 hand=color
 saveData()
end

function setUpBoard()
 self.clearButtons()
 local snaps={}
 local mainSnapCount=28
 local exSnapCount=0
 if bench8 then
  if revbench then
   mainSnapCount=22
   exSnapCount=15
  else
   exSnapCount=9
  end
 else
  if revbench then
   mainSnapCount=13
   exSnapCount=15
  end
 end
 for c=1,mainSnapCount do snaps[#snaps+1]=mainSnaps[c]end
 for c=1,exSnapCount do snaps[#snaps+1]=exSnaps[c]end
 self.setSnapPoints(snaps)
 local params={function_owner=self,
 font_size=200,
 color={0,0,0.5},
 font_color={1,1,1},
 width=1500,
 height=250,
 scale={1/8.26,1/8.26,1/8.26},
 rotation={0,0,0},
 }
 disParams={function_owner=self,
 font_size=230,
 color={0,0,0.5},
 font_color={1,1,1},
 width=340,
 height=290,
 scale={1/8.26,1/8.26,1/8.26},
 rotation={0,0,0},
 }

 butWrapper(disParams,{0.1775,0.1,-0.545},'╳','Discard this Pokemon and all attached cards','discard0')

 if revbench then
  for c=6,10 do makeZone(c,params,disParams)end
 else
  for c=1,5 do makeZone(c,params,disParams)end
 end
 if bench8 then
  if revbench then
   for c=2,4 do makeZone(c,params,disParams)end
  else
   for c=7,9 do makeZone(c,params,disParams)end
  end
  butWrapper(params,{1.4,0.1,0.8},'Normal Bench','Return the bench to Normal',"toggleBench")
 else
  butWrapper(params,{1.4,0.1,0.8},'Large Bench','Expand the bench to hold 8 Mons',"toggleBench")
 end
 butWrapper(params,{1.4,0.1,0.875},'Bottom-deck hand','Shuffle your hand and place it on the bottom of the deck',"botDeckHand")

 butWrapper(params,{-1.4,0.1,0.7},'Setup 6 Prizes','Take 6 prizes from your Deck',"set6Prizes")
 butWrapper(params,{-1.4,0.1,0.775},'Setup 4 Prizes','Take 4 prizes from your Deck',"set4Prizes")
 butWrapper(params,{-1.4,0.1,0.85},'Setup 3 Prizes','Take 3 prizes from your Deck',"set3Prizes")
 butWrapper(params,{-1.4,0.1,0.925},'Shuffle Prizes','Shuffle Face-down Prizes',"groupPrizes")
 butWrapper(params,{1.4,0.1,0.725},'Reset','Reset the game by putting all cards into the deck.',"cleanUpPrompt")

 params.height=640
 params.width=450
 butWrapper(params,{1.63,0.1,-0.12},'Cut\nTop\nX','Cut the top X cards of the deck and places them aside, as Cutting the top of a face-down deck is awkward in TTS otherwise. What you think cuts from the top actually cuts from the bottom.\nX is set by the number below.',"cutTopDeck")
 butWrapper(params,{1.63,0.1,0.22},'Cut\nBot.\nX','Cut the bottom X cards of the deck and places them aside\nX is set by the number above.',"cutBottomDeck")
 params.height=250
 params.color={0,0.5,0}
 butWrapper(params,{1.63,0.1,0.01},'+','Increase Cut Amount',"incCut")
 params.color={1,0,0}
 butWrapper(params,{1.63,0.1,0.09},'-','Decrease Cut Amount',"decCut")
 params.width=200
 butWrapper(params,{-1.69,0.1,-0.97},'-','Previous Board Art',"previousArt")
 params.color={0,0.5,0}
 butWrapper(params,{-1.57,0.1,-0.97},'+','Next Board Art',"nextArt")
end

function butWrapper(params,pos,label,tool,func)
 params.position=pos
 params.label=label
 params.tooltip=tool
 params.click_function=func
 self.createButton(params)
end

function previousArt()
 curImage=curImage-1
 if curImage==0 then curImage=#listOfImages end
 changeArt()
end

function nextArt()
 curImage=curImage+1
 if curImage>#listOfImages then curImage=1 end
 changeArt()
end

function updateArtToText(obj,color,value,selected)
 if not selected and value!=curImage then
  local newValue=checkIfNum(value,#listOfImages,curImage,color)
  if newValue!=curImage then
   curImage=newValue
   changeArt()
  end
  return tostring(curImage)
 end
end

function setCutAmount(obj,color,value,selected)
 if not selected then
  curCut=checkIfNum(value,100,curCut,color)
  saveData()
  return tostring(curCut)
 end
end

function checkIfNum(value,max,current,color)
 local numValue=tonumber(value)
 if numValue!=nil then
  numValue=math.floor(numValue)
  if numValue>0 then
   if numValue<=max then return numValue else broadcastToColor("Enter a lower number.",color,{1,0,0})end
  else broadcastToColor("Enter a number above 0.",color,{1,0,0})end
 else broadcastToColor("Enter a number.",color,{1,0,0})end
 return current
end

function incCut()
 curCut=curCut+1
 self.editInput({index=1,value=tostring(curCut)})
 saveData()
end

function decCut(obj,color)
 if curCut>2 then
  curCut=curCut-1
  self.editInput({index=1,value=tostring(curCut)})
  saveData()
 else
  broadcastToColor("Already at minimum.",color,{1,0,0})
 end
end

function cutTopDeck(obj,color)
 deck=getDeck(color)
 if deck then
  decksize=deck.getQuantity()
  if decksize>=curCut+2 then
   decks=deck.cut(decksize-curCut)
   selfRot=self.GetRotation()
   selfRot.z=selfRot.z+180
   decks[2].setRotation(selfRot)
   decks[1].setPositionSmooth(self.positionToWorld({-2,1,0.03}),false,true)
  else
   broadcastToColor("Deck is too small.",color,{1,0,0})
  end
 end
end

function cutBottomDeck(obj,color)
 deck=getDeck(color)
 if deck then
  decksize=deck.getQuantity()
  if decksize>=curCut+2 then
   decks=deck.cut(curCut)
   selfRot=self.GetRotation()
   selfRot.z=selfRot.z+180
   decks[2].setRotation(selfRot)
   decks[2].setPositionSmooth(self.positionToWorld({-2,1,0.03}),false,true)
  else
   broadcastToColor("Deck is too small.",color,{1,0,0})
  end
 end
end

function getDeck(color)
 local zone=castWrap(self.positionToWorld({-1.41,0.6,0.03}),{2.5,1,4})
 for _,col in pairs(zone) do
  if col.hit_object.type=="Deck"then return col.hit_object end
 end
 broadcastToColor("Deck doesn't exist.",color,{1,0,0})
end

function castWrap(origin,size,debug)
 return Physics.cast({origin=origin,direction={0,1,0},type=3,size=size,max_distance=0,orientation=self.GetRotation(),debug=debug})
end

function changeArt()
 self.setCustomObject({image=getSteamUrl(listOfImages[curImage])})
 saveData()
 self.reload()
end

function getSteamUrl(url)
 return"https://steamusercontent-a.akamaihd.net/ugc/"..url.."/"
end

function saveData()
 local save={curImage=curImage,curCut=curCut,bench8=bench8,revbench=revbench,hand=hand}
 self.script_state=json.serialize(save)
end

function switch(pos1,pos2,color)
 if os.difftime(os.time(),lastButtonPress)<0.5 then broadcastToColor("You can't switch that fast.",color,{1,0,0})return end
 lastButtonPress=os.time()
 local zone1=castWrap(pos1,{2.9,2,4})
 local zone2=castWrap(pos2,{2.9,2,4})
 for _,col in pairs(zone1)do moveObject(col.hit_object,pos1,pos2)end
 for _,col in pairs(zone2)do moveObject(col.hit_object,pos2,pos1)end
 lastButtonPress=os.time()
end

function moveObject(object,srcOrigin,dstOrigin)
 objPos=object.getPosition()
 local relativePos={objPos[1]-srcOrigin[1],objPos[2]-srcOrigin[2],objPos[3]-srcOrigin[3]}
 object.setPositionSmooth({x=dstOrigin[1]+relativePos[1],y=dstOrigin[2]+relativePos[2],z=dstOrigin[3]+relativePos[3]},false,true)
end

wellLocAct={0.1975,0.12,-0.4625}
wellLocsBot={{1.1,0.12,0.9525},{0.64,0.12,0.9525},{0.18,0.12,0.9525},{-0.28,0.12,0.9525},{-0.74,0.12,0.9525}}
wellLocsTop={{1.1,0.12,0.3025},{0.64,0.12,0.3025},{0.18,0.12,0.3025},{-0.28,0.12,0.3025},{-0.74,0.12,0.3025},}

function deleteWells()
 deleteWell(wellLocAct)
 for c=1,5 do deleteWell(wellLocsBot[c])end
 for c=1,5 do deleteWell(wellLocsTop[c])end
end

function pruneWells()
 if bench8 then
  if revbench then
   deleteWell(wellLocsBot[1])
   deleteWell(wellLocsBot[5])
  else
   deleteWell(wellLocsTop[1])
   deleteWell(wellLocsTop[5])
  end
 else
  if revbench then
   for c=1,5 do deleteWell(wellLocsBot[c])end
  else
   for c=1,5 do deleteWell(wellLocsTop[c])end
  end
 end
end

function deleteWell(pos)
 local well=checkForWell(pos)
 if well then well.destruct()end
end

function checkForWell(pos)
 local zone=castWrap(self.positionToWorld(pos),{0.5,0.5,0.5})
 for _,col in pairs(zone)do
  if col.hit_object.getName()==wellData.Nickname and col.hit_object.type=="Bag"then return col.hit_object end
 end
 return false
end

function createWells()
 createWell(wellLocAct)
 if revbench then
  for c=1,5 do createWell(wellLocsTop[c])end
 else
  for c=1,5 do createWell(wellLocsBot[c])end
 end
 if bench8 then
  if revbench then
   for c=2,4 do createWell(wellLocsBot[c])end
  else
   for c=2,4 do createWell(wellLocsTop[c])end
  end
 end
end

function createWell(pos)
 if not checkForWell(pos)then
  local selfScale=self.getScale()
  spawnObjectData({data=wellData,position=self.positionToWorld(pos),rotation=self.GetRotation(),scale={0.0145278450363*selfScale[1],0.05,0.0145278450363*selfScale[3]}})
 end
end

function set6Prizes(obj,color)
 setPrizes(getDeck(color),6)
end

function set4Prizes(obj,color)
 setPrizes(getDeck(color),4)
end

function set3Prizes(obj,color)
 setPrizes(getDeck(color),3)
end

function setPrizes(deck,number)
 if deck then
  for c=0,number-1,1 do
  local last=false
   if deck.remainder then last=true end
   local nextPrize=nil
   local skip=false
   if c>=6 then nextPrize={1.263+(0.274*math.floor(c/3)),0.3,-0.401+(c%3*0.431)}else nextPrize={1.263+(0.274*(c%2)),0.3,-0.401+(math.floor(c/2)*0.431)}end
   local zone=castWrap(self.positionToWorld(nextPrize),{2,0.5,3})
   for _,col in pairs(zone)do
    if (col.hit_object.type=="Card"or col.hit_object.type=="Deck")then skip=true end
   end
   if not skip then
    deck.takeObject({position=self.positionToWorld(nextPrize)})
    if last then return end
   end
  end
  return
 end
end

function toggleBench()
 if bench8 then bench8=false else bench8=true end
 createWells()
 pruneWells()
 setUpBoard()
 saveData()
end

function revBench()
 if revbench then revbench=false else revbench=true end
 createWells()
 pruneWells()
 setUpBoard()
 saveData()
end

function emptyWell(wellId,pos,flarePosRot,flipped)
 local wellPos={}
 local rot=self.getRotation()
 if flipped then rot[3]=rot[3]+180 end
 if wellId==0 then wellPos=wellLocAct elseif wellId<6 then wellPos=wellLocsBot[wellId]else wellPos=wellLocsTop[wellId-5]end
 local well=checkForWell(wellPos)
 if well then well.call("emptyWell",{pos,rot,flarePosRot[1],flarePosRot[2]})end
end

function getDisPos(obj)
 return obj.positionToWorld({-1.41,2,0.463})
end

function getDeckPos(obj)
 return obj.positionToWorld({-1.41,0.1,0.03})
end

function getOtherBoard()
 local zone=castWrap(self.positionToWorld({0,0,-2}),{1,1,10})
 for _,col in pairs(zone) do
  if col.hit_object.type=="Tile"and col.hit_object.getName()==self.getName()then
  return col.hit_object
  end
 end
end

function getOtherDisAndRot()
 local board=getOtherBoard()
 if board then
  return{getDisPos(board),board.GetRotation()}
 end
 local fallback={getDisPos(self),self.GetRotation()}
 fallback[1].y=fallback[1].y+2.5
 return fallback
end

function getOtherDeckAndRot()
 local board=getOtherBoard()
 if board then
  return{getDeckPos(board),board.GetRotation()}
 end
 local fallback={getDeckPos(self),self.GetRotation()}
 fallback[1].y=fallback[1].y+2.5
 return fallback
end

function discard(cardpos,wellId)
 local selfRot=self.getRotation()
 local disPos=getDisPos(self)
 local zone1=castWrap(cardpos,{2.5,2,4})
 for _,col in pairs(zone1) do
  if col.hit_object.type=="Card"or col.hit_object.type=="Deck"then
   col.hit_object.setPositionSmooth(disPos,false,false)
   col.hit_object.setRotationSmooth(selfRot,false,true)
  elseif col.hit_object.type=="Bag"and col.hit_object.getName()=="Multi-card brace"then
   col.hit_object.call("deleteBrace",{disPos,selfRot})
  end
 end
 emptyWell(wellId,getDisPos(self),getOtherDisAndRot(),false)
end

function cleanUpPrompt(obj,color)
 Player[color].showConfirmDialog("Put all the cards into the deck and shuffle it?",cleanUp)
end

function cleanUp()
 local selfRot=self.getRotation()
 selfRot.z=selfRot.z+180
 local deckPos=getDeckPos(self)
 local zone=castWrap(self.positionToWorld{0,0,0},{25,2,15})
 for _,col in pairs(zone) do
  processCleanUp(col.hit_object,deckPos,selfRot)
 end
 for c=0,10 do
  local otherDeck=getOtherDeckAndRot()
  otherDeck[2][3]=otherDeck[2][3]+180
  emptyWell(c,deckPos,otherDeck,true)
 end
 handToDeck(deckPos,selfRot)
 Wait.time(shuffleDeck,1.1)
end

function processCleanUp(obj,deckPos,selfRot)
 if obj.type=="Card"or obj.type=="Deck"then
  obj.use_hands=false
  obj.setPositionSmooth(deckPos,false,false)
  obj.setRotationSmooth(selfRot,false,true)
  Wait.time(function()obj.use_hands=true end,0.15)
 elseif obj.type=="Bag"and obj.getName()=="Multi-card brace"then
  obj.call("deleteBrace",{deckPos,selfRot})
 end
end

function shuffleDeck()
 local zone=castWrap(self.positionToWorld({-1.41,0.1,0.03}),{2.9,0.5,4})
 for _,col in pairs(zone)do
  if col.hit_object.type=="Deck"then
   col.hit_object.randomize()
  end
 end
end

function handToDeck(deckPos,selfRot)
 if hand then
  local handObjs=Player[hand].getHandObjects(1)
  for _,obj in pairs(handObjs) do
   processCleanUp(obj,deckPos,selfRot)
  end
 end
end

function botDeckHand(_,color)
 if hand then
  local selfRot=self.getRotation()
  selfRot.z=selfRot.z+180
  local deckPos=getDeckPos(self)
  deckPos[2]=deckPos[2]+0.27
  local upPos={deckPos[1],deckPos[2]+3,deckPos[3]}
  local zone=castWrap(deckPos,{2.9,0.5,4})
  for _,col in pairs(zone)do
   moveObject(col.hit_object,deckPos,upPos)
   col.hit_object.locked=true
   Wait.time(function()col.hit_object.locked=false end,1.1)
  end
  handToDeck(deckPos,selfRot)
  Wait.time(shuffleDeck,1.1)
 else
  broadcastToColor("Please sync a hand to this board.",color,{1,0,0})
 end
end

function groupPrizes()
 local zone=castWrap(self.positionToWorld({1.537,0.1,0.03}),{7,0.5,10})
 for _,col in pairs(zone)do
  if (col.hit_object.type=="Card"or col.hit_object.type=="Deck")and col.hit_object.is_face_down then
   col.hit_object.setPositionSmooth(self.positionToWorld{1.4,0.1,0.892},false,true)
  end
 end
 Wait.time(shufflePrizes,0.5)
end

function shufflePrizes()
 local zone=castWrap(self.positionToWorld{1.4,0.1,0.892},{2,0.5,3})
 for _,col in pairs(zone)do
  if col.hit_object.type=="Deck"then
   col.hit_object.randomize()
   Wait.time(function() setPrizes(col.hit_object,12)end,0.3)
  end
 end
end

WellLuaScript=
