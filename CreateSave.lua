json = require ("dkjson")

EARLYBOXMESH="1915736343863475528/8C70A62362271019A822CA9C7B8FBF4CFF91E62A"
MODERNBOXMESH="1915736343864395246/70BDADDE29B37E0D18AFE3C0B37839B0CE0E8652"
PROMOMESH="1848173079363295760/90E61F924B6B7399CFCB2E8351C58CE471AA9BA2"
ETBMESH="1915736343864444836/FC413408EE51C52BF8FB089315AF51CC49F5D357"
TINMESH="1847055358306165178/724B3213D226C2039D623E7E61773F9AA2D94EE5"
BLISTERMESH="1915736343864551541/81D61FA5E52BB4A69F8860FCD8D6015C75DF378E"
MINIBOXMESH="2038481810653562830/CB500EB276390B06271D25E708431FFFB273DE9F"
DECKMESH="1028455855304295075/CBFE125C09A68F249EC6200297B9196C4D00EF87"

boxesByGen={
    {{true, "base1", EARLYBOXMESH, "Base Set", "1023948379565016265/9FFC737C34160C4BB6E2E0328DB4597F65CF92CD"},
    {true, "base2", EARLYBOXMESH, "Jungle", "1023948379565017775/CA98F688F50E3C7B809AE219B13022BA1DFAF78E"},
    {false, "basep", PROMOMESH, "Wizards Black Star Promos", "1848173079360052348/29E3C3BCD1646F2A8BB41EC8A4DB3A8484D379FD"},
    {true, "base3", EARLYBOXMESH, "Fossil", "1023948522906512409/4E66BB37B04B1EB686E550DDC8BBC51E9B1F300E"},
    {true, "base4", EARLYBOXMESH, "Base Set 2", "1023948522906513994/AAF83D2F6AF5FAAF92BF26CBB7B377B266B4D0F2"},
    {true, "base5", EARLYBOXMESH, "Team Rocket", "1023948522907487754/A2AC9FD599924035612CBD44CE258D9E22C3001F"},
    {true, "gym1", EARLYBOXMESH, "Gym Heroes", "1023948522910123099/D8ADAF0804A55DBF5DE6E1A17007E11450A2007A"},
    {true, "gym2", EARLYBOXMESH, "Gym Challenge", "1023948522913409641/C5F391E19D855BB19A147F1F54B8AC0F13AFCCD7"},
    {true, "neo1", EARLYBOXMESH, "Neo Genesis", "1023948522915278961/14DECE258DEFA3E51377114BD75BEC0F17CAB7B7"},
    {true, "neo2", EARLYBOXMESH, "Neo Discovery", "1023948676532830815/C477AF8498FF0EFC50DDC2193B666DA5F9032D8B"},
    {false, "si1", PROMOMESH, "Southern Islands", "1848173079360052265/FABA60560ACCDE2715749A75CDE3F9580D463169"},
    {true, "neo3", EARLYBOXMESH, "Neo Revelation", "1023948676533623578/0457F9D4CFE2C627F1E65C75815D65F909A294C2"},
    {true, "neo4", EARLYBOXMESH, "Neo Destiny", "1023948676537146300/D2B45519127336923D440D4F4AC058251E177766"},
    {true, "base6", EARLYBOXMESH, "Legendary Collection", "1023948676537233973/CDE9FE9BF2B67B1AE376ECD8D0C7EC7016C60464"},
    {true, "ecard1", EARLYBOXMESH, "Expedition Base Set", "1023948871894973494/418189C39F0CB7C83979596955D036909E7F0778"},
    {false, "bp", PROMOMESH, "Best of Game", "1848173079360051661/420C5E9D7CF3C44735556312CFF3CC8829AC6B73"},
    {true, "ecard2", EARLYBOXMESH, "Aquapolis", "1023948871895074389/307DAA13A7CF038C6E33C4759CD0B28924EB854C"},
    {true, "ecard3", EARLYBOXMESH, "Skyridge", "1023948871895136685/5C19D133252CCCAE3EF7015EE0D5A277D816D936"}},

    {{false, "np", PROMOMESH, "Nintendo Black Star Promos", "1848173079360052122/1133D4091EBEE8654DDE923FB492709BFB3633CC"},
    {true, "ex1", EARLYBOXMESH, "Ruby & Sapphire", "1023948871899160416/C1F917D2C3A24B0811C8BE1A5219ED77EC0A5E5D"},
    {true, "ex2", EARLYBOXMESH, "Sandstorm", "1023948871899871274/747FA0132E50AAA7BF9E23F0D767D0A3E9AE2263"},
    {true, "ex3", EARLYBOXMESH, "Dragon", "1023948871900846659/6A25F4F4A7FEA3EBBAAA90548584C16372CBD7E8"},
    {true, "ex4", EARLYBOXMESH, "Team Magma vs Team Aqua", "1023948871903667608/801EC89B9C0E3B08E8FEF030C626FA0A55605D1C"},
    {false, "tk1", DECKMESH, "EX Trainer Kit Latias", "961982434508822484/2D509B59C03E1083D79C72281F35F7320976395E", "EX Trainer Kit Latios", "961982434508822976/CC44FFFECAC3249E631B7C909158970E9879678D"},
    {true, "ex5", EARLYBOXMESH, "Hidden Legends", "1023949075505507229/D88E57AC7CDF3AF3660DC83A9E85092185760507"},
    {true, "ex6", EARLYBOXMESH, "FireRed & LeafGreen", "1023949075505512434/FF2375AE5CE74CEF43A52FA9655B61D2D4EBB399"},
    {true, "pop1", MINIBOXMESH, "POP Series 1", "1890974789082362853/65B60C254E9E4419BEF99BF422853F2E664233EF"},
    {true, "ex7", EARLYBOXMESH, "Team Rocket Returns", "1023949075505514522/7BDE9C6FAFA77F7F7423ACACE886F7B1D3076FE5"},
    {true, "ex8", EARLYBOXMESH, "Deoxys", "1023949075506717818/41B79532DC2A7000714F05642B2266809A8EEB3D"},
    {true, "ex9", EARLYBOXMESH, "Emerald", "1023949183707548694/101817125AA0A6D4ED7FDF6BED5B22FFBAFEC4F3"},
    {true, "pop2", MINIBOXMESH, "POP Series 2", "1890974789082569778/BC2679CB39620513D422573998F854A2B9DBEE1B"},
    {true, "ex10", EARLYBOXMESH, "Unseen Forces", "1023949183707549994/C1285DF2E83C3170AC04AAC098549978FD10E4FB"},
    {true, "ex11", EARLYBOXMESH, "Delta Species", "1023949183707551046/FA6E7FB53982D644B78FBA68FBDF3BF49D2972BE"},
    {true, "ex12", EARLYBOXMESH, "Legend Maker", "1023949183707552070/DC48126B95E83849D6BA1F0C3EFDC01F7586ED1D"},
    {true, "pop3", MINIBOXMESH, "POP Series 3", "1890974789082772229/B9070F5001BCC284530DB7A8DC4BB942B5976044"},
    {false, "tk2", DECKMESH, "EX Trainer Kit 2 Plusle", "961982434508352432/0765269DEAF21D4E5C429EF73834BAA905BBF128", "EX Trainer Kit 2 Minun", "961982434508352923/991A9EB0B05D21487E5158BBC56C48441EC0D0D2"},
    {true, "ex13", EARLYBOXMESH, "Holon Phantoms", "1023949183707553041/0CC06242D0FBC2CBCFE5F9A60E26A9ECB8EF92F5"},
    {true, "pop4", MINIBOXMESH, "POP Series 4", "1890974789082764438/2896E9BFFFF1AF2460AA49ACB192E3DF1A52F633"},
    {true, "ex14", EARLYBOXMESH, "Crystal Guardians", "1023949183707554039/6D01087E5F6B9AE0DC23981208DD4F254E470693"},
    {true, "ex15", EARLYBOXMESH, "Dragon Frontiers", "1023949183707554988/ED96FE955F09533A5DFE499DC3992490BB77372A"},
    {true, "ex16", EARLYBOXMESH, "Power Keepers", "1023949183707556006/56D84ACD77C7F2CBB7AF9B6F6BC206A8C22D6601"},
    {true, "pop5", MINIBOXMESH, "POP Series 5", "1890974789082764092/80CFB937F6B0D71305DB8305346295FC872DDE71"}},

    {{false, "dpp", PROMOMESH, "DP Black Star Promos", "1848173079360051848/A0BD5B946B074CB4F934FFC49BCFBF15082BDFAB"},
    {true, "dp1", MODERNBOXMESH, "Diamond & Pearl", "1023949287961090582/8F5F92770B83A2FC7A784CAF9AFE03E1B3EC9D66"},
    {true, "dp2", MODERNBOXMESH, "Mysterious Treasures", "1023949287961183727/3D9CF44C807EFC465ED8B72F48C19F398974D83B"},
    {true, "pop6", MINIBOXMESH, "POP Series 6", "1890974789082762267/C3333D89A9BD7724A59049F3377A773F38E0B22C"},
    {true, "dp3", MODERNBOXMESH, "Secret Wonders", "1023949287962269845/59FBD86DE099C405B487AF370B45236C2394D8B9"},
    {true, "dp4", MODERNBOXMESH, "Great Encounters", "1023949287962270639/7933A0737670CA764DD465F7C8511C89810890B7"},
    {true, "pop7", MINIBOXMESH, "POP Series 7", "1890974789082763553/504BAEF38429048A7CE2D01D958578995E41DB3A"},
    {true, "dp5", MODERNBOXMESH, "Majestic Dawn", "1023949287964118942/414432C1CC54856BB916F486D3A70984AE4D4B08"},
    {true, "dp6", MODERNBOXMESH, "Legends Awakened", "1023949287964120039/4380019D4A594B5A44321272B89B4AD0C0F6A492"},
    {true, "pop8", MINIBOXMESH, "POP Series 8", "1890974789082363232/5DF655D365CE4C0DCDEB9927769680FCD8FF4030"},
    {true, "dp7", MODERNBOXMESH, "Stormfront", "1023949287964121071/83431B4452328A8DCF04A4B368870F35342B778F"},
    {true, "pl1", MODERNBOXMESH, "Platinum", "1023949407635780794/C03BC05DCCEF45F8E5595088BFA258712CC4299C"},
    {true, "pop9", MINIBOXMESH, "POP Series 9", "1890974789082364020/5B6406B5E82B2D5170F767EDE3DD84497E1A9F66"},
    {true, "pl2", MODERNBOXMESH, "Rising Rivals", "1023949420062860989/38D63EDDE25CA793AD617A62167C1688D5A06C94"},
    {true, "pl3", MODERNBOXMESH, "Supreme Victors", "1023949420062862012/5167746C2FAFC0F8B8E3FB0F9431E2B3D6A6E557"},
    {true, "pl4", MODERNBOXMESH, "Arceus", "1023949420062862791/F1CF79AF0C9409BDD574ADE6EF0ADA769DC827D8"},
    {false, "ru1", PROMOMESH, "Pokémon Rumble", "1848173079360052196/C1BACBC854E43665E0D1B5D7C8D05B24C25B516F"},
    {false, "hgssp", PROMOMESH, "HGSS Black Star Promos", "1848173079360052038/34D538BB05B97C338229A41EF54DED3781D45B3C"},
    {true, "hgss1", MODERNBOXMESH, "HeartGold & SoulSilver", "1023949420066941449/4509C74BFAFEA01FBB30843F21C3A4B826D7A13A"},
    {true, "hgss2", MODERNBOXMESH, "HS—Unleashed", "1023949420067819266/24E46C4953C3946F30D890053F4E921B64E91444"},
    {true, "hgss3", MODERNBOXMESH, "HS—Undaunted", "1023949420067820579/066D0F6EA1F2E529C6301BD2A815CFC1C293A5DE"},
    {true, "hgss4", MODERNBOXMESH, "HS—Triumphant", "1023949420067821513/94133B2A14747D598976D059432060A95F9064AA"},
    {true, "col1", MODERNBOXMESH, "Call of Legends", "1025076409792413170/5BE65F0FA827D5FCF29D8BF44BF2286BDD13766F"}},

    {{false, "bwp", PROMOMESH, "BW Black Star Promos", "1848173079360051765/9B208AE51A8C8ECB517E29951C08660FA25BDC6A"},
    {true, "bw1", MODERNBOXMESH, "Black & White", "1025076409792414208/259E6346B317A96194AC2F359846CB1CB82BE230"},
    {false, "mcd11", PROMOMESH, "McDonald's Collection 2011", "1829036352663765525/5CD4F01D2C09532C7871F1200CAD77E02158A3DE"},
    {true, "bw2", MODERNBOXMESH, "Emerging Powers", "1025076409792415392/E2FB8B6FAB75778CA9895DD5EAE0830F3AD6565A"},
    {true, "bw3", MODERNBOXMESH, "Noble Victories", "1030706086612739527/82EC725D7B667DBBE1249485FD904E78CB2E56D7"},
    {true, "bw4", MODERNBOXMESH, "Next Destinies", "1030706086613217519/E742A3A889FA3B34F0B3C9723C0BB931AE51035B"},
    {true, "bw5", MODERNBOXMESH, "Dark Explorers", "1030706086619108690/DC6E675F0628B4055CF1014C018FFE383C4F98DF"},
    {false, "mcd12", PROMOMESH, "McDonald's Collection 2012", "1829036352663766112/B3E77C1E337E1390295E2ABBA0D1723C3FBA4522"},
    {true, "bw6", MODERNBOXMESH, "Dragons Exalted", "1030706086619687449/94916A51D81718692F3E58612385FA3B9474AA42"},
    {true, "dv1", BLISTERMESH, "Dragon Vault", "1670239067234150993/599C07557270AC2171B79D3E32FA5763C2EF1D79"},
    {true, "bw7", MODERNBOXMESH, "Boundries Crossed", "1030706086619689491/CBC8DE00F646D64A03A828CFAFA8DD1C6C3337A1"},
    {true, "bw8", MODERNBOXMESH, "Plasma Storm", "1030706251252245800/5669F2FFCD916D7D2534E200FAABABB1251A8707"},
    {true, "bw9", MODERNBOXMESH, "Plasma Freeze", "1030706251252244163/8F8AF582A8A331B88347706D62748B6725CC2E11"},
    {true, "bw10", MODERNBOXMESH, "Plasma Blast", "1030706251252006225/701F5CCDA3435A3E3D9AFAA4B4E58E44D6964D76"},
    {true, "bw11", MODERNBOXMESH, "Legendary Treasures", "1030706251252186507/356FEB93D7164E472DEFE7FF33FECB6FBE8093AC"}},

    {{false, "xyp", PROMOMESH, "XY Black Star Promos", "1848173079360052411/265682A28EB8AC3217B360B07204845F92530E1B"},
    {false, "xy0", PROMOMESH, "Kalos Starter Set", "1848173079360031991/17642D8E291E80267A42F06774EF4FAE92A46A71"},
    {true, "xy1", MODERNBOXMESH, "XY", "1030706397109029279/9C4C896ECABC71761CD577226F790092368187DB"},
    {true, "xy2", MODERNBOXMESH, "Flashfire", "1030706397109119887/02FAA069D6277C790F05F1A465596512678D5A83"},
    {true, "xy3", MODERNBOXMESH, "Furious Fists", "1030706468201494869/F06F4D8BE4CB307672B755D7A1A2285E6962F660"},
    {true, "xy4", MODERNBOXMESH, "Phantom Forces", "1030706468201496427/352D807D0E8CD3D1BEF93DAC89C1BA7A55EDBA91"},
    {true, "xy5", MODERNBOXMESH, "Primal Clash", "1030706468201497625/8CF3E1D14D1F196AB763780035DC674BBEC59668"},
    {true, "dc1", BLISTERMESH, "Double Crisis", "1670239067235925410/6046B505EB56839C2F534965D880B5D44A3005A1"},
    {true, "xy6", MODERNBOXMESH, "Roaring Skies", "1030706468201802017/CCA116ADAA5F580325DFCFF5BD1159BC81A2BD81"},
    {true, "xy7", MODERNBOXMESH, "Ancient Origins", "1030706468201803295/731E62F9C1CB889E5654AE2C785E8146B4B11927"},
    {true, "xy8", MODERNBOXMESH, "BREAKthrough", "1030706571718909580/F33E628154C8537D87A55B9F8630AEFBE9C67A73"},
    {true, "xy9", MODERNBOXMESH, "BREAKpoint", "1030706571718910900/D03FC43A4EFCCC0135C65072862E0E32FC9CAE7B"},
    {true, "g1", ETBMESH, "Generations", "1030706251248906884/4DD17D273D0FCD9F1E135DBD48950BE77728BA7E"},
    {true, "xy10", MODERNBOXMESH, "Fates Collide", "1030706571718911789/BCCDD5753E72013744C51ED53AC113F3B50705A6"},
    {true, "xy11", MODERNBOXMESH, "Steam Siege", "1030706571718912615/294FA3405B7143F115C2D4E749AC7F7817F64C7B"},
    {false, "mcd16", PROMOMESH, "McDonald's Collection 2016", "1829036352668490865/D85F0E0D19A83C44B647997880C0F997B17FB84B"},
    {true, "xy12", MODERNBOXMESH, "Evolutions", "1030706571718913642/EB294ACD087552797F76C33724BCF60A72712DD6"}},

    {{false, "smp", PROMOMESH, "SM Black Star Promos", "1848173079360031289/E30625362132A3B65488091077963448D0C675CF"},
    {true, "sm1", MODERNBOXMESH, "Sun & Moon", "1030706720823954375/2DADFD593E993D681745692B776B18AC0B52A8E1"},
    {true, "sm2", MODERNBOXMESH, "Guardians Rising", "1030706720823956185/60075FB1319D192E842BE12A06E862ABE328F821"},
    {true, "sm3", MODERNBOXMESH, "Burning Shadows", "1030706720823957781/1282DBB0D55245AD1EC81097DA9716B07F614762"},
    {true, "sm35", ETBMESH, "Shining Legends", "1030706720824004414/449EDB8EC75FC286834DB0D300A87B15275728AF"},
    {true, "sm4", MODERNBOXMESH, "Crimson Invasion", "1030706720824242297/CBC0D03220E8C19924EC8B85C62ECB50C57E45A6"},
    {true, "sm5", MODERNBOXMESH, "Ultra Prism", "1030706720824244168/24479CA1896814BC190B9096C9A5597DC4C983A0"},
    {true, "sm6", MODERNBOXMESH, "Forbidden Light", "1030706720824245898/0961DED4D289C19B4B0E511684214BEF17C0CB70"},
    {true, "sm7", MODERNBOXMESH, "Celestial Storm", "1030706720824247370/81750F9DE0A1BD33974E3B8C495A1F06C38E5966"},
    {true, "sm75", ETBMESH, "Dragon Majesty", "1030706720824692197/92ABF851389DB7FC2AA2BA945D5C4B0491D929BB"},
    {true, "sm8", MODERNBOXMESH, "Lost Thunder", "1030706720825070893/C1C2D405AB9EC4499F0FF30507050DD746481DD8"},
    {true, "sm9", MODERNBOXMESH, "Team Up", "1030706720825073588/77FF4DB7A3D9E57F5E9528CC92726A4489FF8A76"},
    {true, "det1", TINMESH, "Detective Pikachu", "1030706251249532184/95E9A61C0BA9B10C8EF096E12A441122692B4198"},
    {true, "sm10", MODERNBOXMESH, "Unbroken Bonds", "1030706720825075376/4A735BF5E1BE1D760BC83CB8483EFE69B5315710"},
    {true, "sm11", MODERNBOXMESH, "Unified Minds", "1030706720825076975/B1FA4A918CC105C4D16BE63576475B8D0A5105BB"},
    {true, "sm115", ETBMESH, "Hidden Fates", "1030706720825085766/F0F09A6F571FB67E86E3AC178310015920B2FAAA"},
    {false, "mcd19", PROMOMESH, "McDonald's Collection 2019", "1829036352668492001/EC6D4BE2414CE50FE470150D12EF43052C5652CC"},
    {true, "sm12", MODERNBOXMESH, "Cosmic Eclipse", "1030706720825080729/547B540502EB3BF5F8E9F6E78EA2F1C6FF98DCC9"}},

    {{false, "swshp", MODERNBOXMESH, "SWSH Black Star Promos", "1848173079360029041/5B20F857803464844D18FE750DFF8158E60B0180"},
    {true, "swsh1", PROMOMESH, "Sword & Shield", "1030706720825082020/0AAAA7E1DF0E01F4BFD0507730FD13F932F67A26"},
    {true, "swsh2", MODERNBOXMESH, "Rebel Clash", "1030706720825082984/3B3DF2C77401CEEE48BA474A3003FE2DCAD01A9F"},
    {true, "swsh3", MODERNBOXMESH, "Darkness Ablaze", "1487830240381946586/BEEA97242BA2B94213DB3C121273A21EE64E75AE"},
    {false, "fut20", MINIBOXMESH, "Pokémon Futsal Collection", "1731063025334437315/A9C528804E76E497DF7432F5A79FAD1CAE656205"},
    {true, "swsh35", ETBMESH, "Champion's Path", "1639829753513359249/E8E086E52B72A0AB816802A76069835E0C36445C"},
    {true, "swsh4", MODERNBOXMESH, "Vivid Voltage", "1696129331814883637/B2A0615B601068EFFB5B3E8838ED947FB5F5E423"},
    {true, "swsh45", ETBMESH, "Shining Fates", "1773825330007107488/EA5783CE54C9EAA33CE5AA02597D84AA12E56A70"},
    {true, "swsh5", MODERNBOXMESH, "Battle Styles", "1628605006376249632/DF216367D85CED7ABF2BE20A424289FB147F735B"},
    {true, "swsh6", MODERNBOXMESH, "Chilling Reign", "1628605006376251100/250CDB30DB2597E4F06F9BC4F9E01A8908C1C8C7"},
    {true, "swsh7", MODERNBOXMESH, "Evolving Skies", "1628605006376252241/6E5CD0B9CA93CCF81A4D4E0994372D32425261A0"},
    {true, "mcd21", PROMOMESH, "McDonald's Collection 2021", "1829036352668492469/EC30817B517A553A4D2F08D935AC05EF4428EDA4"},
    {true, "cel25", MINIBOXMESH, "Celebrations", "1890974789081481042/C2F415A23903BAE63CC80DCB8B7243BE34E6301C"},
    {true, "swsh8", MINIBOXMESH, "Fusion Strike", "1809885360395492413/B30B5901E4E0555C201523C4BCB62E23FFC93151"},
    {true, "swsh9", MINIBOXMESH, "Brilliant Stars", "1890974789081475009/C64C956DC8BFB556BA1F6CE934EAEB707E0A66C9"},
    {true, "swsh10", MINIBOXMESH, "Astral Raidiance", "1890974789081492204/DE04C966FB99DF18EAE9E4F11D0441430B5BC6B1"},
    {true, "pgo", MINIBOXMESH, "Pokémon Go", "1890974789081468689/BD016D5205210AC41731A173B0183E8C41A904FC"},
    {true, "mcd22", PROMOMESH, "McDonald's Collection 2022", "1937139674426628073/00937BB7D23645B42A08F19B532B4F8C563EC3D4"},
    {true, "swsh11", MINIBOXMESH, "Lost Origin", "1890974789081465067/FFEAEB2948B358C1F876CEE8457E87CB5915D978"},
    {true, "swsh12", MINIBOXMESH, "Silver Tempest", "1878591893797171394/E234E642EEF3A147DA60283B614CAB3F237B4E58"},
    {true, "swsh12pt5", MINIBOXMESH, "Crown Zenith", "2012580224554286850/374AE2F7A902FACE7FDC49AD92D398EF0E56A068"}},

    {{false, "svp", PROMOMESH, "Scarlet & Violet Promos", "2038483691948670739/C977D94E125477CFF4A6F7ED16FA6CC49D9D0976"},
    {true, "sv1", MINIBOXMESH, "Scarlet & Violet", "2038482593604678770/8F278AADAB7FC6AD8F753E6CCAA6A6C212D16BC5"},
    {true, "sv2", MINIBOXMESH, "Paldea Evolved", "2029481402812785887/03D3BC81BABC1C95C2DA93CA350F42C26531E5BD"},
    {true, "sv3", MINIBOXMESH, "Obsidian Flames", "2022731800084228460/A8531AFF2A1F7B1D0B815C8EF84ADDFAE3F0444F"},
    {true, "sv3pt5", MINIBOXMESH, "151", "2089163611609765200/19E13E19AB6877F5FA54E3E0F7A6E6E5210B1824"},
    {true, "sv4", MINIBOXMESH, "Paradox Rift", "2116188379175737280/93C347008BB05142482EBB0FAF57CA4F447845A0"},
    {true, "sv4pt5", MINIBOXMESH, "Paldean Fates", "2280577380397840092/FCAE9E6918372553C4F0EB7047479AEB90C67F2E"},
    {true, "sv5", MINIBOXMESH, "Temporal Forces", "2415690703815243875/C565DB3CA4C3C4C251BAB31F394D08359BD500FC"},
    {true, "sv6", MINIBOXMESH, "Twilight Masqurade", "2447222068927760051/53B9717F67AD1C8FB712A4FEFFAD01B4B8172EE7"},
    {true, "sv6pt5", MINIBOXMESH, "Shrouded Fable", "2467493883643886189/5E276A051D752BED1ADDEBFC9BC3BCA25A8DC4C3"},
    {true, "sv7", MINIBOXMESH, "Stellar Crown", "2371796830447493985/01CA8CBB0CC0EF29E4B62E5D64103C8A839645FE"},
    {true, "sv8", MINIBOXMESH, "Surging Sparks", "9663902713504427/850DF1463DAD824397CB49533343538076B211FA"},
    {true, "sv8pt5", MINIBOXMESH, "Prismatic Evolutions", "9669610792355089/DF4C5318A50F8CC8738E624DC6F5D666209D7F86"},
    {true, "sv9", MINIBOXMESH, "Journey Together", "9675632642590167/10470DF21D9FFA8FAA62DDD2C40FAA5F5E780E0A"},
    {true, "sv10", MINIBOXMESH, "Destined Rivals", "17854213073008943464/7E241EA7BB680003239185B7A4613E0B5B8BC862"},
    {true, "zsv10pt5", MINIBOXMESH, "Black Bolt", "9981511988663528233/E0870965F956CA4A3A1F3298A6A0CAFC8B771FFC/"},
    {true, "rsv10pt5", MINIBOXMESH, "White Flare", "18348418917467348852/9516226CE4BDBF64974B4F2F243C0A47F5C73DBF"},
    {true, "me1", MINIBOXMESH, "Mega Evolution", "10313428009841696943/34DF2DF93CA6DE0C97EA57D7E0F4F3004C20B82A"},
    {true, "me2", MINIBOXMESH, "Phantasmal Flames", "16435715614160478791/1BBC31C96287F2ECB652D671F50EE78256B1988B"},
    {true, "me2pt5", MINIBOXMESH, "Ascended Heroes", "13515053371449558468/388578F312E76C84ECF091FF46865A5C25130AAA"},
    {true, "me3", MINIBOXMESH, "Perfect Order", "12540554081478492769/08F908B2F8EB75EA5D81BE89CE7F45FA7FA4DC20"},
    {true, "me4", MINIBOXMESH, "Chaos Rising", "10802198275638550897/F19C1C15440847140632F35FCBE49C39105E3200"},
    {true, "me5", MINIBOXMESH, "Pitch Black", "17336347540446987131/76E2D0288CFB8B14D257D50F6036694CADFEB96B"},
    {true, "me55", MINIBOXMESH, "30th Celebration", "16956282501769679548/12C86033DEA8FCC2C48A303519F155E648E11228"},
    {true, "me6", MINIBOXMESH, "Delta Reign", "11006865199533793899/66A9592F7179BC344511D620EFB47AD1669F5131"}},
}

