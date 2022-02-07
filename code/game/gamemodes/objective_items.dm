//Contains the target item datums for Steal objectives.

/datum/objective_item
	var/name = "A silly bike horn! Honk!"
	var/targetitem = /obj/item/bikehorn //typepath of the objective item
	var/list/valid_containers = list() // Valid containers that the target item can be in.
	var/difficulty = 9001 //vaguely how hard it is to do this objective
	var/list/excludefromjob = list() //If you don't want a job to get a certain objective (no mayor stealing his own medal, etcetc)
	var/list/altitems = list() //Items which can serve as an alternative to the objective (darn you blueprints)
	var/list/special_equipment = list()
	var/objective_type = OBJECTIVE_ITEM_TYPE_NORMAL
	/// Whether this item exists on the station map at the start of a round.
	var/exists_on_map = FALSE

/datum/objective_item/proc/check_special_completion() //for objectives with special checks (is that slime extract unused? does that intellicard have an ai in it? etcetc)
	return 1

/datum/objective_item/proc/TargetExists()
	return TRUE

/datum/objective_item/steal/New()
	..()
	if(TargetExists())
		GLOB.possible_items += src
	else
		qdel(src)

/datum/objective_item/steal/Destroy()
	GLOB.possible_items -= src
	return ..()

// Low risk steal objectives
/datum/objective_item/steal/low_risk
	objective_type = OBJECTIVE_ITEM_TYPE_TRAITOR

/datum/objective_item/steal/low_risk/techboard
	name = "the (TECH BOARD) circuitboard in secure tech storage"
	var/circuitboard_name
	excludefromjob = list(
		JOB_MAYOR,
		JOB_CHIEF_ENGINEER,
		JOB_RESEARCH_DIRECTOR,
	)
	exists_on_map = TRUE

/datum/objective_item/steal/low_risk/techboard/aiupload
	targetitem = /obj/item/circuitboard/computer/aiupload
	circuitboard_name = "ai upload"

/datum/objective_item/steal/low_risk/techboard/borgupload
	targetitem = /obj/item/circuitboard/computer/borgupload
	circuitboard_name = "cyborg upload"

/datum/objective_item/steal/low_risk/techboard/New()
	. = ..()
	name = replacetext(name, "(TECH BOARD)", circuitboard_name)

/datum/objective_item/steal/low_risk/aicard
	targetitem = /obj/item/aicard
	name = "an intelliCard"
	excludefromjob = list(
		JOB_MAYOR,
		JOB_CHIEF_ENGINEER,
		JOB_RESEARCH_DIRECTOR,
		JOB_MEDICAL_DIRECTOR,
		JOB_CHIEF_OF_POLICE,
		JOB_STATION_ENGINEER,
		JOB_SCIENTIST,
		JOB_FIREFIGHTER,
	)
	exists_on_map = TRUE

// Unique-ish low risk objectives
/datum/objective_item/steal/low_risk/bartender_shotgun
	name = "the bartender's shotgun"
	targetitem = /obj/item/gun/ballistic/shotgun/doublebarrel
	excludefromjob = list(JOB_BARTENDER)
	exists_on_map = TRUE

/datum/objective_item/steal/low_risk/fireaxe
	name = "a fire axe"
	targetitem = /obj/item/fireaxe
	excludefromjob = list(JOB_CHIEF_ENGINEER,JOB_STATION_ENGINEER,JOB_FIREFIGHTER)
	exists_on_map = TRUE

/datum/objective_item/steal/low_risk/nullrod
	name = "the chaplain's null rod"
	targetitem = /obj/item/nullrod
	excludefromjob = list(JOB_CHAPLAIN)
	exists_on_map = TRUE

/datum/objective_item/steal/low_risk/clown_shoes
	name = "the clown's shoes"
	targetitem = /obj/item/clothing/shoes/clown_shoes
	excludefromjob = list(JOB_CLOWN, JOB_RETAIL_ASSISTANT, JOB_QUARTERMASTER)

/datum/objective_item/steal/low_risk/clown_shoes/TargetExists()
	for(var/mob/player as anything in GLOB.player_list)
		if(player.stat == DEAD)
			continue
		if(player.job != JOB_CLOWN)
			continue
		if(is_centcom_level(player.z))
			continue
		return TRUE
	return FALSE

/datum/objective_item/steal/low_risk/cargo_budget
	name = "cargo's departmental budget"
	targetitem = /obj/item/card/id/departmental_budget/car
	excludefromjob = list(JOB_QUARTERMASTER, JOB_RETAIL_ASSISTANT)
	exists_on_map = TRUE

// High risk steal objectives
/datum/objective_item/steal/maylaser
	name = "the mayor's antique laser gun"
	targetitem = /obj/item/gun/energy/laser/mayor
	difficulty = 5
	excludefromjob = list(JOB_MAYOR)
	exists_on_map = TRUE

