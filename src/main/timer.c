#include <common.h>
#include <hidenseek.h>
#include <musichandler.h>
#include <player.h>
#include <racedata.h>
#include <raceinfo.h>
#include <utils.h>

void MainTimerUpdate(u32 timer) {
	register TimerManager* tmanager asm("r29");

	// Modified original instruction
	if (timer > 0)
		tmanager->frames = timer-1;

	// Update respawn timer for each player
	for (int pid = 0; pid < HideNSeekData.playerCount; pid++) {
		if (HideNSeekData.players[pid].respawnTimer > 0) {
			HideNSeekData.players[pid].respawnTimer--;
			if (HideNSeekData.players[pid].respawnTimer == 0)
				PlayerHolder->players[pid]->pointers.playerSub10->hardSpeedLimit = 0x42F00000;
		}
	}

	// Some things happen before 30 seconds have passed
	if (!Have30SecondsPassed) {

		// If timer is 1800, set speed to 0 for all Seekers
		if (timer == 1800) {
			for (int pid = 0; pid < HideNSeekData.playerCount; pid++) {
				if (HideNSeekData.players[pid].isRealSeeker)
					PlayerHolder->players[pid]->pointers.playerSub10->hardSpeedLimit = 0;
			}

		// Play the countdown jingle again
		} else if (timer % 60 == 0 && timer <= 180 && Raceinfo->raceState != 4)
			CustomJingleFunc(0xD8);

		// If timer is 1, reset it back to 10 minutes (minus 1 frame because it will give 1 point otherwise)
		else if (timer == 2) {

			if (HalfTimer)
				tmanager->frames = 0x4650;
			else
				tmanager->frames = 0x8CA0;

			Have30SecondsPassed = true;

			// Allow the Seekers to move
			for (int pid = 0; pid < HideNSeekData.playerCount; pid++) {
				if (HideNSeekData.players[pid].isRealSeeker)
					PlayerHolder->players[pid]->pointers.playerSub10->hardSpeedLimit = 0x42F00000;
			}

			// Play the GO jingle again!
			if (Raceinfo->raceState != 4)
				CustomJingleFunc(0xD9);
		}
	}

	else {

		// Only play sounds if the race has not ended
		if (Raceinfo->raceState != 4) {

			// If one minute is remaining, play the final lap jingle and enable faster music
			if (timer == 3600)
				JingleFunc(MusicHandler, 5);

			// Play the countdown jingle in the last 10 seconds
			else if (timer % 60 == 0) {
				if (timer >= 240 && timer <= 600)
					CustomJingleFunc(0xEB);
				else if (timer > 0 && timer <= 180)
					CustomJingleFunc(0xEC);
			}
		}

		// Run the Star function if the local player is a Seeker (unless they already have a Star)
		int pid = Racedata->main.scenarios[0].settings.hudPlayerIds[0];
		if (HideNSeekData.players[pid].isSeeker && PlayerHolder->players[pid]->pointers.playerSub10->starTimer == 0)
			StarFunc(&ItemHolder->ptr->players[pid]);
	}
}

u32 TimerChecks(_Raceinfo* rinfo) {

	// Make some quick bools
	bool timeOver = (rinfo->timerManager->frames == 0);
	bool noSeekers = (HideNSeekData.totalSeekers == 0);
	bool noSurvivors = (HideNSeekData.totalSurvivors == 0);

	if (timeOver || noSeekers || noSurvivors) {

		// Disable Spectator Mode
		SpectatorMode = 0;

		// Setup loop
		int survivorpos = 1;
		int seekerpos = 1;
		for (int pid = 0; pid < HideNSeekData.playerCount; pid++) {

			// For Seekers, set their position to be the amount of survivors + 1, and their points to the total amount of players caught (or 15 if all players were caught)
			if (HideNSeekData.players[pid].isRealSeeker) {
				rinfo->players[pid]->battleScore = (noSurvivors) ? 15 : HideNSeekData.playerCount - HideNSeekData.totalSurvivors - SeekerCount - 1;
				HideNSeekData.players[pid].position = HideNSeekData.totalSurvivors + seekerpos;
				seekerpos++;

			// For all uncaught Hiders, set position to survivorpos and points to 15
			} else if (HideNSeekData.players[pid].position == 0) {
				HideNSeekData.players[pid].position = survivorpos;
				rinfo->players[pid]->battleScore = 15;
				survivorpos++;
			}
		}
	}

	// Return a different value based on which bool is true
	if (timeOver)
		return 1;
	else if (noSurvivors)
		return 2;
	else if (noSeekers)
		return 3;
	return 0;
}

bool TimerFlashFix() {
	return (Have30SecondsPassed && Raceinfo->timerManager->frames <= 3600);
}
