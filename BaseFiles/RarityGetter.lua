function onLoad()
 local params={
 function_owner=self,
 font_size=180,
 width=1500,
 height=220,
 }
 butWrapper(params,{0,0,1},'Get Rarities',"Logs set rarities in notes",'GetRarities')
 butWrapper(params,{0,0,2},'Reset Loading',"Resets the loading var if it crashes",'resetLoad')
 butWrapper(params,{0,0,2.5},'Get Data from Input',"get card data from current input",'getInputData')
 butWrapper(params,{0,0,3},'convert dropSlots',"convert int dropslots to string",'ConvertDropSlots')
 butWrapper(params,{0,0,3.5},'account for yellow As',"adjust dropslots for yellow As",'AdjustForYellowAs')

 params.position={0,0,1.5}
 params.tooltip="The set ID to search"
 params.label='Enter Set ID'
 params.alignment=3
 params.input_function="processReturn"
 params.font_color={0,0,0}
 self.createInput(params)
end

function butWrapper(params,pos,label,tool,func)
 params.position=pos
 params.label=label
 params.tooltip=tool
 params.click_function=func
 self.createButton(params)
end

rarityTable={}

function GetRarities(obj,color,alt)
 local settings=Global.GetTable("PPacks")
 local pageSize=tonumber(settings.APICalls)or 3
 local loading=Global.GetVar("PPacksRarityLoading")
 rarityTable={}
 handleRarities(color)
end

reverseRarities={Common=true,Uncommon=true,Rare=true,["Rare Holo"]=true}

function sortByNum(a,b)
 local aNum=buildCardNumber(a,1)
 local bNum=buildCardNumber(b,1)
 return aNum<bNum
end

