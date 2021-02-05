LANGUAGE = {
	-- Schema
	schemaName = "폴아웃 롤플레이",
	schemaDesc = "전쟁, 전쟁은 결코 변하지 않는다...",
	-- Factions
	["Brotherhood of Steel (Mojave chapter)"] = "브라더후드 오브 스틸 (모하비 챕터)",
	["Brotherhood of Steel (East coast)"] = "동부 브라더후드 오브 스틸",
	-- factionBOSDesc = "서부 브라더후드 오브 스틸의 모하비 황무지 파견대입니다.",
	factionBOSDesc = "위험한 기술을 자격을 갖추지 못한 사람들과 격리하여 세상의 안전과 인류의 보존을 도모한다는 신념을 가진 구세계의 유산을 발굴하는 기술-종교 집단이자 군벌입니다.",
	["Caeser's Legion"] = "시저의 군단",
	factionLegionDesc = "시저를 수장으로 하고 고대 로마 제국을 본뜬 전제적이고 호전적인 군벌 집단으로, 모하비 황무지 동쪽 애리조나 주를 통합하며 발흥하였으며, 서쪽으로 영토를 확장해감에 따라 NCR과 대립하고 있습니다.",
	["New California Republic"] = "뉴 캘리포니아 공화국",
	factionNCRDesc = "70만 명이 넘는 국민이 있는 거대한 민주주의 국가로, 그 영토는 캘리포니아와 네바다, 멕시코, 그리고 콜로라도 강 인근에 달합니다.",
	["Brotherhood Outcast"] = "브라더후드 아웃캐스트",
	factionOutcastDesc = "동부 브라더후드 오브 스틸이 전쟁 전 고급 기술의 수복과 보존이라는 수도 황무지에서의 본래 목표를 망각했다고 생각하여 그들로부터 갈라져 나온 보수적 분파입니다.",
	["Wastelander"] = "황무지인",
	factionWastelanderDesc = "모하비 황무지와 그곳의 폐허에서 사는 평범한 사람들입니다.",
	["Enclave"] = "엔클레이브",
	factionEnclaveDesc = "전쟁 이전의 미국의 정당한 계승권자라고 주장하는 군사세력이며, 파시즘과 선민의식으로 무장하였습니다.",
	-- Commands
	charSpawn01 = "당신은 당신 자신을 부활 지점에 부활시켰습니다.",
	charSpawn02 = "당신은 %s님을 부활 지점에 부활시켰습니다.",
	charSpawn03 = "%s님이 당신을 부활 지점에 부활시켰습니다.",
	revive01 = "당신은 당신 자신을 죽은 위치에 부활시켰습니다.",
	revive02 = "당신은 %s님을 죽은 위치에 부활시켰습니다.",
	revive03 = "%s님이 당신을 죽은 위치에 부활시켰습니다.",
	-- Radio
	Frequency = "주파수 설정",
	radioFormat = "%s님의 무전 \"%s\"",
	radio_eavesdropFormat = "%s님의 무전 \"%s\"",
	freqSet = "라디오의 주파수를 %s으로 설정했습니다.",
	radioNotOn = "당신의 무전기가 켜져있지 않습니다!",
	radioRequired = "그것을 하려면 무전기가 있어야 합니다.",
	radioAlreadyOn = "이미 무전기가 켜져 있습니다!",
	-- Tying
	tying = "구속 풀어주는 중...",
	unTying = "구속하는 중...",
	isTied = "구속됨",
	fTiedUp = "손이 묶였습니다.",
	fBeingTied = "손이 묶이고 있습니다.",
	tiedUp = "손이 묶여 있습니다.",
	beingTied = "손이 묶이고 있습니다.",
	beingUntied = "구속이 풀리고 있습니다.",
	restrictedClass = "구속된 상태에서는 직업을 바꿀 수 없습니다!",
	-- Items
	eqbagDesc = "다른 아이템을 담거나 사용할 수 있는 일정 크기의 여분의 인벤토리를 사용할 수 있게 해주는 가방입니다.\n\n 가방 인벤토리 크기: %sx%s",
	eqbagDescEntity = "%sx%s의 인벤토리를 가지고 있는 가방",
	["Brotherhood of Steel holotag"] = "브라더후드 오브 스틸 전자 인식표",
	itemBOSHolotagDesc = "대전쟁 전 미군처럼, 브라더후드 오브 스틸의 구성원은 모두 군번줄과 두 개의 인식표를 가지고 있습니다. 인식표에는 착용자의 정보가 기록되어 있어 시신을 식별할 수 있도록 합니다.",
	Read = "읽기",
	holotagRead = "인식표에 기록된 내용: %s, %s",
	Set = "설정하기",
	holotagSet = "인식표에 다음 내용을 기록했습니다: %s, %s",
	notBOS = "당신은 브라더후드 오브 스틸의 일원이 아닙니다!",
	["Sunset Sarsaparilla star bottle cap"] = "선셋 사르사파릴라 별 병뚜껑",
	itemBottlecapStarDesc = "선셋 사르사파릴라 병뚜껑 아랫면에 반짝이는 파란 별 무늬가 그려져 있는 희귀한 병뚜껑입니다.",
	bottlecapAquired = "병뚜껑 하나를 얻었습니다.",
	["Carton of cigarettes"] = "담배 한 보루",
	itemCigaretteDesc = "담뱃잎을 가공하여 불 붙여 피울 수 있도록 만든 가공 제품입니다.",
	["Pack of cigarettes"] = "담배 한 갑",
	["Abraxo cleaner"] = "아브락소 세제",
	itemCleanerDesc = "아브락소다인 화학에서 생산한 전쟁 전 세제입니다. 대전 후 200년이 지난 지금도 수도 황무지에서 찾아볼 수 있습니다.",
	["Deathclaw egg"] = "데스클로 알",
	itemDeathclawEggDesc = "황무지에서 가장 흉포한 생물 중 하나인 데스클로의 알입니다.",
	["Fission battery"] = "핵분열 건전지",
	itemFissionBatteryDesc = "핵분열 원리가 접목된 전쟁 전 건전지입니다.",
	["Fusion core"] = "퓨전 코어",
	itemFusionCoreDesc = "마이크로퓨전 셀과 유사하게 핵융합 전지이지만, 더욱 고효율이며 고출력인 덕에 시설의 전력 설비나 파워 아머의 동력원으로 사용됩니다.",
	["Handheld Radio"] = "휴대용 무전기",
	itemHandheldRadioDesc = "주파수 조작 기능이 있는 휴대용 무전기입니다.\n현재 전원은 %s%s 입니다.",
	itemHandheldRadioDescStatus = " 상태이며 주파수는 ",
	["Jet"] = "제트",
	itemJetDesc = "뉴 레노의 마이론이라는 자가 만들어 낸 강력한 마약으로 브라민의 배설물을 증류하여 만듭니다.\n스태미너를 즉시 30 회복합니다.",
	Inhale = "흡입하기",
	["Lunchbox"] = "도시락통",
	itemLunchboxDesc = "볼트 텍이 대전 전 만들어 회사 광고에 사용한 홍보 물품입니다.",
	["Med-X"] = "메드-X",
	itemMedXDesc = "신체 능력을 비약적으로 향상시켜 고통을 견딜 수 있게 하는 약품입니다.\n40초 간 방어력이 15로 유지됩니다.",
	Dose = "복용하기",
	itemMedXEffectsEnded = "메드-X의 효과가 사라졌습니다.",
	itemBuffoutEffectsEnded = "버프아웃의 효과가 사라졌습니다.",
	itemDayTripperEffectsEnded = "데이 트리퍼의 효과가 사라졌습니다.",
	itemMentatsEffectsEnded = "멘타츠의 효과가 사라졌습니다.",
	["Scrap metal"] = "금속 부품",
	itemMetalDesc = "어딘가에서 떨어져 나온 금속 부품입니다.",
	["Pre-War money"] = "전쟁 전 화폐",
	itemMoneyDesc = "구 세계에서 쓰던 종이 화폐 다발로, 이제는 가치가 없다고 봐야 할 겁니다.",
	["NCR dogtag"] = "NCR 인식표",
	itemNCRDogtagDesc = "NCR 병사들이 지니고 다니는 군번줄과 인식표입니다.",
	dogtagRead = "인식표에 기록된 내용: %s, %s",
	dogtagSet = "인식표에 다음 내용을 기록했습니다: %s, %s",
	notNCR = "당신은 뉴 캘리포니아 공화국의 일원이 아닙니다!",
	["NCR money"] = "NCR 화폐 다발",
	itemNCRMoneyDesc = "뉴 캘리포니아 공화국에서 통용되는 지폐로, 브라더후드 오브 스틸이 NCR 금고를 폭파시킨 이후 금본위제도가 무너져 가치가 떨어졌습니다.\n병뚜껑 두 개 가치를 지닌 5 달러 지폐의 100장 묶음입니다.",
	["Empty Nuka-Cola bottle"] = "누카 콜라 빈 병",
	itemNukaColaBottleDesc = "대전쟁 전 미국에서 가장 인기있었던 탄산 음료로, 2044년 처음 나왔을 때는 그냥 방사능이 없는 평범한 탄산음료였으나 출시와 같은 해에 일어난 과일 대기근으로 인해 생산에 필요한 재료들을 구하기가 어려워지자 성분이 아예 바뀌어 출시되었습니다.\n병뚜껑과 내용물이 없는 빈 병입니다.",
	["Pressure cooker"] = "압력솥",
	itemPressureCookerDesc = "고압으로 음식을 조리하는 금속 조리기구입니다.",
	["Pre-War book"] = "전쟁 전 책",
	itemPreWarBookDesc = "파괴되거나, 불에 타거나, 읽을 수 없게 된 책입니다.",
	["Radaway"] = "라드어웨이",
	itemRadawayDesc = "라드어웨이는 몸 속의 방사능 물질과 결합하여 체외로 내보낼 수 있게 하는 정맥 주사제입니다.",
	Inject = "주사하기",
	["Radiation checker"] = "방사능 수치 측정기",
	itemRadcheckerDesc = "누군가의 방사능 수치를 측정할 때 사용합니다.",
	radAmountChecked = "측정 대상의 방사능 수치는 %s 입니다.",
	radChecked = "%s님이 당신의 방사능 수치를 측정했습니다.",
	radCheckedSelf = "당신의 방사능 수치는 %s 입니다.",
	Check = "측정하기",
	Self = "자가 측정하기",
	["Rad-X"] = "라드-X",
	itemRadXDesc = "신체의 방사능 저항력을 일정 시간 동안 급격히 향상시키는 약품입니다.\n2분간 방사능 증감 없이 그대로 멈춥니다.",
	itemRadXEffectsEnded = "라드-X의 효과가 사라졌습니다.",
	["Repair kit"] = "수리 공구 키트",
	itemRepairToolsDesc = "무기와 방어구의 수리에 쓰이는 공구를 모아두었습니다.",
	["Sensor module"] = "감지기",
	itemSensorModuleDesc = "전기 신호를 보내는 감지기입니다.",
	["Stealth Boy"] = "스텔스 보이",
	itemStealthboyDesc = "사용자에게 은폐장을 씌워 일정 시간 동안 거의 보이지 않게 만들어 줍니다.",
	["Empty Sunset Sarsaparilla bottle"] = "선셋 사르사파릴라 빈 병",
	itemSunsetsarsaparillaBottleDesc = "새서프래스 뿌리에서 짜낸 향유로 만든 탄산음료입니다.\n병뚜껑과 내용물이 없는 빈 병입니다.",
	["Tin can"] = "깡통",
	itemTinCanDesc = "포크 앤 빈즈과 같이 부패하기 쉬운 식품을 보관하고 보존하는 데 사용되는 밀폐 금속 용기입니다.",
	["Tunneler hide"] = "터널러 가죽",
	itemTunnelerHideDesc = "디바이드에서 넘어온 끔찍한 생물체인 터널러의 가죽입니다.",
	["Turpentine"] = "테레빈유",
	itemTurpentineDesc = "송진을 수증기로 증류하여 얻는 정유입니다. 맛이 시고 특이한 향기가 나는 무색 또는 연한 노란색의 끈끈한 액체로, 용제ㆍ합성 장뇌ㆍ페인트ㆍ구두약 따위를 만드는 데 쓰입니다.",
	["Wonderglue"] = "초강력 접착제",
	itemWonderglueDesc = "접착력이 남아 있는 전쟁 전 접착제입니다.",
	["Wood"] = "나무",
	itemWoodDesc = "나무로 만든 값싸고 풍부한 재료인 나무는 강철과 함께 가장 풍부한 제작 재료입니다.",
	["Steel"] = "강철",
	itemSteelDesc = "철, 탄소 및/또는 기타 금속의 합금인 저렴하지만 매우 유용한 강철은 나무와 함께 가장 풍부한 제작 재료입니다.",
	["Gunpowder"] = "화약",
	itemGunpowderDesc = "황, 숯 및 질산칼륨의 폭발성 화학 혼합입니다. 탄약을 만드는 데 쓰입니다.",
	["Acid"] = "산",
	itemAcidDesc = "광석을 제련하고 화약을 제조하는 데 주로 사용되는 화학 물질입니다.",
	["Cloth"] = "천",
	itemClothDesc = "가구 및 가벼운 옷과 방어구에 사용되는 일반적인 재료입니다.",
	["Leather"] = "가죽",
	itemLeatherDesc = "동물의 피부를 무두질하고 처리한 유연하고 내구성이 뛰어난 산물입니다.",
	["Aluminium"] = "알루미늄",
	itemAluminiumDesc = "튼튼하면서도 가벼운 금속인 알루미늄은 무기, 갑옷, 파워 아머, 로봇의 개조 뿐만 아니라 다양한 정착지 설비와 전자제품을 만드는 데 사용됩니다.",
	["Ballistic fiber"] = "방탄섬유",
	itemBallisticFiberDesc = "인장 강도가 매우 높은 가벼운 합성 섬유입니다.",
	["Buffout"] = "버프아웃",
	itemBuffoutDesc = "프로 운동선수들의 비밀스런 약물 사용에 의해 대전쟁 전에 대중화된 고도로 발달된 스테로이드입니다.",
	["Day Tripper"] = "데이 트리퍼",
	itemDayTripperDesc = "전쟁 전 '행복한 탈출'을 찾는 이들이 선호하던 화학 약품인 데이 트리퍼는 운을 올려주지만, 제한 시간 동안 힘을 낮춥니다.",
	["Mentats"] = "멘타츠",
	itemMentatsDesc = "마음을 바꾸는 알약이 든 종이갑입니다. 기억과 관련된 기능을 증가시키고 다른 정신적 과정을 가속화합니다. 중독성이 강합니다.",
	["Handcuffs"] = "수갑",
	itemZipTieDesc = "누군가의 행동을 제한할 때 쓰이는 도구입니다.",
	["10mm round"] = "10mm 권총 탄약", -- Fallout 3
	item10mmDesc = "10mm 권총탄 %s 발이 들어있습니다.",
	["12.7mm round"] = "12.7mm 탄약",
	item127mmDesc = "12.7mm 탄약 %s 발이 들어있습니다.",
	["12 gauge shotgun shell"] = "12 게이지 산탄", -- Fallout 3
	item12GaugeDesc = "12 게이지 산탄 %s 발이 들어있습니다.",
	["20 gauge shotgun shell"] = "20 게이지 산탄",
	item20GaugeDesc = "20 게이지 산탄 %s 발이 들어있습니다.",
	[".22LR round"] = ".22 탄약",
	item22LRDesc = ".22 탄약 %s 발이 들어있습니다.",
	[".308 round"] = ".308 소총 탄약", -- Fallout 3
	item308Desc = ".308 소총 탄약 %s 발이 들어있습니다.",
	[".357 Magnum round"] = ".357 매그넘 권총 탄약",
	item357MagnumDesc = ".357 매그넘 권총 탄약 %s 발이 들어있습니다.",
	[".44 Magnum round"] = ".44 매그넘 권총 탄약", -- Fallout 3
	item44MagnumDesc = ".44 매그넘 권총 탄약 %s 발이 들어있습니다.",
	[".50 MG"] = ".50 MG 탄약",
	item50MGDesc = ".50 MG 탄약 %s 발이 들어있습니다.",
	["5.56mm round"] = "5.56mm 소총 탄약",
	item556mmDesc = "5.56mm 소총 탄약 %s 발이 들어있습니다.",
	["5mm round"] = "5mm 탄약",
	item5mmDesc = "5mm 탄약 %s 발이 들어있습니다.",
	["9mm round"] = "9mm 권총 탄약",
	item9mmDesc = "9mm 권총탄 %s 발이 들어있습니다.",
	["Electron charge pack"] = "일렉트론 차지 팩",
	itemElectronChargePackDesc = "개틀링 레이저 등 주로 에너지 중화기에 사용되는 충전지로, 개틀링 레이저 기준 %s 발 사격 가능한 분량이 충전되어 있습니다.",
	["Energy cell"] = "에너지 셀",
	itemEnergyCellDesc = "AEP7 레이저 권총, 플라즈마 권총 등 다양한 에너지 화기에 사용되는 충전지로, 레이저 권총 기준 %s 발 사격 가능한 분량이 충전되어 있습니다.",
	["Microfusion cell"] = "마이크로퓨전 셀",
	itemMicrofusionCellDesc = "AER9 레이저 소총, 플라즈마 소총 등 다양한 에너지 화기에 사용되는 충전지로, 레이저 소총 기준 %s 발 사격 가능한 분량이 충전되어 있습니다.",
	["Bag"] = "배낭",
	["Large bag"] = "큰 배낭",
	itemBaseDurabilityDesc = "\n \n 내구도: ",
	["Ranger casual outfit"] = "레인저 캐주얼 복장",
	itemNCRRangerCasualDesc = "군대의 정예병인 레인저들이 입는 복장입니다.\n여성 구울 / 흑인 / 동양인 캐릭터는 이 의상을 착용할 수 없습니다.",
	["Books"] = "책",
	["Guns and Bullets"] = "총기와 탄약",
	itemGunsAndBulletsDesc = "읽을 경우 지능을 1 올려줍니다.",
	["Nikola Tesla and You"] = "니콜라 테슬라와 당신",
	itemNikolaTeslaAndYouDesc = "읽을 경우 지능을 1 올려줍니다.",
	["N99 10mm pistol"] = "N99 10mm 권총", -- Fallout 3
	["10mm pistol"] = "10mm 권총",
	item10mmPistolDesc = "2051년 기존의 N80 권총을 대체하여 제식 채용된 자동 권총으로, 10mm 권총 탄약을 사용합니다.",
	["10mm submachine gun"] = "10mm 기관단총", -- Fallout 3
	["10mm SMG"] = "10mm 기관단총",
	item10mmSMGDesc = "10mm 권총 탄약을 자동 사격하는 기관단총입니다.",
	["12.7mm pistol"] = "12.7mm 권총",
	item127mmPistolDesc = "스위스제 SIG-자우어 14mm 권총을 개조하여 12.7mm 권총 탄약을 사용하도록 만든 자동 권총입니다.",
	[".22 rifle"] = ".22 소총",
	item22RifleDesc = "유해 조수를 사냥하기 위해 주로 쓰이던 소총으로, .22 구경 탄약을 사용합니다.",
	[".357 Magnum revolver"] = ".357 매그넘 리볼버",
	item357RevolverDesc = "고정 실린더를 채택한 싱글 액션 .357 매그넘 리볼버 권총입니다.\n.357 매그넘 권총 탄약을 사용합니다.",
	[".44 Magnum revolver"] = ".44 매그넘 리볼버",
	item44RevolverDesc = "스윙 아웃 실린더를 채택한 더블 액션 .44 매그넘 리볼버 권총입니다.\n.44 매그넘 권총 탄약을 사용합니다.",
	["Mysterious Stranger's .44 Magnum"] = "의문의 사나이의 .44 매그넘 리볼버",
	["M&A 9mm pistol"] = "M&A 9mm 권총",
	["9mm pistol"] = "9mm 권총",
	item9mmPistolDesc = "전쟁 전 M&A 총기 설계사에서 설계한 자동 권총으로, 뉴 캘리포니아 공화국 군대의 제식 권총입니다.\n9mm 권총 탄약을 사용합니다.",
	["9mm submachine gun"] = "9mm 기관단총",
	["9mm SMG"] = "9mm 기관단총",
	item9mmSMGDesc = "9mm 권총 탄약을 자동 사격하는 기관단총입니다.",
	["Anti-materiel rifle"] = "대물 저격총",
	itemAntiMaterielRifleDesc = "장갑판마저 가볍게 뚫어버리는 .50 MG탄을 사용하는 볼트 액션 저격 소총입니다.",
	["Assault carbine"] = "돌격 소총",
	itemAssaultCarbineDesc = "완전 자동 사격이 가능한 단축형 돌격 소총으로, 5mm 실탄을 사용합니다.",
	["Baseball bat"] = "야구 방망이",
	itemBaseballBatDesc = "대전쟁 전 사람들이 즐기던 스포츠의 일종인 야구 경기에 사용하던 방망이입니다.",
	["Primary Fire: Attack.\nSecondary Fire: Guard.\nR: Parry."] = "왼쪽 클릭: 공격.\n오른쪽 클릭: 방어.\nR: 받아넘기기.",
	["Primary Fire: Attack.\nSecondary Fire: Guard."] = "왼쪽 클릭: 공격.\n오른쪽 클릭: 방어.",
	["Battle rifle"] = "전투 소총",
	itemBattleRifleDesc = "제2차 세계 대전 당시 미군의 제식 소총이었던 M1 개런드를 .308 소총탄을 사용하도록 개조한 반자동 소총입니다.",
	["Caravan shotgun"] = "캐러밴 산탄총",
	itemCaravanShotgunDesc = "황무지를 오가는 캐러밴들이 주로 사용하는 더블 배럴 산탄총입니다.\n20 게이지 산탄을 사용합니다.",
	["Cattle prod"] = "소몰이 막대",
	-- itemCattleProdDesc = "소와 같은 가축을 몰고 다니는 데 쓰던 전기 충격 막대이지만, NCR 헌병대가 주로 사용하기도 합니다.",
	itemCattleProdDesc = "소와 같은 가축을 몰고 다니는 데 쓰던 전기 충격 막대입니다.",
	["Type 93 Chinese assault rifle"] = "93식 중공군 돌격 소총", -- Fallout 3
	["Chinese assault rifle"] = "중공군 돌격 소총",
	itemChineseAssaultRifleDesc = "대전쟁 이전 중공군의 제식 소총으로 탄약 수급을 원활하게 하기 위해 5.56mm 소총탄을 사용합니다.",
	["Combat knife"] = "전투용 단검", -- Fallout 3
	itemCombatKnifeDesc = "대전쟁 전 미군의 제식으로 채택되었던 단검으로 가볍고 예리합니다.",
	["Combat shotgun"] = "전투 산탄총", -- Fallout 3
	itemCombatShotgunDesc = "대전쟁 이전 미군의 제식 산탄총으로 20 게이지 산탄을 사용합니다.",
	["Cowboy repeater"] = "카우보이 리피터",
	itemCowboyRepeaterDesc = ".357 매그넘 권총탄을 사용하는 레버 액션 라이플입니다.",
	["Frag grenade"] = "세열 수류탄", -- Fallout 3
	itemFragGrenadeDesc = "폭발할 때에 금속 파편이 퍼져서 살상 범위를 확대하는 수류탄입니다.",
	["Gatling laser"] = "개틀링 레이저", -- Fallout 3
	itemGatlingLaserDesc = "레이저 광선을 자동 사격하는 레이저 중화기로 그 크기와 무게 탓에 파워 아머를 입은 병사들이 주로 사용했습니다.\n일렉트론 차지 팩을 탄약으로 사용합니다.",
	["Hunting rifle"] = "사냥용 소총", -- Fallout 3
	itemHuntingRifleDesc = "사냥꾼들이 주로 사용하던 .308 볼트 액션 소총입니다.",
	itemHuntingRifleScopeDesc = "사냥꾼들이 주로 사용하던 .308 볼트 액션 소총입니다.\n망원 조준경이 달려 있습니다.",
	["Hunting shotgun"] = "사냥용 산탄총",
	itemHuntingShotgunDesc = "사냥꾼들이 주로 사용하던 12 게이지 산탄총입니다.",
	itemLAERDesc = "레이저 보조 전자기 소총(LAER)은 펄스 건과 같이 전기 충격파를 발사하는 소총입니다.\n마이크로퓨전 셀을 탄약으로 사용합니다.",
	["AEP7 laser pistol"] = "AEP7 레이저 권총", -- Fallout 3
	["Laser pistol"] = "레이저 권총",
	itemLaserPistolDesc = "대전쟁 이전에 군용 무기로 사용되었던 레이저 화기로, 에너지 무기 중에서는 가장 흔하게 볼 수 있습니다.\n에너지 셀을 탄약으로 사용합니다.",
	["Laser RCW"] = "레이저 RCW",
	itemLaserRCWDesc = "RCW는 고속 축전 무기(Rapid Capacitor Weapon)의 약자로, 레이저 광선을 자동 사격하는 기관단총입니다.\n일렉트론 차지 팩을 탄약으로 사용합니다.",
	["AER9 laser rifle"] = "AE9 레이저 소총", -- Fallout 3
	["Laser rifle"] = "레이저 소총",
	itemLaserRifleDesc = "대전쟁 이전에 군용 무기로 사용되었던 레이저 화기로, 거친 환경에서도 신뢰성이 아주 높았기 때문에 널리 사용되었습니다.\n마이크로퓨전 셀을 탄약으로 사용합니다.",
	itemLaserRifleScopeDesc = "대전쟁 이전에 군용 무기로 사용되었던 레이저 화기로, 거친 환경에서도 신뢰성이 아주 높았기 때문에 널리 사용되었습니다.\n조준경이 달려 있습니다.\n마이크로퓨전 셀을 탄약으로 사용합니다.",
	itemLaserRifleSplitterDesc = "대전쟁 이전에 군용 무기로 사용되었던 레이저 화기로, 거친 환경에서도 신뢰성이 아주 높았기 때문에 널리 사용되었습니다.\n분광기가 달려 있습니다.\n마이크로퓨전 셀을 탄약으로 사용합니다.",
	["Lead pipe"] = "납 파이프",
	itemLeadPipeDesc = "어딘가의 배관에 쓰이던 납으로 된 배관입니다.",
	["Light machine gun"] = "경기관총",
	itemLMGDesc = "분대지원화기로 쓰일 수 있도록 소총탄을 사용하는 기관총으로, 대전쟁 전 미국의 제식 소총탄이었던 5.56mm 소총탄을 사용합니다.",
	["Machete"] = "마체테",
	itemMacheteDesc = "날이 넓적하게 생겨 잎이나 가지, 덩쿨을 쳐내는 데 쓰기 편합니다.",
	["Marksman carbine"] = "지정 사수 소총",
	itemMarksmanCarbineDesc = "명중률을 향상시키기 위해 전술 개머리판과 4배율 조준경을 부착한 단축형 돌격 소총으로, 5.56mm 소총탄을 사용합니다.",
	["Minigun"] = "미니건",
	itemMinigunDesc = "5mm 실탄을 자동 사격하는 중화기로 그 크기와 무게 탓에 파워 아머를 입은 병사들이 주로 사용했습니다.\n5mm 실탄을 사용합니다.",
	["Multiplas rifle"] = "멀티플라즈 소총",
	itemMultiplasRifleDesc = "대전쟁 이전에 군용 무기와 산업용 장비로 널리 사용되었던 플라즈마 소총을 개량하여 한 번의 사격에 세 발씩 나가도록 만들었습니다.\n마이크로퓨전 셀을 탄약으로 사용합니다.",
	["Wrench"] = "렌치",
	itemWrenchDesc = "파이프렌치는 개구스패너의 일종입니다. 몽키렌치와 구조가 매우 유사하며, 그냥 몽키렌치라고 부르기도 합니다.",
	["Plasma Defender"] = "플라즈마 디펜더",
	itemPlasmaDefender = "오스트리아제 글록 86 플라즈마 권총으로 대전쟁 전 가스통 글록 인공지능에 의해 설계되었습니다.\n에너지 셀을 탄약으로 사용합니다.",
	["Plasma pistol"] = "플라즈마 권총",
	itemPlasmaPistolDesc = "고온의 플라즈마를 탄환으로 쏘는 에너지 화기 권총입니다.\n에너지 셀을 탄약으로 사용합니다.",
	["Plasma rifle"] = "플라즈마 소총",
	itemPlasmaRifleDesc = "대전쟁 이전에 군용 무기와 산업용 장비로 널리 사용되었던 플라즈마 화기입니다.\n마이크로퓨전 셀을 탄약으로 사용합니다.",
	["Police pistol"] = "경찰용 권총",
	itemPolicePistolDesc = "스윙 아웃 실린더를 채택한 더블 액션 .357 매그넘 리볼버 권총입니다.\n.357 매그넘 권총 탄약을 사용합니다.",
	["Power fist"] = "파워 피스트",
	itemPowerFistDesc = "수압 피스톤이 부착되어 피격 대상을 강하게 쳐내는 기계식 글러브입니다.",
	["R91 assault rifle"] = "R91 돌격 소총",
	["Assault rifle"] = "돌격 소총",
	itemR91AssaultRifleDesc = "대전쟁 이전 미군의 제식 소총으로, 5.56mm 소총탄을 사용합니다.",
	["Recharger pistol"] = "충전식 권총",
	itemRechargerPistolDesc = "내장된 마이크로퓨전 생성기를 통해 탄약을 무제한으로 공급하는 레이저 권총으로, 충전식 소총보다 진보한 자동 충전 방식을 사용해 최대 20발까지 충전할 수 있습니다.",
	["Recharger rifle"] = "충전식 소총",
	itemRechargerRifleDesc = "내장된 마이크로퓨전 생성기를 통해 탄약을 무제한으로 공급하는 레이저 소총으로, 자동 충전 방식은 첫 시도였기 때문에 7발 밖에 충전되지 않는다는 한계가 있습니다.",
	["Service rifle"] = "제식 소총",
	itemServiceRifleDesc = "뉴 캘리포니아 공화국 군대가 제식으로 사용하는 반자동 소총으로, 대전쟁 전 미국의 제식 소총탄이었던 5.56mm 소총탄을 사용합니다.",
	itemServiceRifleBayonetDesc = "뉴 캘리포니아 공화국 군대가 제식으로 사용하는 반자동 소총으로, 대전쟁 전 미국의 제식 소총탄이었던 5.56mm 소총탄을 사용합니다.\n자동 사격이 가능하도록 리시버를 교체했으며, 총검이 달려 있습니다.",
	itemServiceRifleReflexDesc = "뉴 캘리포니아 공화국 군대가 제식으로 사용하는 반자동 소총으로, 대전쟁 전 미국의 제식 소총탄이었던 5.56mm 소총탄을 사용합니다.\n리플렉스 사이트가 달려 있습니다.",
	["Single shotgun"] = "단총신 산탄총",
	itemSingleShotgunDesc = "한 발의 산탄을 장전할 수 있는 20 게이지 산탄총입니다.",
	["Sniper rifle"] = "저격 소총",
	itemSniperRifleDesc = "망원 조준경이 달린 군용 저격 소총으로, .308 탄약을 사용합니다.",
	["Trail carbine"] = "트레일 카빈",
	itemTrailCarbineDesc = ".44 매그넘 권총탄을 사용하는 레버 액션 소총입니다.",
	["Tri-beam laser rifle"] = "트라이빔 레이저 소총",
	itemTribeamLaserRifleDesc = "AER9 레이저 소총을 개량하여 한 번 사격에 레이저 광선 세 발이 나가도록 만들었습니다.\n마이크로퓨전 셀을 탄약으로 사용합니다.",
	["Varmint rifle"] = "버민트 소총",
	itemVarmintRifleDesc = "유해 조수를 사냥하기 위해 주로 쓰이던 소총으로, 대전쟁 전 미국의 제식 소총탄이었던 5.56mm 소총탄을 사용합니다.",
	
	-- Misc
	voices = "음성 대사",

	["Agility"] = "민첩성",
	["Intelligence"] = "지능",
	["Endurance"] = "지구력",
	["Strength"] = "힘",
	["Dexterity"] = "민첩성",
	["Stamina"] = "체력",
	["Luck"] = "행운",
	["Ammunition"] = "탄약",
	["Communication"] = "통신",
	["Medical"] = "의료 물품",
	["Outfit"] = "착용품",
	["Clothing"] = "의류",
	["Illegal"] = "불법 물품",
	["Consumeable"] = "일용품",
	["Consumables"] = "일용품",
	["Storage"] = "가방",
	["Permits"] = "허가서",
	["Grenade"] = "수류탄",

	/*
		CONFIG TRANSLATION
	*/
	Permakill = "영구 사망",
	pkActive = "목숨 1개",
	pkWorld = "월드에서 사망",
	color = "색깔",
	font = "폰트",
	logo = "로고 ",
	logoURL = "로고URL",
	music = "음악",
	areaDispSpeed = "영역 표시 속도",
	areaFontSize = "영역 표시 크기",
	defMoney = "시작 자본",
	invH = "인벤토리 세로",
	invW = "인벤토리 가로",
	maxAttribs = "최대 능력치",
	maxChars = "최대 캐릭터",
	minDescLen = "최소 설명 글자",
	areaPlugin = "영역 플러그인",
	runSpeed = "달리기 속도",
	saveInterval = "저장 간격",
	sbRecog = "인식",	
	spawnTime = "살아나는 시간",
	walkRatio = "걷기 사이클",
	walkSpeed = "걷기 속도",
	chatColor = "채팅 색깔",
	chatListenColor = "채팅 듣기 색깔",
	chatRange = "채팅 거리",
	loocDelay = "LOOC 딜레이",
	oocDelay = "OOC 딜레이",
	doorCost = "문 가격",
	doorLockTime = "문 잠그는 시간",
	doorSellRatio = "문 환불 퍼센트",
	date = "날짜",
	day = "일",
	month = "월",
	year = "년",
	penalty = "페널티",
	deathMoney = "현금 페널티",
	deathWeapon = "무기 페널티",
	raid = "은행털이",
	raidGovernment = "정부 은행털이",
	raidLaws = "최소 경찰 수",
	raidMoneyWorth = "1회 털이 금액",
	raidSpawn = "은행 돈 스폰 시간",
	raidTimer = "1회 털이 딜레이",
	raidWanted = "털이시 수배시작",
	rewardArrest = "체포시 보상",
	rewardKill = "사살시 보상",
	schema = "RP",
	bankFee = "은행 수수료 ",
	punchStamina = "펀치시 소요 스태미너",
	dpBank = "은행 페널티",
	garbageCount = "쓰레기 수",
	garbageInterval = "쓰레기 스폰시간",
	garbageMax = "쓰레기 최대",
	hitCost = "암살 비용",
	incomeInterval = "이자 시간",
	incomeRate = "이자 퍼센트",
	jailTime = "수감시간",
	potPerLaw = "경찰 1인당 대마 화분 수",
	startMoney = "시작 자본",
	vendorInterval = "상인 업데이트 시간",
	vendorWeedInterval = "대마상인 업데이트 시간",
	voteDemote = "탄핵시 필요 표",
	voteJob = "직업시 필요 표",
	wageInterval = "월급 시간",
	allowVoice = "보이스 허용",
	thirdperson = "3인칭 허용",
	wepAlwaysRaised = "언제나 올리기",
	sbHeight = "스코어보드 높이",
	sbWidth = "스코어보드 넓이",
	server = "서버",
	visual = "",
	/*
		UI TRANSLATION
	*/
	/*
		MISC.
	*/
	Unequip = "장착 해제",
	Equip = "장착하기",
	Preview = "미리 보기",
	Use = "사용하기",
	["Use Forward"] = "앞에 사용",
	Load = "사용",
	Eat = "먹기",
	Examine = "조사하기",
	View = "보기",
	Read = "읽기",
	Drink = "마시기",
	Toggle = "켜기/끄기",
	Freq = "주파수",
	Spawn = "소환하기",
	Sell = "판매하기",
	Store = "보관하기",
	Repair = "수리하기",
	Ready = "준비하기",
	Detach = "부착물 분리하기",
	name = "이름",
	desc = "설명",
	bentities = "상점",
	business = "보급",
	inventory = "가방",
	acharacters = "계정", 
	primary = "주무기",
	sidearm = "보조무기",

	Cap = "병뚜껑",
	Caps = "병뚜껑",

	[""] = "",
	Desc = "",
}