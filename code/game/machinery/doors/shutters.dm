/obj/machinery/door/poddoor/shutters
	gender = PLURAL
	name = "shutters"
	desc = "Heavy duty mechanical shutters with an atmospheric seal that keeps them airtight once closed."
	icon = 'icons/obj/doors/shutters.dmi'
	layer = SHUTTER_LAYER
	closingLayer = SHUTTER_LAYER
	damage_deflection = 20
	armor = list(MELEE = 20, BULLET = 20, LASER = 20, ENERGY = 75, BOMB = 25, BIO = 100, FIRE = 100, ACID = 70)
	max_integrity = 100
	recipe_type = /datum/crafting_recipe/shutters

/obj/machinery/door/poddoor/shutters/preopen
	icon_state = "open"
	density = FALSE
	opacity = FALSE

/obj/machinery/door/poddoor/shutters/indestructible
	name = "hardened shutters"
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF

/obj/machinery/door/poddoor/shutters/radiation
	name = "radiation shutters"
	desc = "Lead-lined shutters with a radiation hazard symbol. Whilst this won't stop you getting irradiated, especially by a supermatter crystal, it will stop radiation travelling as far."
	icon = 'icons/obj/doors/shutters_radiation.dmi'
	icon_state = "closed"
	rad_insulation = RAD_EXTREME_INSULATION

/obj/machinery/door/poddoor/shutters/radiation/preopen
	icon_state = "open"
	density = FALSE
	opacity = FALSE
	rad_insulation = RAD_NO_INSULATION

/obj/machinery/door/poddoor/shutters/radiation/open()
	. = ..()
	rad_insulation = RAD_NO_INSULATION

/obj/machinery/door/poddoor/shutters/radiation/close()
	. = ..()
	rad_insulation = RAD_EXTREME_INSULATION

/obj/machinery/door/poddoor/shutters/window
	name = "windowed shutters"
	desc = "A shutter with a thick see-through polycarbonate window."
	icon = 'icons/obj/doors/shutters_window.dmi'
	icon_state = "closed"
	opacity = FALSE
	glass = TRUE

/obj/machinery/door/poddoor/shutters/window/preopen
	icon_state = "open"
	density = FALSE

/obj/machinery/door/poddoor/shutters/bumpopen()
	return

// Bars

/obj/machinery/door/poddoor/shutters/bars
	name = "bars"
	desc = "Heavy duty bars that you can't shove your head through. Extra sturdy."
	icon = 'icons/obj/doors/bars.dmi'
	damage_deflection = 40
	opacity = FALSE

/obj/machinery/door/poddoor/shutters/bars/preopen
	icon_state = "open"
	density = FALSE

// Gate

/obj/machinery/door/poddoor/shutters/gates
	name = "gate"
	desc = "This gate is designed to protect civil servants and bartenders from being murdered by their clientele."
	icon = 'icons/obj/doors/gate.dmi'
	opacity = FALSE

/obj/machinery/door/poddoor/shutters/gates/preopen
	icon_state = "open"
	density = FALSE