tableData = {
    {"c8769f", 9.77, -39.06, -7.36, 90.0, 100.0, 100.0, 86.0},--game table
    {"92474b", 8.453654, -39.06, -95.34752, 0, 114.82, 100.0, 196.191437}, --front table
    {"5aa343", -8.45, -39.06, 95.35091, 180.0, 114.82, 100.0, 196.227982}, --bottom table
    {"6ef27e", -101.36, -39.06, -21.33, 90.0, 290.0, 100.0, 180.0}, --red side table
    {"e43eb8", 101.36, -39.06, 21.33, 270.0, 290.0, 100.0, 180.0}, --white side table
    {"492aad", -27.85, -2.5, -7.36, 90.0, 100.0, 15.91, 14.9}, --lowest front
    {"926b01", -36.6, 0.0, -7.36, 90.0, 100.0, 15.91, 14.9}, --low front
    {"ba52c1", -45.35, 2.5, -7.36, 90.0, 100.0, 15.91, 14.9}, --mid front
    {"c8c425", -54.1, 5.0, -7.36, 90.0, 100.0, 15.91, 14.9}, --high front
    {"003ed8", -62.8, 7.5, -7.36, 90.0, 100.0, 15.91, 14.9}, --highest front
    {"36d388", 30.8, -2.5, -7.36, 90.0, 100.0, 15.91, 14.9}, --lowest back
    {"a19200", 39.1, 0.0, -7.36, 90.0, 100.0, 15.91, 14.9}, --low back
    {"d254ce", 47.4, 2.5, -7.36, 90.0, 100.0, 15.91, 14.9}, --mid back
    {"470624", 55.7, 5.0, -7.36, 90.0, 100.0, 15.91, 14.9}, --high back
    {"cd0880", 64.0, 7.5, -7.36, 90.0, 100.0, 15.91, 14.9}, --highest back
}

