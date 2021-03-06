
/*
Eldar
*/

/mob/living/carbon/human/whitelisted/eldar/leader
	name = "Aeldra, the Master Cataloger"
	real_name = "Aeldra, the Master Cataloger"
	universal_speak = 1
	gender = "female"
	maxHealth = 150
	health = 150
	status_flags = 0

/mob/living/carbon/human/whitelisted/eldar/leader/New()
	..()
	var/obj/item/device/radio/headset/R = new /obj/item/device/radio/headset/headset_cent
	R.set_frequency(1487)
	equip_to_slot_or_del(R, slot_ears)
	spawn(10)
		equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/warlock, slot_back)
		equip_to_slot_or_del(new /obj/item/device/radio/headset, slot_ears)
		equip_to_slot_or_del(new /obj/item/clothing/under/color/lightpurple, slot_w_uniform)
		equip_to_slot_or_del(new /obj/item/clothing/suit/wizrobe/warlock/lead, slot_wear_suit)
		equip_to_slot_or_del(new /obj/item/clothing/head/helmet/space/rig/wizard/warlock, slot_head)
		equip_to_slot_or_del(new /obj/item/clothing/glasses/night, slot_glasses)
		equip_to_slot_or_del(new /obj/item/clothing/shoes/space_ninja, slot_shoes)
		equip_to_slot_or_del(new /obj/item/device/webwaysummons, slot_in_backpack)
		equip_to_slot_or_del(new /obj/item/device/soulstone, slot_in_backpack)
		equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/scatapult, slot_in_backpack)
		equip_to_slot_or_del(new /obj/item/weapon/gun/energy/eldarpistol, slot_in_backpack)
		equip_to_slot_or_del(new /obj/item/clothing/gloves/warlock, slot_gloves)
		equip_to_slot_or_del(new /obj/item/weapon/powersword/eldar, slot_belt)
		equip_to_slot_or_del(new /obj/item/weapon/card/id/syndicate, slot_wear_id)
		equip_to_slot_or_del(new /obj/item/device/chameleon, slot_r_store)
		maxStress += 180
		verbs += /mob/living/carbon/human/proc/psymode
		verbs += /mob/living/carbon/human/proc/telepath
		verbs += /mob/living/carbon/human/proc/quickening
		sleep(5)
		regenerate_icons()
		rename_self("[name]")

/mob/living/carbon/human/whitelisted/eldar
	name = "Unknown"
	real_name = "Unknown"
	universal_speak = 1
	gender = "female"
	var/instealth = 0
	var/s_cooldown = 0
	var/r_cooldown = 0
	maxHealth = 150
	health = 150
	status_flags = 0
	var/speedmod = 1.2

/mob/living/carbon/human/whitelisted/eldar/movement_delay()
	. = -speedmod
	. += ..()

