// These contain structures to make certain 'alien' (as in the ayyy ones, not xenomorphs) submaps more filled, and don't really do anything.

/obj/structure/prop/alien
	name = "some alien thing"
	desc = "My description is broken, bug a developer."
	icon = 'icons/obj/abductor.dmi'
	density = TRUE
	anchored = TRUE

/obj/structure/prop/alien/computer
	name = "alien console"
	desc = "The console flashes what appear to be symbols you've never seen before."
	icon_state = "console-c"
	interaction_message = "<span class='warning'>The console flashes a series of unknown symbols as you press a button on what is presumably a keyboard. It probably some sort of \
	authentication error. Since you're not an alien, you should probably leave it alone.</span>"

/obj/structure/prop/alien/computer/camera
	desc = "This console is briefly flashing video feeds of various locations close by."
	icon_state = "camera"

/obj/structure/prop/alien/computer/camera/flipped
	icon_state = "camera_flipped"

/obj/structure/prop/alien/dispenser
	name = "alien dispenser"
	desc = "This looks like it dispenses... something?"
	icon_state = "dispenser"
	interaction_message = "<span class='warning'>You don't see any mechanism to operate this. Probably for the best.</span>"

/obj/structure/prop/alien/pod
	name = "alien pod"
	desc = "This seems to be a container for something."
	icon_state = "experiment"
	interaction_message = "<span class='warning'>You don't see any mechanism to open this thing. Probably for the best.</span>"

/obj/structure/prop/alien/pod/open
	name = "opened alien pod"
	desc = "At one point, this probably contained something interesting..."
	icon_state = "experiment-open"
	interaction_message = "<span class='warning'>You don't see any mechanism to close this thing.</span>"

/obj/structure/prop/alien/power
	name = "void core"
	icon_state = "core"
	desc = "An alien machine that seems to be producing energy seemingly out of nowhere."
	interaction_message = "<span class='warning'>Messing with something that makes energy out of nowhere seems very unwise.</span>"

/obj/item/prop/alien
	name = "some alien item"
	desc = "My description is broken, bug a developer."
	icon = 'icons/obj/abductor.dmi'

// Mostly useless.
/obj/item/prop/alien/junk
	name = "alien object"
	desc = "You have no idea what this thing does."
	icon_state = "health"
	w_class = WEIGHT_CLASS_TINY
	var/static/list/possible_states = list("health", "spider", "slime", "emp", "species", "egg", "vent", "mindshock", "viral", "gland")

/obj/item/prop/alien/junk/New()
	. = ..()
	icon_state = pick(possible_states)