sorterData = {
    {-12.0, -21.0, 270.0},
    {-12.0, -63.0, 270.0},
    {-12.0, 21.0, 270.0},
    {12.0, 63.0, 90.0},
    {12.0, 21.0, 90.0},
    {12.0, -21.0, 90.0},
    {-62.73, -165.0, 90.0},
    {62.75, 165.0, 270.0},
}

poisonBurnData = {
    {-21.0, 180.0},
    {21.0, 0.0},
}

shockImpData = {
    {-21.0, 180.0},
    {21.0, 0.0},
}

RPSData = {
    {-21.0},
    {21.0},
}

diceData = {
    {-21.0},
    {21.0},
}

braceData = {
    {-21.0},
    {21.0},
}

counterData = {
    {-21.0},
    {21.0},
}

hiddenData = {
    {173.0, 117.0, 270.0},
    {173.0, 0.0, 270.0},
    {173.0, -117.0, 270.0},
    {-173.0, 117.0, 90.0},
    {-173.0, 0.0, 90.0},
    {-173.0, -117.0, 90.0},
}

handData = {
    {"Blue", 21.1, 42, 270.0},
    {"Green", -21.1, 42, 90.0},
    {"Purple", 21.1, 0.0, 270.0},
    {"Yellow", -21.1, 0.0, 90.0},
    {"Red", -21.1, -42, 90.0},
    {"White", 21.1, -42, 270.0},
}