/mob/living/carbon/human/whitelisted/eldar/New()
	verbs.Add(/mob/living/carbon/human/whitelisted/eldar/verb/lungeat, /mob/living/carbon/human/whitelisted/eldar/verb/stealth, /mob/living/carbon/human/whitelisted/eldar/verb/reflexes)
	..()
	var/obj/item/device/radio/headset/R = new /obj/item/device/radio/headset/headset_cent
	R.set_frequency(1487)
	equip_to_slot_or_del(R, slot_ears)
	spawn(10)
		var/weaponchoice = input("Loadout.","Select a Loadout") as null|anything in list("Corsair", "Guardian", "Seer")
		switch(weaponchoice)
			if("Corsair")
				equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/corsair, slot_back)
				equip_to_slot_or_del(new /obj/item/device/radio/headset, slot_ears)
				equip_to_slot_or_del(new /obj/item/clothing/under/color/lightpurple, slot_w_uniform)
				equip_to_slot_or_del(new /obj/item/clothing/suit/space/rig/wizard/corsair, slot_wear_suit)
				equip_to_slot_or_del(new /obj/item/clothing/head/corsair, slot_head)
				equip_to_slot_or_del(new /obj/item/clothing/glasses/night, slot_glasses)
				equip_to_slot_or_del(new /obj/item/clothing/shoes/swat/corsair, slot_shoes)
				equip_to_slot_or_del(new /obj/item/device/webwaysummons, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/device/soulstone, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/scatapult, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/gun/energy/eldarpistol, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/clothing/gloves/corsair, slot_gloves)
				equip_to_slot_or_del(new /obj/item/weapon/powersword/eldar, slot_belt)
				equip_to_slot_or_del(new /obj/item/weapon/card/id/syndicate, slot_wear_id)
				equip_to_slot_or_del(new /obj/item/device/chameleon, slot_r_store)
				regenerate_icons()
				rename_self("[name]")
			if("Guardian") // Makes no difference right now; Waiting on sprites
				equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/warlock, slot_back)
				equip_to_slot_or_del(new /obj/item/device/radio/headset, slot_ears)
				equip_to_slot_or_del(new /obj/item/clothing/under/color/lightpurple, slot_w_uniform)
				equip_to_slot_or_del(new /obj/item/clothing/suit/space/rig/wizard/guardian, slot_wear_suit)
				equip_to_slot_or_del(new /obj/item/clothing/head/guardian, slot_head)
				equip_to_slot_or_del(new /obj/item/clothing/glasses/night, slot_glasses)
				equip_to_slot_or_del(new /obj/item/clothing/shoes/swat/guardian, slot_shoes)
				equip_to_slot_or_del(new /obj/item/device/webwaysummons, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/device/soulstone, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/scatapult, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/gun/energy/eldarpistol, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/clothing/gloves/corsair, slot_gloves)
				equip_to_slot_or_del(new /obj/item/weapon/powersword/eldar, slot_belt)
				equip_to_slot_or_del(new /obj/item/weapon/card/id/syndicate, slot_wear_id)
				equip_to_slot_or_del(new /obj/item/device/chameleon, slot_r_store)
				regenerate_icons()
				rename_self("[name]")
			if("Seer")
				equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/warlock, slot_back)
				equip_to_slot_or_del(new /obj/item/device/radio/headset, slot_ears)
				equip_to_slot_or_del(new /obj/item/clothing/under/color/lightpurple, slot_w_uniform)
				equip_to_slot_or_del(new /obj/item/clothing/suit/wizrobe/warlock/seer, slot_wear_suit)
				equip_to_slot_or_del(new /obj/item/clothing/head/helmet/space/rig/wizard/seer, slot_head)
				equip_to_slot_or_del(new /obj/item/clothing/glasses/night, slot_glasses)
				equip_to_slot_or_del(new /obj/item/clothing/shoes/space_ninja, slot_shoes)
				equip_to_slot_or_del(new /obj/item/device/webwaysummons, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/device/soulstone, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/scatapult, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/weapon/gun/energy/eldarpistol, slot_in_backpack)
				equip_to_slot_or_del(new /obj/item/clothing/gloves/warlock, slot_gloves)
				equip_to_slot_or_del(new /obj/item/weapon/powersword/eldar, slot_belt)
				equip_to_slot_or_del(new /obj/item/weapon/card/id/syndicate, slot_wear_id)
				equip_to_slot_or_del(new /obj/item/device/chameleon, slot_r_store)
				maxStress += 160
				verbs += /mob/living/carbon/human/proc/psymode
				verbs += /mob/living/carbon/human/proc/telepath
				verbs += /mob/living/carbon/human/proc/quickening
				sleep(5)
				regenerate_icons()
				rename_self("[name]")


//lunge

/mob/living/carbon/human/whitelisted/eldar/verb/lungeat(turf/T in oview())
	set category = "Eldar"
	set name = "Lunge at.." // "Haunt"
	set desc = "Allows you to move with blinding speed and hopefully knock some one down."
	var/mob/living/carbon/human/whitelisted/eldar/U = usr
	var/turf/mobloc = get_turf(U.loc)//To make sure that certain things work properly below.

	if(!usr.canmove || usr.stat || usr.restrained())
		usr << "<span class='notice'>Just... can't.... seem.... to reach....!!</span>"
		return

	if((!T.density)&&istype(mobloc, /turf))
		spawn(0)
			playsound(U.loc, 'sound/effects/rustle4.ogg', 50, 1)

		handle_teleport_grab(T, U)
		U.loc = T
		for(var/mob/O in oviewers(U))
			O.show_message("[U.name] moves with INCREDIBLE speed!",1)

		spawn(0)
			playsound(U.loc, 'sound/effects/rustle5.ogg', 25, 1)


		spawn(0)//Any living mobs in teleport area are gibbed.
			T.stun_creatures(U)
	else
		U << "\red You cannot jump into solid walls or from solid matter"

