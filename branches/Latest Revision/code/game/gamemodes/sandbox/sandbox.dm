/datum/game_mode/sandbox
	name = "sandbox"
	config_tag = "sandbox"

/datum/game_mode/sandbox/announce()
	world << "<B>The current game mode is - Sandbox!</B>"
	world << "<B>Build your own station with the sandbox-panel command!</B>"

/datum/game_mode/sandbox/pre_setup()
	for(var/mob/M in world)
		if(M.client && M.client.authenticated)
			M.CanBuild()

/datum/game_mode/sandbox/check_win()
	return 1