/datum/objective_item/steal/hoslaser
	name = "the chief of police's personal laser gun"
	targetitem = /obj/item/gun/energy/e_gun/hos
	difficulty = 10
	excludefromjob = list(JOB_CHIEF_OF_POLICE)
	exists_on_map = TRUE

/datum/objective_item/steal/handtele
	name = "a hand teleporter"
	targetitem = /obj/item/hand_tele
	difficulty = 5
	excludefromjob = list(JOB_MAYOR, JOB_RESEARCH_DIRECTOR)
	exists_on_map = TRUE

/datum/objective_item/steal/jetpack
	name = "the Mayor's jetpack"
	targetitem = /obj/item/tank/jetpack/oxygen/mayor
	difficulty = 5
	excludefromjob = list(JOB_MAYOR)
	exists_on_map = TRUE

/datum/objective_item/steal/magboots
	name = "the chief engineer's advanced magnetic boots"
	targetitem = /obj/item/clothing/shoes/magboots/advance
	difficulty = 5
	excludefromjob = list(JOB_CHIEF_ENGINEER)
	exists_on_map = TRUE

/datum/objective_item/steal/maymedal
	name = "the medal of mayordom"
	targetitem = /obj/item/clothing/accessory/medal/gold/mayor
	difficulty = 5
	excludefromjob = list(JOB_MAYOR)
	exists_on_map = TRUE

/datum/objective_item/steal/hypo
	name = "the hypospray"
	targetitem = /obj/item/reagent_containers/hypospray/md
	difficulty = 5
	excludefromjob = list(JOB_MEDICAL_DIRECTOR)
	exists_on_map = TRUE

/datum/objective_item/steal/nukedisc
	name = "the nuclear authentication disk"
	targetitem = /obj/item/disk/nuclear
	difficulty = 5
	excludefromjob = list(JOB_MAYOR)

/datum/objective_item/steal/nukedisc/check_special_completion(obj/item/disk/nuclear/N)
	return !N.fake

/datum/objective_item/steal/reflector
	name = "a reflector trenchcoat"
	targetitem = /obj/item/clothing/suit/hooded/ablative
	difficulty = 3
	excludefromjob = list(JOB_CHIEF_OF_POLICE, JOB_WARDEN)
	exists_on_map = TRUE

/datum/objective_item/steal/reactive
	name = "the reactive teleport armor"
	targetitem = /obj/item/clothing/suit/armor/reactive/teleport
	difficulty = 5
	excludefromjob = list(JOB_RESEARCH_DIRECTOR)
	exists_on_map = TRUE

/datum/objective_item/steal/documents
	name = "any set of secret documents of any organization"
	targetitem = /obj/item/documents //Any set of secret documents. Doesn't have to be NT's
	difficulty = 5
	exists_on_map = TRUE

/datum/objective_item/steal/nuke_core
	name = "the heavily radioactive plutonium core from the onboard self-destruct"
	valid_containers = list(/obj/item/nuke_core_container)
	targetitem = /obj/item/nuke_core
	difficulty = 15
	exists_on_map = TRUE

/datum/objective_item/steal/nuke_core/New()
	special_equipment += /obj/item/storage/box/syndie_kit/nuke
	..()

/datum/objective_item/steal/hdd_extraction
	name = "the source code for Project Goon from the master R&D server mainframe"
	targetitem = /obj/item/computer_hardware/hard_drive/cluster/hdd_theft
	difficulty = 10
	excludefromjob = list(JOB_RESEARCH_DIRECTOR, JOB_SCIENTIST, JOB_ROBOTICIST, JOB_GENETICIST)
	exists_on_map = TRUE

/datum/objective_item/steal/hdd_extraction/New()
	special_equipment += /obj/item/paper/guides/antag/hdd_extraction
	return ..()


/datum/objective_item/steal/supermatter
	name = "a sliver of a supermatter crystal"
	targetitem = /obj/item/nuke_core/supermatter_sliver
	valid_containers = list(/obj/item/nuke_core_container/supermatter)
	difficulty = 15

/datum/objective_item/steal/supermatter/New()
	special_equipment += /obj/item/storage/box/syndie_kit/supermatter
	..()

/datum/objective_item/steal/supermatter/TargetExists()
	return GLOB.main_supermatter_engine != null

//Items with special checks!
/datum/objective_item/steal/plasma
	name = "28 moles of plasma (full tank)"
	targetitem = /obj/item/tank
	difficulty = 3
	excludefromjob = list(
		JOB_CHIEF_ENGINEER, JOB_STATION_ENGINEER, JOB_FIREFIGHTER,
		JOB_RESEARCH_DIRECTOR, JOB_SCIENTIST, JOB_ROBOTICIST,
	)