/mob/living/carbon/human/whitelisted/eldar/proc/handle_teleport_grab(turf/T, mob/living/U)
	if(istype(U.get_active_hand(),/obj/item/weapon/grab))//Handles grabbed persons.
		var/obj/item/weapon/grab/G = U.get_active_hand()
		G.affecting.loc = locate(T.x+rand(-1,1),T.y+rand(-1,1),T.z)//variation of position.
	if(istype(U.get_inactive_hand(),/obj/item/weapon/grab))
		var/obj/item/weapon/grab/G = U.get_inactive_hand()
		G.affecting.loc = locate(T.x+rand(-1,1),T.y+rand(-1,1),T.z)//variation of position.
	return

//stealth

/mob/living/carbon/human/whitelisted/eldar/verb/stealth()
	set category = "Eldar"
	set name = "Stealth" // "Haunt"
	set desc = "Allows you to move quietly."
	toggle_stealth()

/mob/living/carbon/human/whitelisted/eldar/proc/toggle_stealth()
	var/mob/living/carbon/human/whitelisted/eldar/U = usr
	if(instealth)
		cancel_stealth()
	else
		if(s_cooldown)
			src << "\red Ability is still charging..."
			return
		s_cooldown = 1
		spawn(460) s_cooldown = 0 //Ten seconds unstealthed for every thirty stealthed. Still pretty robust, just not limitless.
		spawn(0)
			anim(U.loc,U,'icons/mob/mob.dmi',,"cloak",,U.dir)
		instealth=!instealth
		U.alpha = 0
		U << "\blue You are now invisible to normal detection."
		for(var/mob/O in oviewers(U))
			O.show_message("[U.name] vanishes into thin air!",1)
		sleep (360)
		cancel_stealth()
	return

/mob/living/carbon/human/whitelisted/eldar/proc/cancel_stealth()
	var/mob/living/carbon/human/whitelisted/eldar/U = usr
	if(instealth)
		spawn(0)
			anim(U.loc,U,'icons/mob/mob.dmi',,"uncloak",,U.dir)
		instealth=!instealth
		U.alpha = 255
		U << "\blue You are now visible."
		for(var/mob/O in oviewers(U))
			O.show_message("[U.name] appears from thin air!",1)
		return 1
	return 0

/mob/living/carbon/human/whitelisted/eldar/verb/reflexes()
	set category = "Eldar"
	set name = "Reflexes"
	set desc = "Allows you to dodge attacks for a short period of time."
	toggle_reflexes()

/mob/living/carbon/human/whitelisted/eldar/proc/toggle_reflexes()
	var/mob/living/carbon/human/whitelisted/eldar/U = usr
	if(dodging)
		U << "\red You are already dodging!"
		return
	else
		if(r_cooldown)
			src << "\red Ability is still charging..."
			return
		r_cooldown = 1
		spawn(260) r_cooldown = 0
		spawn(0)
			anim(U.loc,U,'icons/obj/projectiles.dmi',,"lbolr2",,U.dir)
		dodging = 1
		U << "\green You feel agile."
		sleep(160)
		U << "\blue Your reflexes return to normal."
		dodging = 0



//below is dark eldar stuff thats WIP
/*
/datum/species/abductor
	name = "Abductor"
	id = "abductor"
	darksight = 3
	say_mod = "gibbers"
	sexes = 0
	invis_sight = SEE_INVISIBLE_LEVEL_ONE
	specflags = list(NOBLOOD,NOBREATH)
	var/scientist = 0 // vars to not pollute spieces list with castes
	var/agent = 0
	var/team = 1

/datum/species/abductor/handle_speech(message)
	//Hacks
	var/mob/living/carbon/human/user = usr
	for(var/mob/living/carbon/human/H in mob_list)
		if(H.dna.species.id != "abductor")
			continue
		else
			var/datum/species/abductor/target_spec = H.dna.species
			if(target_spec.team == team)
				H << "<i><font color=#800080><b>[user.name]:</b> [message]</font></i>"
				//return - technically you can add more aliens to a team
	return ""

	-------------------
	if(s_cooldown)
			src << "\red Ability is still charging..."
			return
		s_cooldown = 1
		spawn(160) s_cooldown = 0 //Ten seconds unstealthed for every thirty stealthed. Still pretty robust, just not limitless.

	''''''''''''''''''''
	sleep (360)
		cancel_stealth()
	*/