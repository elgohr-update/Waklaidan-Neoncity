/datum/bounty/item/civilian/strange_object
	name = "Strange Object"
	description = "Nanotrasen has taken an interest in strange objects. Find one in maint, and ship it off to CentCom right away."
	reward = CARGO_CRATE_VALUE * 2.4
	wanted_types = list(/obj/item/relic = TRUE)

/datum/bounty/item/civilian/scooter
	name = "Scooter"
	description = "Nanotrasen has determined walking to be wasteful. Ship a scooter to CentCom to speed operations up."
	reward = CARGO_CRATE_VALUE * 2.16 // the mat hoffman
	wanted_types = list(/obj/vehicle/ridden/scooter = TRUE)
	include_subtypes = FALSE

/datum/bounty/item/civilian/skateboard
	name = "Skateboard"
	description = "Nanotrasen has determined walking to be wasteful. Ship a skateboard to CentCom to speed operations up."
	reward = CARGO_CRATE_VALUE * 1.8 // the tony hawk
	wanted_types = list(
		/obj/vehicle/ridden/scooter/skateboard = TRUE,
		/obj/item/melee/skateboard = TRUE,
	)

/datum/bounty/item/civilian/stunprod
	name = "Stunprod"
	description = "CentCom demands a stunprod to use against dissidents. Craft one, then ship it."
	reward = CARGO_CRATE_VALUE * 2.6
	wanted_types = list(/obj/item/melee/baton/security/cattleprod = TRUE)

/datum/bounty/item/civilian/soap
	name = "Soap"
	description = "Soap has gone missing from CentCom's bathrooms and nobody knows who took it. Replace it and be the hero CentCom needs."
	reward = CARGO_CRATE_VALUE * 4
	required_count = 3
	wanted_types = list(/obj/item/soap = TRUE)

/datum/bounty/item/civilian/spear
	name = "Spears"
	description = "CentCom's security forces are going through budget cuts. You will be paid if you ship a set of spears."
	reward = CARGO_CRATE_VALUE * 4
	required_count = 5
	wanted_types = list(/obj/item/spear = TRUE)

/datum/bounty/item/civilian/toolbox
	name = "Toolboxes"
	description = "There's an absence of robustness at Central Command. Hurry up and ship some toolboxes as a solution."
	reward = CARGO_CRATE_VALUE * 4
	required_count = 6
	wanted_types = list(/obj/item/storage/toolbox = TRUE)

/datum/bounty/item/civilian/statue
	name = "Statue"
	description = "Central Command would like to commision an artsy statue for the lobby. Ship one out, when possible."
	reward = CARGO_CRATE_VALUE * 4
	wanted_types = list(/obj/structure/statue = TRUE)

/datum/bounty/item/civilian/clown_box
	name = "Clown Box"
	description = "The universe needs laughter. Stamp cardboard with a clown stamp and ship it out."
	reward = CARGO_CRATE_VALUE * 3
	wanted_types = list(/obj/item/storage/box/clown = TRUE)

/datum/bounty/item/civilian/cheesiehonkers
	name = "Cheesie Honkers"
	description = "Apparently the company that makes Cheesie Honkers is going out of business soon. CentCom wants to stock up before it happens!"
	reward = CARGO_CRATE_VALUE * 2.4
	required_count = 3
	wanted_types = list(/obj/item/food/cheesiehonkers = TRUE)

/datum/bounty/item/civilian/baseball_bat
	name = "Baseball Bat"
	description = "Baseball fever is going on at CentCom! Be a dear and ship them some baseball bats, so that management can live out their childhood dream."
	reward = CARGO_CRATE_VALUE * 4
	required_count = 5
	wanted_types = list(/obj/item/melee/baseball_bat = TRUE)

/datum/bounty/item/civilian/extendohand
	name = "Extendo-Hand"
	description = "Commander Betsy is getting old, and can't bend over to get the telescreen remote anymore. Management has requested an extendo-hand to help her out."
	reward = CARGO_CRATE_VALUE * 5
	wanted_types = list(/obj/item/extendohand = TRUE)

/datum/bounty/item/civilian/donut
	name = "Donuts"
	description = "CentCom's security forces are facing heavy losses against the Syndicate. Ship donuts to raise morale."
	reward = CARGO_CRATE_VALUE * 6
	required_count = 10
	wanted_types = list(/obj/item/food/donut = TRUE)

/datum/bounty/item/civilian/donkpocket
	name = "Donk-Pockets"
	description = "Consumer safety recall: Warning. Donk-Pockets manufactured in the past year contain hazardous lizard biomatter. Return units to CentCom immediately."
	reward = CARGO_CRATE_VALUE * 6
	required_count = 10
	wanted_types = list(/obj/item/food/donkpocket = TRUE)

/datum/bounty/item/civilian/briefcase
	name = "Briefcase"
	description = "Central Command will be holding a business convention this year. Ship a few briefcases in support."
	reward = CARGO_CRATE_VALUE * 5
	required_count = 5
	wanted_types = list(
		/obj/item/storage/briefcase = TRUE,
		/obj/item/storage/secure/briefcase = TRUE,
	)