/datum/objective_item/steal/plasma/check_special_completion(obj/item/tank/T)
	var/target_amount = text2num(name)
	var/found_amount = 0
	var/datum/gas_mixture/mix = T.return_air()
	found_amount += mix.gases[/datum/gas/plasma] ? mix.gases[/datum/gas/plasma][MOLES] : 0
	return found_amount>=target_amount


/datum/objective_item/steal/functionalai
	name = "a functional AI"
	targetitem = /obj/item/aicard
	difficulty = 20 //beyond the impossible

/datum/objective_item/steal/functionalai/check_special_completion(obj/item/aicard/C)
	for(var/mob/living/silicon/ai/A in C)
		if(isAI(A) && A.stat != DEAD) //See if any AI's are alive inside that card.
			return TRUE
	return FALSE

/datum/objective_item/steal/blueprints
	name = "the station blueprints"
	targetitem = /obj/item/areaeditor/blueprints
	difficulty = 10
	excludefromjob = list(JOB_CHIEF_ENGINEER)
	altitems = list(/obj/item/photo)
	exists_on_map = TRUE

/datum/objective_item/steal/blueprints/check_special_completion(obj/item/I)
	if(istype(I, /obj/item/areaeditor/blueprints))
		return TRUE
	if(istype(I, /obj/item/photo))
		var/obj/item/photo/P = I
		if(P.picture.has_blueprints) //if the blueprints are in frame
			return TRUE
	return FALSE

/datum/objective_item/steal/slime
	name = "an unused sample of slime extract"
	targetitem = /obj/item/slime_extract
	difficulty = 3
	excludefromjob = list(JOB_RESEARCH_DIRECTOR, JOB_SCIENTIST)

/datum/objective_item/steal/slime/check_special_completion(obj/item/slime_extract/E)
	if(E.Uses > 0)
		return 1
	return 0

/datum/objective_item/steal/blackbox
	name = "the Blackbox"
	targetitem = /obj/item/blackbox
	difficulty = 10
	excludefromjob = list(JOB_CHIEF_ENGINEER, JOB_STATION_ENGINEER, JOB_FIREFIGHTER)
	exists_on_map = TRUE

//Unique Objectives
/datum/objective_item/special/New()
	..()
	if(TargetExists())
		GLOB.possible_items_special += src
	else
		qdel(src)

/datum/objective_item/special/Destroy()
	GLOB.possible_items_special -= src
	return ..()

//Old ninja objectives.
/datum/objective_item/special/pinpointer
	name = "the mayor's pinpointer"
	targetitem = /obj/item/pinpointer/nuke
	difficulty = 10
	exists_on_map = TRUE

/datum/objective_item/special/aegun
	name = "an advanced energy gun"
	targetitem = /obj/item/gun/energy/e_gun/nuclear
	difficulty = 10

/datum/objective_item/special/ddrill
	name = "a diamond drill"
	targetitem = /obj/item/pickaxe/drill/diamonddrill
	difficulty = 10

/datum/objective_item/special/boh
	name = "a bag of holding"
	targetitem = /obj/item/storage/backpack/holding
	difficulty = 10

/datum/objective_item/special/hypercell
	name = "a hyper-capacity power cell"
	targetitem = /obj/item/stock_parts/cell/hyper
	difficulty = 5

/datum/objective_item/special/laserpointer
	name = "a laser pointer"
	targetitem = /obj/item/laser_pointer
	difficulty = 5

/datum/objective_item/special/corgimeat
	name = "a piece of corgi meat"
	targetitem = /obj/item/food/meat/slab/corgi
	difficulty = 5

/datum/objective_item/stack/New()
	..()
	if(TargetExists())
		GLOB.possible_items_special += src
	else
		qdel(src)

/datum/objective_item/stack/Destroy()
	GLOB.possible_items_special -= src
	return ..()

//Stack objectives get their own subtype
/datum/objective_item/stack
	name = "5 cardboard"
	targetitem = /obj/item/stack/sheet/cardboard
	difficulty = 9001

/datum/objective_item/stack/check_special_completion(obj/item/stack/S)
	var/target_amount = text2num(name)
	var/found_amount = 0

	if(istype(S, targetitem))
		found_amount = S.amount
	return found_amount>=target_amount

/datum/objective_item/stack/diamond
	name = "10 diamonds"
	targetitem = /obj/item/stack/sheet/mineral/diamond
	difficulty = 10

/datum/objective_item/stack/gold
	name = "50 gold bars"
	targetitem = /obj/item/stack/sheet/mineral/gold
	difficulty = 15

/datum/objective_item/stack/uranium
	name = "25 refined uranium bars"
	targetitem = /obj/item/stack/sheet/mineral/uranium
	difficulty = 10