GXData = {
    {5.12, 53.64, 90.0},
    {5.12, -30.35, 90.0},
    {5.12, 11.64, 90.0},
    {-5.12, 30.35, 270.0},
    {-5.12, -53.64, 270.0},
    {-5.12, -11.64, 270.0},
}

flipperData = {
    {-5.5},
    {-47.5},
    {36.5},
}

boardData = {
    {-8.26, -42.0, 270.0, "{'curImage':23,'curCut':7,'bench8':false,'revbench':false,'hand':'Red'}"},
    {-8.26, 0.0, 270.0, "{'curImage':23,'curCut':7,'bench8':false,'revbench':false,'hand':'Yellow'}"},
    {-8.26, 42.0, 270.0, "{'curImage':23,'curCut':7,'bench8':false,'revbench':false,'hand':'Green'}"},
    {8.26, -42.0, 90.0, "{'curImage':22,'curCut':7,'bench8':false,'revbench':false,'hand':'White'}"},
    {8.26, 0.0, 90.0, "{'curImage':22,'curCut':7,'bench8':false,'revbench':false,'hand':'Purple'}"},
    {8.26, 42.0, 90.0, "{'curImage':22,'curCut':7,'bench8':false,'revbench':false,'hand':'Blue'}"},
}

function MakeTransform(posX, posY, posZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ)
local transform = {}
transform.posX = posX
transform.posY = posY
transform.posZ = posZ
transform.rotX = rotX
transform.rotY = rotY
transform.rotZ = rotZ
transform.scaleX = scaleX
transform.scaleY = scaleY
transform.scaleZ = scaleZ
return transform
end