function handleRarities(color)
JSON=json.parse(string.gsub(input,"\\u0026","&"))
--credit to dzikakulka and Larikk
--use the below line in the parse instead if this line of code ever breaks
--string.gsub(request.text,[[\u([0-9a-fA-F]+)]],function(s)return([[\u{%s}]]):format(s)end)
 for c,cardData in ipairs(JSON)do
  if not (string.match(cardData.number,"^%d")and string.match(cardData.number,"%l$"))then
   if rarityTable[cardData.rarity] then
    table.insert(rarityTable[cardData.rarity],cardData.number)
   else
    rarityTable[cardData.rarity]={cardData.number}
   end
   if reverseRarities[cardData.rarity]then
    if rarityTable["Reverse Holo"] then
     table.insert(rarityTable["Reverse Holo"],cardData.number)
    else
     rarityTable["Reverse Holo"]={cardData.number}
    end
   end
  end
 end
 local outputStr=""
 for rarity,cards in pairs(rarityTable)do
  table.sort(cards,sortByNum)
  local lastnum=-1
  local chain=-1
  local cardsStr="={"
  for c,card in pairs(cards)do
   if not tonumber(card)then
    if lastNum!=-1 then
     cardsStr=finishChain(chain,lastnum,cardsStr,true)
     lastNum=-1
     chain=0
    end
    cardsStr=cardsStr..'"'..card..'"'..","
   elseif chain==-1 or tonumber(card)==tonumber(lastnum)+1 then
    chain=chain+1
    lastnum=card
   else
    cardsStr=finishChain(chain,lastnum,cardsStr,true)
    chain=0
    lastnum=card
   end
  end
  cardsStr=finishChain(chain,lastnum,cardsStr,false)
  outputStr=outputStr..rarity..cardsStr.."},size="..tostring(#cards).."\n"
 end
 Notes.setNotes(outputStr)
end

function finishChain(chain,lastnum,str,comma)
 local commatext=""
 if comma then commatext=","end
 if chain==0 then
  return str..'"'..lastnum..'"'..commatext
 elseif chain==1 then
  return str..'"'..lastnum-1 ..'","'..tostring(lastnum)..'"'..commatext
 else
  return str..'{"'..lastnum-chain..'","'..tostring(lastnum)..'"}'..commatext
 end
end

function getInputData(obj,color,alt)
 local parsed=json.parse(string.gsub(input,"\\u0026","&"))
 local output=''

 output='cardString=[[\ncardData={'
 local num=0
 for _,card in pairs(parsed) do
  local cardType=getSubTypeNum(card.subtypes)or subTypeNums[card.supertype]or 0
  local monType=enumTable(0,card.types,TypeNums,10,200)
  if monType==0 then monType=500 end
  num=num+1
  output=output..'["'..(card.number or"none")..'"]={\n name="'..card.name..'",\n GMN="'..tostring(cardType)..convertNatDex(card.nationalPokedexNumbers,card.subtypes)..'",\n typ="'..tostring(monType)..'"'
  if card.rarity and card.rarity!=""then
   output=output..',\n rar="'..string.gsub(card.rarity or "","[^%u]","")..'"'
  end
  if card.ID then
   output=output..',\n ID='..tostring(card.ID)
  else
   if tonumber(card.number)!=num then
    output=output..',\n ID='..tostring(input2+num)
   end
  end
  output=output..'\n},\n'
 end
 output=output..'}\n]]\n'
 Notes.setNotes(output)
end

function ConvertDropSlots(obj,color,alt)
 for c=0,9 do
  input=string.gsub(input,"{"..tostring(c),"{'"..tostring(c))
  input=string.gsub(input,tostring(c).."}",tostring(c).."'}")
  input=string.gsub(input,","..tostring(c),",'"..tostring(c))
  input=string.gsub(input,tostring(c)..",",tostring(c).."',")
 end
 input=string.gsub(input,"num=(%d+)'","num=%1")
 input=string.gsub(input,"size=(%d+)'","size=%1")
 Notes.setNotes("[["..input.."]]")
end

function AdjustForYellowAs(obj,color,alt)
output="dropslots={"
 for _,slot in pairs(input) do
  output=output.."\n{cards={"
  for _,num in pairs(slot.cards)do
   if _!=1 then output=output..","end
    local inc=0
   if type(num)=="table"then
    local inc2=0
    for _,A in pairs(input2)do
     if A<tonumber(num[1])then inc=inc+1 elseif A<tonumber(num[2])then inc2=inc2+1 end
    end
    output=output.."{'"..tostring(tonumber(num[1])-inc).."','"..tostring(tonumber(num[2])-(inc+inc2)).."'}"
   else
    for _,A in pairs(input2)do
     if A<tonumber(num)then inc=inc+1 end
    end
    output=output.."'"..tostring(tonumber(num)-inc).."'"
   end
  end
  output=output.."}"
  if slot.size then output=output..",size="..tostring(slot.size)end
  if slot.fixed then output=output..",fixed="..tostring(slot.fixed)end
  if slot.energy then output=output..",energy="..tostring(slot.energy)end
  if slot.digits then output=output..",digits="..tostring(slot.digits)end
  if slot.prefix then output=output..",prefix='"..slot.energy end
  output=output..",num="..tostring(slot.num).."},"
 end
 output=output.."}"
 Notes.SetNotes(output)
end

function makeDataString(str)
 local string=logString(str)
 string=string.gsub(string,"  +\""," ")
 string=string.gsub(string," 1: ","{{")
 string=string.gsub(string," +%d+: ","},{")
 string=string.gsub(string,"\": ","=\"")
 string=string.gsub(string,"([^%{%}])\n","%1\",\n")
 return "cardData="..string.."\"}}\n"
end

function LoadCardData(cardData,curCard)
 local cardType=getSubTypeNum(cardData.subtypes)or subTypeNums[cardData.supertype]or 0
 local monType=enumTable(0,cardData.types,TypeNums,10,200)
 if monType==0 then monType=500 end
 dataTable['\["'..cardData.number..'"\]']={
  name=cardData.name,
  rar=string.gsub(cardData.rarity or "","[^%u]",""),
  GMN=tostring(cardType)..convertNatDex(cardData.nationalPokedexNumbers,cardData.subtypes),
  typ=tostring(monType)}
end

function processReturn(obj,color,value,selected)
 local subedValue=string.gsub(value,"\n","")
 if subedValue!=value then
  Wait.frames(function()GetRarities(obj,color,false) end,1)
 end
 return subedValue
end

function resetLoad()
 Global.SetVar("PPacksRarityLoading",0)
end

function getSubTypeNum(subTypes)
 if subTypes then
  for c=1,#subTypes do
   if subTypeNums[subTypes[c]]then return subTypeNums[subTypes[c]]end
  end
 end
 return false
end

function convertNatDex(dexNums,subTypes)
 if dexNums then dexNum=dexNums[1]else return"0000000"end
 if natDexReplace[dexNum] then
  dexNum=natDexReplace[dexNum]
 else
  dexNum=tostring(dexNum*10)
  while #dexNum<5 do dexNum="0"..dexNum end
 end
 local monSubType=tostring(enumTable(0,subTypes,monSubTypeNums,0,0))
 while #monSubType<2 do monSubType="0"..monSubType end
 return dexNum..monSubType
end

function enumTable(enum,input,values,multi,extramulti)
 if input then
  for c=1,#input do
   if values[input[c]]then
    enum=enum+values[input[c]]*(1+multi)
    if multi==0 then enum=enum+extramulti else multi=0 end
   end
  end
 end
 return enum
end

subTypeNums={
 ["Trainer"]=3,
 ["Supporter"]=4,
 ["Stadium"]=5,
 ["Pokémon Tool"]=6,
 ["Technical Machine"]=6,
 ["Special"]=8,
 ["Energy"]=9
}

TypeNums={
 Grass=1,
 Fire=2,
 Water=3,
 Lightning=4,
 Psychic=5,
 Fighting=6,
 Darkness=7,
 Metal=8,
 Fairy=9,
 Dragon=10,
 Colorless=11,
}

monSubTypeNums={
 ["Level-Up"]=1,
 BREAK=2,
 EX=3,
 MEGA=1,
 GX=5,
 ["TAG TEAM"]=1,
 SP=7,
 LEGEND=9,
 V=10,
 VMAX=11,
 VSTAR=12,
}

natDexReplace={
 [172]="00245",
 [173]="00345",
 [174]="00385",
 [169]="00425",
 [182]="00455",
 [863]="00535",
 [186]="00625",
 [199]="00805",
 [462]="00823",
 [865]="00827",
 [208]="00955",
 [236]="01055",
 [237]="01075",
 [463]="01085",
 [464]="01123",
 [440]="01127",
 [242]="01135",
 [465]="01145",
 [230]="01175",
 [439]="01215",
 [866]="01225",
 [212]="01233",
 [238]="01237",
 [239]="01245",
 [466]="01253",
 [240]="01257",
 [467]="01265",
 [196]="01361",
 [197]="01362",
 [470]="01363",
 [471]="01364",
 [700]="01365",
 [233]="01373",
 [474]="01377",
 [446]="01425",
 [468]="01765",
 [298]="01825",
 [438]="01845",
 [424]="01905",
 [469]="01935",
 [430]="01985",
 [429]="02005",
 [360]="02015",
 [472]="02075",
 [461]="02155",
 [473]="02215",
 [864]="02225",
 [458]="02255",
 [862]="02645",
 [475]="02825",
 [476]="02995",
 [406]="03145",
 [407]="03155",
 [477]="03565",
 [433]="03575",
 [478]="03625",
 [867]="05635",
 [899]="02345",
 [900]="01237",
 [901]="02175",
 [902]="05505",
 [903]="02157",
 [904]="02115",
 [979]="00575",
 [980]="01945",
 [981]="02035",
 [982]="02065",
 [983]="06255",
 [1011]="08425",
 [1018]="08845",
 [1019]="08426",
}

function buildCardNumber(cardNum)
 if cardNum then
  local numOnly=string.gsub(cardNum,"[^%d]","")
  if numOnly~=cardNum then
   local finalNum=(tonumber(numOnly)or 0)+500
   for c in cardNum:gmatch"[^%d]" do
    if c=="?"then c="}"end
    if c=="!"then c="{"end
    finalNum=string.byte(c)-65+finalNum
   end
   cardNum=finalNum
  else
   cardNum=tonumber(cardNum)
  end
 else
  cardNum=0
 end
 return cardNum
end

input=[[
[
 {
    "id": "me55c-58",
    "name": "Pikachu",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic"
    ],
    "hp": "40",
    "types": [
      "Lightning"
    ],
    "attacks": [
      {
        "name": "Gnaw",
        "cost": [
          "Colorless"
        ],
        "convertedEnergyCost": 1,
        "damage": "10"
      },
      {
        "name": "Thunder Jolt",
        "cost": [
          "Lightning",
          "Colorless"
        ],
        "convertedEnergyCost": 2,
        "damage": "30",
        "text": "Flip a coin. If tails, Pikachu does 10 damage to itself."
      }
    ],
    "weaknesses": [
      {
        "type": "Fighting",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless"
    ],
    "convertedRetreatCost": 1,
    "number": "58",
    "artist": "Mitsuhiro Arita",
    "rarity": "Common",
    "nationalPokedexNumbers": [
      25
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-58/small",
      "large": "https://images.scrydex.com/pokemon/me55c-58/large"
    }
  },
  {
    "id": "me55c-4",
    "name": "Charizard",
    "supertype": "Pokémon",
    "subtypes": [
      "Stage 2"
    ],
    "hp": "120",
    "types": [
      "Fire"
    ],
    "evolvesFrom": "Charmeleon",
    "abilities": [
      {
        "name": "Energy Burn",
        "text": "As often as you like during your turn (before your attack), you may turn all Energy attached to Charizard into Fire Energy for the rest of the turn. This power can't be used if Charizard is Asleep, Confused, or Paralyzed.",
        "type": "Pokémon Power"
      }
    ],
    "attacks": [
      {
        "name": "Fire Spin",
        "cost": [
          "Fire",
          "Fire",
          "Fire",
          "Fire"
        ],
        "convertedEnergyCost": 4,
        "damage": "100",
        "text": "Discard 2 Energy cards attached to Charizard in order to use this attack."
      }
    ],
    "weaknesses": [
      {
        "type": "Water",
        "value": "×2"
      }
    ],
    "resistances": [
      {
        "type": "Fighting",
        "value": "-30"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 3,
    "number": "4",
    "artist": "Mitsuhiro Arita",
    "rarity": "Rare Holo",
    "nationalPokedexNumbers": [
      6
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-4/small",
      "large": "https://images.scrydex.com/pokemon/me55c-4/large"
    }
  },
  {
    "id": "me55c-18",
    "name": "Misty",
    "supertype": "Trainer",
    "rules": [
      "Discard 2 of the other cards in your hand in order to play this card. If this turn's attack does damage to the Defending Pokémon (after applying Weakness and Resistance), and if the attacking Pokémon has Misty in its name, the attack does 20 more damage to the Defending Pokémon."
    ],
    "number": "18",
    "artist": "Ken Sugimori",
    "rarity": "Rare Holo",
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-18/small",
      "large": "https://images.scrydex.com/pokemon/me55c-18/large"
    }
  },
  {
    "id": "me55c-69",
    "name": "Erika's Jigglypuff",
    "supertype": "Trainer",
    "subtypes": [
      "Basic"
    ],
    "hp": "50",
    "types": [
      "Colorless"
    ],
    "attacks": [
      {
        "name": "Group Therapy",
        "cost": [
          "Colorless"
        ],
        "convertedEnergyCost": 1,
        "text": "You and your opponent remove 1 damage counter from each of your Pokémon with damage counters on them."
      },
      {
        "name": "Pulled Punch",
        "cost": [
          "Colorless",
          "Colorless"
        ],
        "convertedEnergyCost": 2,
        "damage": "40-",
        "text": "If the Defending Pokémon has no damage counters on it, this attack does 40 damage. If it has any damage counters on it, this attack does 10 damage."
      }
    ],
    "weaknesses": [
      {
        "type": "Fighting",
        "value": "×2"
      }
    ],
    "resistances": [
      {
        "type": "Psychic",
        "value": "-30"
      }
    ],
    "retreatCost": [
      "Colorless"
    ],
    "convertedRetreatCost": 1,
    "number": "69",
    "artist": "Ken Sugimori",
    "rarity": "Common",
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-69/small",
      "large": "https://images.scrydex.com/pokemon/me55c-69/large"
    }
  },
  {
    "id": "me55c-25",
    "name": "Sneasel",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic"
    ],
    "hp": "60",
    "types": [
      "Darkness"
    ],
    "attacks": [
      {
        "name": "Fury Swipes",
        "cost": [
          "Colorless"
        ],
        "convertedEnergyCost": 1,
        "damage": "10×",
        "text": "Flip 3 coins. This attack does 10 damage times the number of heads."
      },
      {
        "name": "Beat Up",
        "cost": [
          "Darkness",
          "Darkness"
        ],
        "convertedEnergyCost": 2,
        "damage": "20×",
        "text": "Flip a coin for each of your Pokémon in play (including this one). This attack does 20 damage times the number of heads."
      }
    ],
    "resistances": [
      {
        "type": "Psychic",
        "value": "-30"
      }
    ],
    "number": "25",
    "artist": "Ken Sugimori",
    "rarity": "Rare",
    "nationalPokedexNumbers": [
      215
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-25/small",
      "large": "https://images.scrydex.com/pokemon/me55c-25/large"
    }
  },
  {
    "id": "me55c-106",
    "name": "Shining Celebi",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic"
    ],
    "hp": "50",
    "types": [
      "Grass"
    ],
    "rules": [
      "You can't have more than 1 Shining Celebi in your deck."
    ],
    "attacks": [
      {
        "name": "Healing Water",
        "cost": [
          "Water"
        ],
        "convertedEnergyCost": 1,
        "text": "Remove a number of damage counters from 1 of your Benched Pokémon equal to the number of Water Energy cards attached to Shining Celebi. If the Pokémon has fewer damage counters than that, remove all of them."
      },
      {
        "name": "Miracle Leaf",
        "cost": [
          "Grass",
          "Psychic"
        ],
        "convertedEnergyCost": 2,
        "damage": "10",
        "text": "Flip a number of coins equal to the number of Energy attached to the Defending Pokémon. If you get 1 or more heads, the Defending Pokémon is now Asleep, Confused, or Poisoned (your choice)."
      }
    ],
    "weaknesses": [
      {
        "type": "Fire",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless"
    ],
    "convertedRetreatCost": 1,
    "number": "106",
    "artist": "Hironobu Yoshida",
    "rarity": "Rare Secret",
    "nationalPokedexNumbers": [
      251
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-106/small",
      "large": "https://images.scrydex.com/pokemon/me55c-106/large"
    }
  },
  {
    "id": "me55c-149",
    "name": "Lugia",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic"
    ],
    "hp": "80",
    "types": [
      "Colorless"
    ],
    "abilities": [
      {
        "name": "Crystal Type",
        "text": "Whenever you attach a Fire, Water, or Psychic basic Energy card from your hand to Lugia, Lugia's type (color) becomes the same as that Energy card type until the end of the turn.",
        "type": "Poké-BODY"
      }
    ],
    "attacks": [
      {
        "name": "Psychic",
        "cost": [
          "Psychic",
          "Fire"
        ],
        "convertedEnergyCost": 2,
        "damage": "10×",
        "text": "This attack does 10 damage times the number of Energy cards attached to the Defending Pokémon."
      },
      {
        "name": "Steam Blast",
        "cost": [
          "Water",
          "Water",
          "Fire",
          "Colorless"
        ],
        "convertedEnergyCost": 4,
        "damage": "50",
        "text": "Discard an Energy card attached to Lugia."
      }
    ],
    "weaknesses": [
      {
        "type": "Psychic",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 3,
    "number": "149",
    "artist": "Naoyo Kimura",
    "rarity": "Rare Secret",
    "nationalPokedexNumbers": [
      249
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-149/small",
      "large": "https://images.scrydex.com/pokemon/me55c-149/large"
    }
  },
  {
    "id": "me55c-5",
    "name": "Delcatty",
    "supertype": "Pokémon",
    "subtypes": [
      "Stage 1"
    ],
    "hp": "70",
    "types": [
      "Colorless"
    ],
    "evolvesFrom": "Skitty",
    "abilities": [
      {
        "name": "Energy Draw",
        "text": "Once during your turn (before your attack), you may discard 1 Energy card from your hand. Then draw up to 3 cards from your deck. This power can't be used if Delcatty is affected by a Special Condition.",
        "type": "Poké-POWER"
      }
    ],
    "attacks": [
      {
        "name": "Max Energy Source",
        "cost": [
          "Colorless"
        ],
        "convertedEnergyCost": 1,
        "damage": "10×",
        "text": "Does 10 damage times the amount of Energy attached to all of your Active Pokémon."
      }
    ],
    "weaknesses": [
      {
        "type": "Fighting",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless"
    ],
    "convertedRetreatCost": 1,
    "number": "5",
    "artist": "Atsuko Nishida",
    "rarity": "Rare Holo",
    "nationalPokedexNumbers": [
      301
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-5/small",
      "large": "https://images.scrydex.com/pokemon/me55c-5/large"
    }
  },
  {
    "id": "me55c-19",
    "name": "Dark Tyranitar",
    "supertype": "Pokémon",
    "subtypes": [
      "Stage 2"
    ],
    "hp": "120",
    "types": [
      "Darkness"
    ],
    "evolvesFrom": "Dark Pupitar",
    "attacks": [
      {
        "name": "Grind",
        "cost": [
          "Colorless"
        ],
        "convertedEnergyCost": 1,
        "damage": "10+",
        "text": "Does 10 damage plus 10 more damage for each Energy attached to Dark Tyranitar."
      },
      {
        "name": "Spinning Tail",
        "cost": [
          "Darkness",
          "Colorless",
          "Colorless"
        ],
        "convertedEnergyCost": 3,
        "text": "Does 20 damage to each of your opponent's Pokémon. (Don't apply Weakness and Resistance for Benched Pokémon.)"
      },
      {
        "name": "Bite Off",
        "cost": [
          "Darkness",
          "Darkness",
          "Colorless",
          "Colorless",
          "Colorless"
        ],
        "convertedEnergyCost": 5,
        "damage": "70+",
        "text": "If the Defending Pokémon is Pokémon-ex, this attack does 70 damage plus 50 more damage."
      }
    ],
    "weaknesses": [
      {
        "type": "Fighting",
        "value": "×2"
      }
    ],
    "resistances": [
      {
        "type": "Psychic",
        "value": "-30"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 2,
    "number": "19",
    "artist": "Nakaoka",
    "rarity": "Rare",
    "nationalPokedexNumbers": [
      248
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-19/small",
      "large": "https://images.scrydex.com/pokemon/me55c-19/large"
    }
  },
  {
    "id": "me55c-108",
    "name": "Scizor ex",
    "supertype": "Pokémon",
    "subtypes": [
      "Stage 1",
      "ex"
    ],
    "hp": "120",
    "types": [
      "Metal"
    ],
    "evolvesFrom": "Scyther",
    "rules": [
      "When Pokémon-ex has been Knocked Out, your opponent takes 2 Prize cards."
    ],
    "abilities": [
      {
        "name": "Danger Perception",
        "text": "As long as Scizor ex's remaining HP is 60 or less, Scizor ex does 40 more damage to the Defending Pokémon (before applying Weakness and Resistance).",
        "type": "Poké-BODY"
      }
    ],
    "attacks": [
      {
        "name": "Steel Wing",
        "cost": [
          "Metal",
          "Colorless"
        ],
        "convertedEnergyCost": 2,
        "damage": "40",
        "text": "During your opponent's next turn, any damage done to Scizor ex by attacks is reduced by 20 (after applying Weakness and Resistance)."
      },
      {
        "name": "Cross-Cut",
        "cost": [
          "Colorless",
          "Colorless",
          "Colorless"
        ],
        "convertedEnergyCost": 3,
        "damage": "50+",
        "text": "If the Defending Pokémon is an Evolved Pokémon, this attack does 50 damage plus 30 more damage."
      }
    ],
    "weaknesses": [
      {
        "type": "Fire",
        "value": "×2"
      }
    ],
    "resistances": [
      {
        "type": "Grass",
        "value": "-30"
      }
    ],
    "retreatCost": [
      "Colorless"
    ],
    "convertedRetreatCost": 1,
    "number": "108",
    "artist": "Mitsuhiro Arita",
    "rarity": "Rare Holo ex",
    "nationalPokedexNumbers": [
      212
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-108/small",
      "large": "https://images.scrydex.com/pokemon/me55c-108/large"
    }
  },
  {
    "id": "me55c-11",
    "name": "Metagross",
    "supertype": "Pokémon",
    "subtypes": [
      "Stage 2"
    ],
    "hp": "100",
    "types": [
      "Lightning",
      "Metal"
    ],
    "evolvesFrom": "Metang",
    "rules": [
      "This Pokémon is both Lightning Metal type."
    ],
    "abilities": [
      {
        "name": "Delta Control",
        "text": "Once during your turn (before your attack), you may look at the top 4 cards of your deck, choose 1 of them, and put it into your hand. Put the 3 other cards on the bottom of your deck in any order. This power can't be used if Metagross is affected by a Special Condition.",
        "type": "Poké-POWER"
      }
    ],
    "attacks": [
      {
        "name": "Crush and Burn",
        "cost": [
          "Lightning",
          "Metal"
        ],
        "convertedEnergyCost": 2,
        "damage": "30+",
        "text": "You may discard as many Energy cards as you like attached to your Pokémon in play. If you do, this attack does 30 damage plus 20 more damage for each Energy card you discarded."
      }
    ],
    "weaknesses": [
      {
        "type": "Fire",
        "value": "×2"
      }
    ],
    "resistances": [
      {
        "type": "Grass",
        "value": "-30"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 3,
    "number": "11",
    "artist": "Masakazu Fukuda",
    "rarity": "Rare Holo",
    "nationalPokedexNumbers": [
      376
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-11/small",
      "large": "https://images.scrydex.com/pokemon/me55c-11/large"
    }
  },
  {
    "id": "me55c-106p",
    "name": "Palkia LV.X",
    "supertype": "Pokémon",
    "subtypes": [
      "LEVEL-UP"
    ],
    "hp": "120",
    "types": [
      "Water"
    ],
    "evolvesFrom": "Palkia",
    "rules": [
      "Put this card onto your Active Palkia. Palkia LV.X can use any attack, Poké-Power, or Poké-Body from its previous level."
    ],
    "abilities": [
      {
        "name": "Restructure",
        "text": "Once during your turn (before your attack), you may have your opponent switch 1 of your Active Pokémon with 1 of your Benched Pokémon. Then, you switch 1 of the Defending Pokémon with 1 of your opponent's Benched Pokémon. This power can't be used if Palkia is affected by a Special Condition.",
        "type": "Poké-POWER"
      }
    ],
    "attacks": [
      {
        "name": "Hydro Reflect",
        "cost": [
          "Water",
          "Water",
          "Water"
        ],
        "convertedEnergyCost": 3,
        "damage": "60",
        "text": "You may move all Energy cards attached to Palkia to your Benched Pokémon in any way you like. (Ignore this effect if you don't have any Benched Pokémon.)"
      }
    ],
    "weaknesses": [
      {
        "type": "Lightning",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 3,
    "number": "106",
    "artist": "Ryo Ueda",
    "rarity": "Rare Holo LV.X",
    "nationalPokedexNumbers": [
      484
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-106p/small",
      "large": "https://images.scrydex.com/pokemon/me55c-106p/large"
    }
  },
  {
    "id": "me55c-43",
    "name": "Uxie",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic"
    ],
    "hp": "70",
    "types": [
      "Psychic"
    ],
    "abilities": [
      {
        "name": "Set Up",
        "text": "Once during your turn, when you put Uxie from your hand onto your Bench, you may draw cards until you have 7 cards in your hand.",
        "type": "Poké-POWER"
      }
    ],
    "attacks": [
      {
        "name": "Psychic Restore",
        "cost": [
          "Colorless"
        ],
        "convertedEnergyCost": 1,
        "damage": "20",
        "text": "You may put Uxie and all cards attached to it on the bottom of your deck in any order."
      }
    ],
    "weaknesses": [
      {
        "type": "Psychic",
        "value": "+20"
      }
    ],
    "retreatCost": [
      "Colorless"
    ],
    "convertedRetreatCost": 1,
    "number": "43",
    "artist": "Ken Sugimori",
    "rarity": "Rare",
    "nationalPokedexNumbers": [
      480
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-43/small",
      "large": "https://images.scrydex.com/pokemon/me55c-43/large"
    }
  },
  {
    "id": "me55c-47",
    "name": "Crobat G",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic"
    ],
    "hp": "80",
    "types": [
      "Psychic"
    ],
    "abilities": [
      {
        "name": "Flash Bite",
        "text": "Once during your turn, when you put Crobat G from your hand onto your Bench, you may put 1 damage counter on 1 of your opponent's Pokémon.",
        "type": "Poké-POWER"
      }
    ],
    "attacks": [
      {
        "name": "Toxic Fang",
        "cost": [
          "Psychic",
          "Colorless"
        ],
        "convertedEnergyCost": 2,
        "text": "The Defending Pokémon is now Poisoned. Put 2 damage counters instead of 1 on the Defending Pokémon between turns."
      }
    ],
    "weaknesses": [
      {
        "type": "Lightning",
        "value": "×2"
      }
    ],
    "resistances": [
      {
        "type": "Fighting",
        "value": "-20"
      }
    ],
    "number": "47",
    "artist": "Makoto Imai",
    "rarity": "Uncommon",
    "nationalPokedexNumbers": [
      169
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-47/small",
      "large": "https://images.scrydex.com/pokemon/me55c-47/large"
    }
  },
  {
    "id": "me55c-94",
    "name": "Gengar",
    "supertype": "Pokémon",
    "subtypes": [
      "Stage 2"
    ],
    "hp": "130",
    "types": [
      "Psychic"
    ],
    "evolvesFrom": "Haunter",
    "abilities": [
      {
        "name": "Catastrophe",
        "text": "As long as Gengar is your Active Pokémon, if any of your opponent's Pokémon would be Knocked Out, put that Pokémon in the Lost Zone instead of discarding. (Discard all cards attached to that Pokémon.)",
        "type": "Poké-BODY"
      }
    ],
    "attacks": [
      {
        "name": "Hurl into Darkness",
        "cost": [
          "Psychic"
        ],
        "convertedEnergyCost": 1,
        "text": "Look at your opponent's hand and choose a number of Pokémon you find there up to the number of Psychic Energy attached to Gengar. Put the Pokémon you chose in the Lost Zone."
      },
      {
        "name": "Cursed Drop",
        "cost": [
          "Psychic",
          "Colorless"
        ],
        "convertedEnergyCost": 2,
        "text": "Put 4 damage counters on your opponent's Pokémon in any way you like."
      }
    ],
    "weaknesses": [
      {
        "type": "Darkness",
        "value": "×2"
      }
    ],
    "resistances": [
      {
        "type": "Colorless",
        "value": "-20"
      }
    ],
    "number": "94",
    "artist": "Takashi Yamaguchi",
    "rarity": "Rare Prime",
    "nationalPokedexNumbers": [
      94
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-94/small",
      "large": "https://images.scrydex.com/pokemon/me55c-94/large"
    }
  },
  {
    "id": "me55c-99",
    "name": "Darkrai & Cresselia LEGEND",
    "supertype": "Pokémon",
    "subtypes": [
      "LEGEND"
    ],
    "hp": "150",
    "types": [
      "Darkness",
      "Psychic"
    ],
    "rules": [
      "Put this card from your hand onto your Bench only with the other half of Darkrai & Cresselia LEGEND.",
      "When this Pokémon has been Knocked Out, your opponent takes 2 Prize cards."
    ],
    "attacks": [
      {
        "name": "Lost Crisis",
        "cost": [
          "Darkness",
          "Darkness",
          "Colorless",
          "Colorless"
        ],
        "convertedEnergyCost": 4,
        "damage": "100",
        "text": "Choose 2 Energy attached to Darkrai & Cresselia LEGEND and put them in the Lost Zone. If any of your opponent's Pokémon would be Knocked Out by damage from this attack, put that Pokémon and all cards attached to it in the Lost Zone instead of discarding it."
      },
      {
        "name": "Moon's Invite",
        "cost": [
          "Psychic"
        ],
        "convertedEnergyCost": 1,
        "text": "Move as many damage counters on your opponent's Pokémon as you like to any of your opponent's other Pokémon in any way you like."
      }
    ],
    "weaknesses": [
      {
        "type": "Fighting",
        "value": "×2"
      },
      {
        "type": "Psychic",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 2,
    "number": "99",
    "artist": "Noriko Takaya,                   \n                    \n                      Shinji Higuchi",
    "rarity": "LEGEND",
    "nationalPokedexNumbers": [
      488
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-99/small",
      "large": "https://images.scrydex.com/pokemon/me55c-99/large"
    }
  },
  {
    "id": "me55c-100",
    "name": "Darkrai & Cresselia LEGEND",
    "supertype": "Pokémon",
    "subtypes": [
      "LEGEND"
    ],
    "hp": "150",
    "types": [
      "Darkness",
      "Psychic"
    ],
    "rules": [
      "Put this card from your hand onto your Bench only with the other half of Darkrai & Cresselia LEGEND.",
      "When this Pokémon has been Knocked Out, your opponent takes 2 Prize cards."
    ],
    "attacks": [
      {
        "name": "Lost Crisis",
        "cost": [
          "Darkness",
          "Darkness",
          "Colorless",
          "Colorless"
        ],
        "convertedEnergyCost": 4,
        "damage": "100",
        "text": "Choose 2 Energy attached to Darkrai & Cresselia LEGEND and put them in the Lost Zone. If any of your opponent's Pokémon would be Knocked Out by damage from this attack, put that Pokémon and all cards attached to it in the Lost Zone instead of discarding it."
      },
      {
        "name": "Moon's Invite",
        "cost": [
          "Psychic"
        ],
        "convertedEnergyCost": 1,
        "text": "Move as many damage counters on your opponent's Pokémon as you like to any of your opponent's other Pokémon in any way you like."
      }
    ],
    "weaknesses": [
      {
        "type": "Fighting",
        "value": "×2"
      },
      {
        "type": "Psychic",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 2,
    "number": "100",
    "artist": "Noriko Takaya,                   \n                    \n                      Shinji Higuchi",
    "rarity": "LEGEND",
    "nationalPokedexNumbers": [
      488
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-100/small",
      "large": "https://images.scrydex.com/pokemon/me55c-100/large"
    }
  },
  {
    "id": "me55c-101",
    "name": "N",
    "supertype": "Trainer",
    "subtypes": [
      "Supporter"
    ],
    "rules": [
      "Each player shuffles his or her hand into his or her deck. Then, each player draws a card for each of his or her remaining Prize cards.",
      "You may play only 1 Supporter card during your turn (before your attack)."
    ],
    "number": "101",
    "artist": "Ken Sugimori",
    "rarity": "Rare Ultra",
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-101/small",
      "large": "https://images.scrydex.com/pokemon/me55c-101/large"
    }
  },
  {
    "id": "me55c-85",
    "name": "Rayquaza-EX",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic",
      "EX"
    ],
    "hp": "170",
    "types": [
      "Dragon"
    ],
    "rules": [
      "When a Pokémon-EX has been Knocked Out, your opponent takes 2 Prize cards."
    ],
    "attacks": [
      {
        "name": "Celestial Roar",
        "cost": [
          "Colorless"
        ],
        "convertedEnergyCost": 1,
        "text": "Discard the top 3 cards of your deck. If any of those cards are Energy cards, attach them to this Pokémon."
      },
      {
        "name": "Dragon Burst",
        "cost": [
          "Fire",
          "Lightning"
        ],
        "convertedEnergyCost": 2,
        "damage": "60×",
        "text": "Discard all basic Fire Energy or all basic Lightning Energy attached to this Pokémon. This attack does 60 damage times the number of Energy cards you discarded."
      }
    ],
    "weaknesses": [
      {
        "type": "Dragon",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless"
    ],
    "convertedRetreatCost": 1,
    "number": "85",
    "artist": "Eske Yoshinob",
    "rarity": "Rare Holo EX",
    "nationalPokedexNumbers": [
      384
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-85/small",
      "large": "https://images.scrydex.com/pokemon/me55c-85/large"
    }
  },
  {
    "id": "me55c-11g",
    "name": "Genesect-EX",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic",
      "EX"
    ],
    "hp": "170",
    "types": [
      "Grass"
    ],
    "rules": [
      "When a Pokémon-EX has been Knocked Out, your opponent takes 2 Prize cards."
    ],
    "abilities": [
      {
        "name": "Red Signal",
        "text": "When you attach a Plasma Energy from your hand to this Pokémon, you may switch 1 of your opponent's Benched Pokémon with his or her Active Pokémon.",
        "type": "Ability"
      }
    ],
    "attacks": [
      {
        "name": "Megalo Cannon",
        "cost": [
          "Grass",
          "Grass",
          "Colorless"
        ],
        "convertedEnergyCost": 3,
        "damage": "100",
        "text": "Does 20 damage to 1 of your opponent's Benched Pokémon. (Don't apply Weakness and Resistance for Benched Pokémon.)"
      }
    ],
    "weaknesses": [
      {
        "type": "Fire",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless"
    ],
    "convertedRetreatCost": 1,
    "number": "11",
    "artist": "Eske Yoshinob",
    "rarity": "Rare Holo EX",
    "nationalPokedexNumbers": [
      649
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-11g/small",
      "large": "https://images.scrydex.com/pokemon/me55c-11g/large"
    }
  },
  {
    "id": "me55c-106m",
    "name": "M Gardevoir-EX",
    "supertype": "Pokémon",
    "subtypes": [
      "MEGA",
      "EX"
    ],
    "hp": "210",
    "types": [
      "Fairy"
    ],
    "evolvesFrom": "Gardevoir-EX",
    "rules": [
      "When 1 of your Pokémon becomes a Mega Evolution Pokémon, your turn ends.",
      "When a Pokémon-EX has been Knocked Out, your opponent takes 2 Prize cards."
    ],
    "attacks": [
      {
        "name": "Brilliant Arrow",
        "cost": [
          "Fairy",
          "Colorless",
          "Colorless"
        ],
        "convertedEnergyCost": 3,
        "damage": "30×",
        "text": "This attack does 30 damage times the number of Fairy Energy attached to all of your Pokémon."
      }
    ],
    "weaknesses": [
      {
        "type": "Metal",
        "value": "×2"
      }
    ],
    "resistances": [
      {
        "type": "Darkness",
        "value": "-20"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 2,
    "number": "106",
    "artist": "5ban Graphics",
    "rarity": "Rare Holo EX",
    "nationalPokedexNumbers": [
      282
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-106m/small",
      "large": "https://images.scrydex.com/pokemon/me55c-106m/large"
    }
  },
  {
    "id": "me55c-41",
    "name": "Greninja BREAK",
    "supertype": "Pokémon",
    "subtypes": [
      "BREAK"
    ],
    "hp": "170",
    "types": [
      "Water"
    ],
    "evolvesFrom": "Greninja",
    "rules": [
      "Greninja BREAK retains the attacks, Abilities, Weakness, Resistance, and Retreat Cost of its previous Evolution."
    ],
    "abilities": [
      {
        "name": "Giant Water Shuriken",
        "text": "Once during your turn (before your attack), if this Pokémon is your Active Pokémon, you may discard a Water Energy card from your hand. If you do, put 6 damage counters on 1 of your opponents Pokémon.",
        "type": "Ability"
      }
    ],
    "number": "41",
    "artist": "5ban Graphics",
    "rarity": "Rare BREAK",
    "nationalPokedexNumbers": [
      658
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-41/small",
      "large": "https://images.scrydex.com/pokemon/me55c-41/large"
    }
  },
  {
    "id": "me55c-89",
    "name": "Solgaleo-GX",
    "supertype": "Pokémon",
    "subtypes": [
      "Stage 2",
      "GX"
    ],
    "hp": "250",
    "types": [
      "Metal"
    ],
    "evolvesFrom": "Cosmoem",
    "rules": [
      "When your Pokémon-GX is Knocked Out, your opponent takes 2 Prize cards."
    ],
    "abilities": [
      {
        "name": "Ultra Road",
        "text": "Once during your turn (before your attack), you may switch your Active Pokémon with 1 of your Benched Pokémon.",
        "type": "Ability"
      }
    ],
    "attacks": [
      {
        "name": "Sunsteel Strike",
        "cost": [
          "Metal",
          "Metal",
          "Colorless"
        ],
        "convertedEnergyCost": 3,
        "damage": "230",
        "text": "Discard all Energy from this Pokémon."
      },
      {
        "name": "Sol Burst-GX",
        "cost": [
          "Metal"
        ],
        "convertedEnergyCost": 1,
        "text": "Search your deck for up to 5 Energy cards and attach them to your Pokémon in any way you like. Then, shuffle your deck. (You can't use more than 1 GX attack in a game.)"
      }
    ],
    "weaknesses": [
      {
        "type": "Fire",
        "value": "×2"
      }
    ],
    "resistances": [
      {
        "type": "Psychic",
        "value": "-20"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 3,
    "number": "89",
    "artist": "PLANETA",
    "rarity": "Rare Holo GX",
    "nationalPokedexNumbers": [
      791
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-89/small",
      "large": "https://images.scrydex.com/pokemon/me55c-89/large"
    }
  },
  {
    "id": "me55c-57",
    "name": "Buzzwole-GX",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic",
      "GX"
    ],
    "hp": "190",
    "types": [
      "Fighting"
    ],
    "rules": [
      "When your Pokémon-GX is Knocked Out, your opponent takes 2 Prize cards."
    ],
    "attacks": [
      {
        "name": "Jet Punch",
        "cost": [
          "Fighting"
        ],
        "convertedEnergyCost": 1,
        "damage": "30",
        "text": "This attack does 30 damage to 1 of your opponent's Benched Pokémon. (Don't apply Weakness and Resistance for Benched Pokémon.)"
      },
      {
        "name": "Knuckle Impact",
        "cost": [
          "Fighting",
          "Fighting",
          "Fighting"
        ],
        "convertedEnergyCost": 3,
        "damage": "160",
        "text": "This Pokémon can't attack during your next turn."
      },
      {
        "name": "Absorption-GX",
        "cost": [
          "Fighting",
          "Fighting",
          "Fighting"
        ],
        "convertedEnergyCost": 3,
        "damage": "40×",
        "text": "This attack does 40 damage for each of your remaining Prize cards. (You can't use more than 1 GX attack in a game.)"
      }
    ],
    "weaknesses": [
      {
        "type": "Psychic",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 2,
    "number": "57",
    "artist": "5ban Graphics",
    "rarity": "Rare Holo GX",
    "nationalPokedexNumbers": [
      794
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-57/small",
      "large": "https://images.scrydex.com/pokemon/me55c-57/large"
    }
  },
  {
    "id": "me55c-33",
    "name": "Pikachu & Zekrom-GX",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic",
      "GX",
      "TAG TEAM"
    ],
    "hp": "240",
    "types": [
      "Lightning"
    ],
    "rules": [
      "When your TAG TEAM is Knocked Out, your opponent takes 3 Prize cards."
    ],
    "attacks": [
      {
        "name": "Full Blitz",
        "cost": [
          "Lightning",
          "Lightning",
          "Lightning"
        ],
        "convertedEnergyCost": 3,
        "damage": "150",
        "text": "Search your deck for up to 3 Lightning Energy cards and attach them to 1 of your Pokémon. Then, shuffle your deck."
      },
      {
        "name": "Tag Bolt-GX",
        "cost": [
          "Lightning",
          "Lightning",
          "Lightning"
        ],
        "convertedEnergyCost": 3,
        "damage": "200",
        "text": "If this Pokémon has at least 3 extra Lightning Energy attached to it (in addition to this attack's cost), this attack does 170 damage to 1 of your opponent's Benched Pokémon. (Don't apply Weakness and Resistance for Benched Pokémon.) (You can't use more than 1 GX attack in a game.)"
      }
    ],
    "weaknesses": [
      {
        "type": "Fighting",
        "value": "×2"
      }
    ],
    "resistances": [
      {
        "type": "Metal",
        "value": "-20"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 3,
    "number": "33",
    "artist": "Mitsuhiro Arita",
    "rarity": "Rare Holo GX",
    "nationalPokedexNumbers": [
      25
    ],
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-33/small",
      "large": "https://images.scrydex.com/pokemon/me55c-33/large"
    }
  },
  {
    "id": "me55c-138",
    "name": "Zacian V",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic",
      "V"
    ],
    "hp": "220",
    "types": [
      "Metal"
    ],
    "rules": [
      "When your Pokémon V is Knocked Out, your opponent takes 2 Prize cards."
    ],
    "abilities": [
      {
        "name": "Intrepid Sword",
        "text": "Once during your turn, you may look at the top 3 cards of your deck and attach any number of Metal Energy cards you find there to this Pokémon. Put the other cards into your hand. If you use this Ability, your turn ends.",
        "type": "Ability"
      }
    ],
    "attacks": [
      {
        "name": "Brave Blade",
        "cost": [
          "Metal",
          "Metal",
          "Metal"
        ],
        "convertedEnergyCost": 3,
        "damage": "230",
        "text": "During your next turn, this Pokémon can't attack."
      }
    ],
    "weaknesses": [
      {
        "type": "Fire",
        "value": "×2"
      }
    ],
    "resistances": [
      {
        "type": "Grass",
        "value": "-30"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 2,
    "number": "138",
    "artist": "5ban Graphics",
    "rarity": "Holo Rare V",
    "nationalPokedexNumbers": [
      888
    ],
    "regulationMark": "D",
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-138/small",
      "large": "https://images.scrydex.com/pokemon/me55c-138/large"
    }
  },
  {
    "id": "me55c-50",
    "name": "Raikou",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic"
    ],
    "hp": "110",
    "types": [
      "Lightning"
    ],
    "attacks": [
      {
        "name": "Amazing Shot",
        "cost": [
          "Grass",
          "Lightning",
          "Metal"
        ],
        "convertedEnergyCost": 3,
        "damage": "120",
        "text": "This attack also does 120 damage to 1 of your opponent's Benched Pokémon. (Don't apply Weakness and Resistance for Benched Pokémon.)"
      }
    ],
    "weaknesses": [
      {
        "type": "Fighting",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 2,
    "number": "50",
    "artist": "Hideki Ishikawa",
    "rarity": "Amazing Rare",
    "nationalPokedexNumbers": [
      243
    ],
    "regulationMark": "D",
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-50/small",
      "large": "https://images.scrydex.com/pokemon/me55c-50/large"
    }
  },
  {
    "id": "me55c-114",
    "name": "Mew VMAX",
    "supertype": "Pokémon",
    "subtypes": [
      "VMAX"
    ],
    "hp": "310",
    "types": [
      "Psychic"
    ],
    "evolvesFrom": "Mew V",
    "rules": [
      "When your Pokémon VMAX is Knocked Out, your opponent takes 3 Prize cards."
    ],
    "attacks": [
      {
        "name": "Cross Fusion Strike",
        "cost": [
          "Colorless",
          "Colorless"
        ],
        "convertedEnergyCost": 2,
        "text": "Choose 1 of your Benched Fusion Strike Pokémon's attacks and use it as this attack."
      },
      {
        "name": "Max Miracle",
        "cost": [
          "Psychic",
          "Psychic"
        ],
        "convertedEnergyCost": 2,
        "damage": "130",
        "text": "This attack's damage isn't affected by any effects on your opponent's Active Pokémon."
      }
    ],
    "weaknesses": [
      {
        "type": "Darkness",
        "value": "×2"
      }
    ],
    "resistances": [
      {
        "type": "Fighting",
        "value": "-30"
      }
    ],
    "number": "114",
    "artist": "5ban Graphics",
    "rarity": "Holo Rare VMAX",
    "nationalPokedexNumbers": [
      151
    ],
    "regulationMark": "E",
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-114/small",
      "large": "https://images.scrydex.com/pokemon/me55c-114/large"
    }
  },
  {
    "id": "me55c-123",
    "name": "Arceus VSTAR",
    "supertype": "Pokémon",
    "subtypes": [
      "VSTAR"
    ],
    "hp": "280",
    "types": [
      "Colorless"
    ],
    "evolvesFrom": "Arceus V",
    "rules": [
      "When your Pokémon VSTAR is Knocked Out, your opponent takes 2 Prize cards."
    ],
    "abilities": [
      {
        "name": "Starbirth",
        "text": "During your turn, you may search your deck for up to 2 cards and put them into your hand. Then, shuffle your deck. (You can't use more than 1 VSTAR Power in a game.)",
        "type": "Ability"
      }
    ],
    "attacks": [
      {
        "name": "Trinity Nova",
        "cost": [
          "Colorless",
          "Colorless",
          "Colorless"
        ],
        "convertedEnergyCost": 3,
        "damage": "200",
        "text": "Search your deck for up to 3 basic Energy cards and attach them to your Pokémon V in any way you like. Then, shuffle your deck."
      }
    ],
    "weaknesses": [
      {
        "type": "Fighting",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless",
      "Colorless"
    ],
    "convertedRetreatCost": 2,
    "number": "123",
    "artist": "5ban Graphics",
    "rarity": "Holo Rare VSTAR",
    "nationalPokedexNumbers": [
      493
    ],
    "regulationMark": "F",
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-123/small",
      "large": "https://images.scrydex.com/pokemon/me55c-123/large"
    }
  },
  {
    "id": "me55c-203",
    "name": "Magikarp",
    "supertype": "Pokémon",
    "subtypes": [
      "Basic"
    ],
    "hp": "30",
    "types": [
      "Water"
    ],
    "attacks": [
      {
        "name": "Expert Splasher",
        "cost": [
          "Water"
        ],
        "convertedEnergyCost": 1,
        "damage": "10+",
        "text": "Flip 2 coins. If both of them are heads, this attack does 20 more damage."
      }
    ],
    "weaknesses": [
      {
        "type": "Lightning",
        "value": "×2"
      }
    ],
    "retreatCost": [
      "Colorless"
    ],
    "convertedRetreatCost": 1,
    "number": "203",
    "artist": "Shinji Kanda",
    "rarity": "Illustration Rare",
    "nationalPokedexNumbers": [
      129
    ],
    "regulationMark": "G",
    "images": {
      "small": "https://images.scrydex.com/pokemon/me55c-203/small",
      "large": "https://images.scrydex.com/pokemon/me55c-203/large"
    }
  }
]
]]
input2=20627