/datum/bounty/item/civilian/sunglasses
	name = "Sunglasses"
	description = "A famous blues duo is passing through the sector, but they've lost their shades and they can't perform. Ship new sunglasses to CentCom to rectify this."
	reward = CARGO_CRATE_VALUE * 6
	required_count = 2
	wanted_types = list(/obj/item/clothing/glasses/sunglasses = TRUE)

/datum/bounty/item/civilian/monkey_hide
	name = "Monkey Hide"
	description = "One of the scientists at CentCom is interested in testing products on monkey skin. Your mission is to acquire monkey's hide and ship it."
	reward = CARGO_CRATE_VALUE * 3
	wanted_types = list(/obj/item/stack/sheet/animalhide/monkey = TRUE)

/datum/bounty/item/civilian/comfy_chair
	name = "Comfy Chairs"
	description = "Commander Pat is unhappy with his chair. He claims it hurts his back. Ship some alternatives out to humor him."
	reward = CARGO_CRATE_VALUE * 3
	required_count = 5
	wanted_types = list(/obj/structure/chair/comfy = TRUE)

/datum/bounty/item/civilian/geranium
	name = "Geraniums"
	description = "Commander Zot has the hots for Commander Zena. Send a shipment of geraniums - her favorite flower - and he'll happily reward you."
	reward = CARGO_CRATE_VALUE * 8
	required_count = 3
	wanted_types = list(/obj/item/food/grown/poppy/geranium = TRUE)
	include_subtypes = FALSE

/datum/bounty/item/civilian/poppy
	name = "Poppies"
	description = "Commander Zot really wants to sweep Police Officer Olivia off her feet. Send a shipment of Poppies - her favorite flower - and he'll happily reward you."
	reward = CARGO_CRATE_VALUE * 2
	required_count = 3
	wanted_types = list(/obj/item/food/grown/poppy = TRUE)
	include_subtypes = FALSE

/datum/bounty/item/civilian/shadyjims
	name = "Shady Jim's"
	description = "There's an irate officer at CentCom demanding that he receive a box of Shady Jim's cigarettes. Please ship one. He's starting to make threats."
	reward = CARGO_CRATE_VALUE
	wanted_types = list(/obj/item/storage/fancy/cigarettes/cigpack_shadyjims = TRUE)

/datum/bounty/item/civilian/potted_plants
	name = "Potted Plants"
	description = "Central Command is looking to commission a new BirdBoat-class station. You've been ordered to supply the potted plants."
	reward = CARGO_CRATE_VALUE * 4
	required_count = 8
	wanted_types = list(/obj/item/kirbyplants = TRUE)

/datum/bounty/item/civilian/monkey_cubes
	name = "Monkey Cubes"
	description = "Due to a recent genetics accident, Central Command is in serious need of monkeys. Your mission is to ship monkey cubes."
	reward = CARGO_CRATE_VALUE * 4
	required_count = 3
	wanted_types = list(/obj/item/food/monkeycube = TRUE)

/datum/bounty/item/civilian/ied
	name = "IED"
	description = "Nanotrasen's maximum security prison at CentCom is undergoing personnel training. Ship a handful of IEDs to serve as a training tools."
	reward = CARGO_CRATE_VALUE * 4
	required_count = 3
	wanted_types = list(/obj/item/grenade/iedcasing = TRUE)

/datum/bounty/item/civilian/corgimeat
	name = "Raw Corgi Meat"
	description = "The Syndicate recently stole all of CentCom's Corgi meat. Ship out a replacement immediately."
	reward = CARGO_CRATE_VALUE * 6
	wanted_types = list(/obj/item/food/meat/slab/corgi = TRUE)

/datum/bounty/item/civilian/action_figures
	name = "Action Figures"
	description = "The vice president's son saw an ad for action figures on the telescreen and now he won't shut up about them. Ship some to ease his complaints."
	reward = CARGO_CRATE_VALUE * 8
	required_count = 5
	wanted_types = list(/obj/item/toy/figure = TRUE)

/datum/bounty/item/civilian/dead_mice
	name = "Dead Mice"
	description = "Station 14 ran out of freeze-dried mice. Ship some fresh ones so their janitor doesn't go on strike."
	reward = CARGO_CRATE_VALUE * 10
	required_count = 5
	wanted_types = list(/obj/item/food/deadmouse = TRUE)

/datum/bounty/item/civilian/paper_bin
	name = "Paper Bins"
	description = "Our accounting division is all out of paper. We need a new shipment immediately."
	reward = CARGO_CRATE_VALUE * 5
	required_count = 5
	wanted_types = list(/obj/item/paper_bin = TRUE)


/datum/bounty/item/civilian/crayons
	name = "Crayons"
	description = "Dr Jones' kid ate all our crayons again. Please send us yours."
	reward = CARGO_CRATE_VALUE * 4
	required_count = 24
	wanted_types = list(/obj/item/toy/crayon = TRUE)

/datum/bounty/item/civilian/pens
	name = "Pens"
	description = "We are hosting the intergalactic pen balancing competition. We need you to send us some standardized ball point pens."
	reward = CARGO_CRATE_VALUE * 4
	required_count = 10
	include_subtypes = FALSE
	wanted_types = list(/obj/item/pen = TRUE)