function copyTable(baseTable, copiedTable)
for k,v in pairs(copiedTable) do
    if type(v) == "table" then
        baseTable[k] = {};
        copyTable(baseTable[k], v)
    else
        baseTable[k] = v
    end
end
end

function InsertTemplate(loc, template, transform, script)
    if loc then
        loc[#loc+1] = {}
    else
        loc = {}
    end
    copyTable(loc[#loc], template)
    if transform then
        loc[#loc].Transform = transform
    end
    if script then
        loc[#loc].LuaScript = script;
    end
end

file = io.open("ObjectTemplates/BaseSave.json", "r")
baseSave = json.decode(file:read("*all"))
file:close()

file = io.open("ObjectTemplates/Table.json", "r")
    playTable = json.decode(file:read("*all"))
file:close()

for curTable = 1, #tableData do
    InsertTemplate(baseSave.ObjectStates, playTable, MakeTransform(tableData[curTable][2], tableData[curTable][3], tableData[curTable][4], 0.0, tableData[curTable][5], 0.0, tableData[curTable][6], tableData[curTable][7], tableData[curTable][8]))
    baseSave.ObjectStates[#baseSave.ObjectStates].GUID = tableData[curTable][1]
end

file = io.open("ObjectTemplates/Sorter.json", "r")
    sorter = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/SortScript.lua", "r")
    sorterScript = file:read("*all")
file:close()

for curSorter = 1, #sorterData do
    InsertTemplate(baseSave.ObjectStates, sorter, MakeTransform(sorterData[curSorter][1], 0.95, sorterData[curSorter][2], 0.0, sorterData[curSorter][3], 0.0, 1.3, 0.1, 2.0), sorterScript)
end

file = io.open("ObjectTemplates/PoisonBurnBag.json", "r")
    poisonBurn = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/autoTurn.lua", "r")
    autoTurnScript = file:read("*all")
file:close()

for curPoisonBurn = 1, #poisonBurnData do
    InsertTemplate(baseSave.ObjectStates, poisonBurn, MakeTransform(1.5, 0.93, poisonBurnData[curPoisonBurn][1], 0.0, 90.0, 0.0, 1.0, 1.0, 1.0), autoTurnScript)
    baseSave.ObjectStates[#baseSave.ObjectStates].ContainedObjects[1].Transform = MakeTransform(0.0, 0.0, 0.0, 0.0, 0.0, poisonBurnData[curPoisonBurn][2], 0.5, 1.0, 0.5)
end

file = io.open("ObjectTemplates/ShockImprisonBag.json", "r")
    shockImp = json.decode(file:read("*all"))
file:close()

for curShockImp = 1, #shockImpData do
    InsertTemplate(baseSave.ObjectStates, shockImp, MakeTransform(4.5, 0.93, shockImpData[curShockImp][1], 0.0, 90.0, 0.0, 1.0, 1.0, 1.0))
    baseSave.ObjectStates[#baseSave.ObjectStates].ContainedObjects[1].Transform = MakeTransform(0.0, 0.0, 0.0, 0.0, 0.0, shockImpData[curShockImp][2], 0.5, 1.0, 0.5)
end

file = io.open("ObjectTemplates/RPSBag.json", "r")
    RPS = json.decode(file:read("*all"))
file:close()

for curRPS = 1, #RPSData do
    InsertTemplate(baseSave.ObjectStates, RPS, MakeTransform(-7.5, 0.93, RPSData[curRPS][1], 0.0, 90.0, 0.0, 1.0, 1.0, 1.0))
end

file = io.open("ObjectTemplates/DiceBag.json", "r")
    dice = json.decode(file:read("*all"))
file:close()

for curDice = 1, #diceData do
    InsertTemplate(baseSave.ObjectStates, dice, MakeTransform(7.5, 0.93, diceData[curDice][1], 0.0, 90.0, 0.0, 1.0, 1.0, 1.0))
end

file = io.open("ObjectTemplates/Braces.json", "r")
    braces = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/braceScript.lua", "r")
    braceScript = file:read("*all")
file:close()

for curBrace = 1, #braceData do
    InsertTemplate(baseSave.ObjectStates, braces, MakeTransform(-4.5, 0.93, braceData[curBrace][1], 0.0, 90.0, 0.0, 1.0, 1.0, 1.0), autoTurnScript)
    baseSave.ObjectStates[#baseSave.ObjectStates].ContainedObjects[1].LuaScript = braceScript;
end

file = io.open("ObjectTemplates/DamageCounterBag.json", "r")
    counter = json.decode(file:read("*all"))
file:close()

for curCounter = 1, #counterData do
    InsertTemplate(baseSave.ObjectStates, counter, MakeTransform(-1.5, 0.93, counterData[curCounter][1], 0.0, 90.0, 0.0, 1.0, 1.0, 1.0), autoTurnScript)
end

file = io.open("ObjectTemplates/PackSpreader.json", "r")
    spreader = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/SpreaderScript.lua", "r")
    spreadScript = file:read("*all")
file:close()

InsertTemplate(baseSave.ObjectStates, spreader, MakeTransform(63.0, 13.7, -9.3, 0.0, 270.0, 0.0, 1.0, 1.0, 1.0), spreadScript)

file = io.open("ObjectTemplates/HiddenZone.json", "r")
    hidden = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/HiddenToggle.lua", "r")
    hiddenScript = file:read("*all")
file:close()

for curHidden = 1, #hiddenData do
    InsertTemplate(baseSave.ObjectStates, hidden, MakeTransform(hiddenData[curHidden][1], 1.95, hiddenData[curHidden][2], 0.0, hiddenData[curHidden][3], 0.0, 1.0, 2.0, 1.0), hiddenScript)
end

file = io.open("ObjectTemplates/Hand.json", "r")
    hand = json.decode(file:read("*all"))
file:close()

for curHand = 1, #handData do
    InsertTemplate(baseSave.ObjectStates, hand, MakeTransform(handData[curHand][2], 3.35, handData[curHand][3], 0.0, handData[curHand][4], 0.0, 17.0, 5.0, 3.0))
    baseSave.ObjectStates[#baseSave.ObjectStates].FogColor = handData[curHand][1];
end

file = io.open("ObjectTemplates/GXVStar.json", "r")
    GX = json.decode(file:read("*all"))
file:close()

for curGX = 1, #GXData do
    InsertTemplate(baseSave.ObjectStates, GX, MakeTransform(GXData[curGX][1], 0.96, GXData[curGX][2], 0.0, GXData[curGX][3], 0.0, 0.25, 0.25, 0.25))
end

file = io.open("ObjectTemplates/Flipper.json", "r")
    flipper = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/coinFlipper.lua", "r")
    flipperScript = file:read("*all")
file:close()

for curFlipper = 1, #flipperData do
    InsertTemplate(baseSave.ObjectStates, flipper, MakeTransform(0.0, 0.95, flipperData[curFlipper][1], 0.0, 0.0, 0.0, 2.0, 0.4, 2.0), flipperScript)
end

file = io.open("ObjectTemplates/EnergyGenerator.json", "r")
    generator = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/EnergyGenerator.lua", "r")
    generatorScript = file:read("*all")
file:close()

InsertTemplate(baseSave.ObjectStates, generator, MakeTransform(62.5, 13.85, 3.0, 0.0, 270.0, 0.0, 0.84, 0.28, 0.66), generatorScript)

file = io.open("ObjectTemplates/DevTools.json", "r")
    dev = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/memoEditor.lua", "r")
    memoEditor = file:read("*all")
file:close()

file = io.open("BaseFiles/RarityGetter.lua", "r")
    rarityGetter = file:read("*all")
file:close()

InsertTemplate(baseSave.ObjectStates, dev, MakeTransform(0.0, -4.5, 176.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0))
baseSave.ObjectStates[#baseSave.ObjectStates].ContainedObjects[1].LuaScript = memoEditor;
baseSave.ObjectStates[#baseSave.ObjectStates].ContainedObjects[2].LuaScript = rarityGetter;

file = io.open("ObjectTemplates/DeckCreator.json", "r")
    deckCreator = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/DeckLoader.lua", "r")
    deckCreatorScript = file:read("*all")
file:close()

InsertTemplate(baseSave.ObjectStates, deckCreator, MakeTransform(63.0, 13.85, -14.5, 0.0, 270.0, 0.0, 1.3, 0.1, 2.0), deckCreatorScript)

file = io.open("ObjectTemplates/Board.json", "r")
    board = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/boardScript.lua", "r")
    boardScript = file:read("*all")
file:close()

file = io.open("BaseFiles/EnergyWell.lua", "r")
    energyWellScript = file:read("*all")
file:close()

for curBoard = 1, #boardData do
    InsertTemplate(baseSave.ObjectStates, board, MakeTransform(boardData[curBoard][1], 0.86, boardData[curBoard][2], 0.0, boardData[curBoard][3], 0.0, 8.26, 1.0, 8.26), boardScript.."[["..energyWellScript.."]]")
    baseSave.ObjectStates[#baseSave.ObjectStates].LuaScriptState = boardData[curBoard][4];
end

file = io.open("ObjectTemplates/APISearch.json", "r")
    search = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/APICardSearch.lua", "r")
    searchScript = file:read("*all")
file:close()

InsertTemplate(baseSave.ObjectStates, search, MakeTransform(63.0, 13.85, -20.0, 0.0, 270.0, 0.0, 1.3, 0.1, 2.0), searchScript)


file = io.open("ObjectTemplates/PromoBox.json", "r")
    promoBox = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/NoAPIBasePromo.lua", "r")
    promoScript = file:read("*all")
file:close()

file = io.open("ObjectTemplates/BoosterBox.json", "r")
    boosterBox = json.decode(file:read("*all"))
file:close()

file = io.open("BaseFiles/NoAPIBaseBox.lua", "r")
    boosterScript = file:read("*all")
file:close()

file = io.open("BaseFiles/NoAPIPack.lua", "r")
    packScript = file:read("*all")
file:close()

setData = {}
boxData = {}

function GetBoxSize(box)
    if box == EARLYBOXMESH then
        return 5.0
    elseif box == MODERNBOXMESH then
        return 5.0
    elseif box == PROMOMESH then
        return 4.1
    elseif box == ETBMESH then
        return 7.0
    elseif box == TINMESH then
        return 4.3
    elseif box == BLISTERMESH then
        return 7.0
    elseif box == MINIBOXMESH then
        return 3.5
    elseif box == DECKMESH then
        return 4.0
    end
end

function getSteamUrl(url)
 if url then return"https://steamusercontent-a.akamaihd.net/ugc/"..url.."/"end
end

for gen = 1, #boxesByGen do
    if gen < 6 then
        Yrot = 90.0
        Xpos = -31.15 - ((gen-1) * 8.77)
        Ypos = 3.86 + ((gen-1) * 2.5)
    else
        Yrot = 270.0
        Xpos = 31.15 + ((gen-6) * 8.77)
        Ypos = 3.86 + ((gen-6) * 2.5)
    end
    space = 120.0
    for set = 1, #boxesByGen[gen] do
        if boxesByGen[gen][set][3] == DECKMESH then
            file = io.open("SetData/"..boxesByGen[gen][set][2].."a.lua", "r")
                setData[boxesByGen[gen][set][2].."a"] = file:read("*all")
            file:close()
            file = io.open("SetData/"..boxesByGen[gen][set][2].."b.lua", "r")
                setData[boxesByGen[gen][set][2].."b"] = file:read("*all")
            file:close()
            boxData[boxesByGen[gen][set][2].."a"] = {};
            copyTable(boxData[boxesByGen[gen][set][2].."a"], promoBox)
            boxData[boxesByGen[gen][set][2].."a"].LuaScript = setData[boxesByGen[gen][set][2].."a"]..promoScript
            boxData[boxesByGen[gen][set][2].."b"] = {};
            copyTable(boxData[boxesByGen[gen][set][2].."b"], promoBox)
            boxData[boxesByGen[gen][set][2].."b"].LuaScript = setData[boxesByGen[gen][set][2].."b"]..promoScript
            boxData[boxesByGen[gen][set][2].."a"].Description = boxesByGen[gen][set][4]
            boxData[boxesByGen[gen][set][2].."a"].CustomMesh.DiffuseURL = getSteamUrl(boxesByGen[gen][set][5])
            boxData[boxesByGen[gen][set][2].."a"].CustomMesh.MeshURL = getSteamUrl(boxesByGen[gen][set][3])
            boxData[boxesByGen[gen][set][2].."a"].CustomMesh.ColliderURL = getSteamUrl(boxesByGen[gen][set][3])
            boxData[boxesByGen[gen][set][2].."b"].Description = boxesByGen[gen][set][6]
            boxData[boxesByGen[gen][set][2].."b"].CustomMesh.DiffuseURL = getSteamUrl(boxesByGen[gen][set][7])
            boxData[boxesByGen[gen][set][2].."b"].CustomMesh.MeshURL = getSteamUrl(boxesByGen[gen][set][3])
            boxData[boxesByGen[gen][set][2].."b"].CustomMesh.ColliderURL = getSteamUrl(boxesByGen[gen][set][3])
        else
            file = io.open("SetData/"..boxesByGen[gen][set][2]..".lua", "r")
                setData[boxesByGen[gen][set][2]] = file:read("*all")
            file:close()
            if boxesByGen[gen][set][1] then
                boxData[boxesByGen[gen][set][2]] = {};
                copyTable(boxData[boxesByGen[gen][set][2]], boosterBox)
                boxData[boxesByGen[gen][set][2]].LuaScript = setData[boxesByGen[gen][set][2]]..boosterScript
                boxData[boxesByGen[gen][set][2]].ContainedObjects[1].LuaScript = packScript
            else
                boxData[boxesByGen[gen][set][2]] = {};
                copyTable(boxData[boxesByGen[gen][set][2]], promoBox)
                boxData[boxesByGen[gen][set][2]].LuaScript = setData[boxesByGen[gen][set][2]]..promoScript
            end
            boxData[boxesByGen[gen][set][2]].Description = boxesByGen[gen][set][4]
            boxData[boxesByGen[gen][set][2]].CustomMesh.DiffuseURL = getSteamUrl(boxesByGen[gen][set][5])
            boxData[boxesByGen[gen][set][2]].CustomMesh.MeshURL = getSteamUrl(boxesByGen[gen][set][3])
            boxData[boxesByGen[gen][set][2]].CustomMesh.ColliderURL = getSteamUrl(boxesByGen[gen][set][3])
        end
        space = space - GetBoxSize(boxesByGen[gen][set][3])
    end
    --calculate the Zpos by length, distance minimum by box type
    if space < 0 then error("no space on row") end
    slice = space / (#boxesByGen[gen] + 1)
    position = slice - 60.0
    if gen >= 6 then position = position - (position * 2) end
    for set = 1, #boxesByGen[gen] do
        if gen < 6 then position = position + (GetBoxSize(boxesByGen[gen][set][3]) / 2) + slice else position = position - ((GetBoxSize(boxesByGen[gen][set][3]) / 2) + slice) end
        if boxesByGen[gen][set][3] == DECKMESH then
            if gen < 6 then
                newXpos = Xpos + 0.6
                InsertTemplate(baseSave.ObjectStates, boxData[boxesByGen[gen][set][2].."a"],  MakeTransform(newXpos, Ypos, position, 0.0, Yrot, 0.0, 0.61, 0.61, 0.61))
                newXpos = newXpos - 2.8
                InsertTemplate(baseSave.ObjectStates, boxData[boxesByGen[gen][set][2].."b"],  MakeTransform(newXpos, Ypos, position, 0.0, Yrot, 0.0, 0.61, 0.61, 0.61))
                boxData[boxesByGen[gen][set][2].."b"].Transform = MakeTransform(Xpos, Ypos, position, 0.0, Yrot, 0.0, 0.61, 0.61, 0.61)
            else
                Xpos = newXpos - 0.6
                InsertTemplate(baseSave.ObjectStates, boxData[boxesByGen[gen][set][2].."a"],  MakeTransform(newXpos, Ypos, position, 0.0, Yrot, 0.0, 0.61, 0.61, 0.61))
                newXpos = newXpos + 2.8
                InsertTemplate(baseSave.ObjectStates, boxData[boxesByGen[gen][set][2].."b"],  MakeTransform(newXpos, Ypos, position, 0.0, Yrot, 0.0, 0.61, 0.61, 0.61))
            end
        else
            InsertTemplate(baseSave.ObjectStates, boxData[boxesByGen[gen][set][2]], MakeTransform(Xpos, Ypos, position, 0.0, Yrot, 0.0, 0.61, 0.61, 0.61))
        end
        if gen < 6 then position = position + (GetBoxSize(boxesByGen[gen][set][3]) / 2) else position = position - (GetBoxSize(boxesByGen[gen][set][3]) / 2) end
    end
end

export = json.encode(baseSave, {indent=true})

file = io.open("testExport.json", "w")
    file:write(export)
file:close()
