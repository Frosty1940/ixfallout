local pl = PLUGIN

pl.name = "Lockpick Item"
pl.description = "Adds a lock-picking item."
pl.author = "Nforce"

ix.lang.AddTable("english", {
	itemHairpinDesc = "Something used to pick locks.",
	lockpicking = "Lock-picking...",
	lockpickingSuccess = "You have successfully lock-picked the door.",
	lockpickingFailed = "The lockpick broke.",
	notLockpickable = "That isn't a valid lock-pickable door.",
})

ix.lang.AddTable("korean", {
	["Hairpin"] = "머리핀",
	itemHairpinDesc = "자물쇠를 해제하는 데 쓰입니다.",
	lockpicking = "자물쇠 따는 중...",
	lockpickingSuccess = "문의 자물쇠를 땄습니다.",
	lockpickingFailed = "머리핀이 부러졌습니다.",
	notLockpickable = "머리핀으로 딸 수 있는 문이 아닙니다.",
})