<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mystery of Convoy</title>
</head>
<body>
<ul>
<li>Things added</li>
<li> added 08 hitbox to plr bullet x and y value</li>
<li> made a sprite routine for the player health and shield/barrier bar</li>
<li> translated title screen with changed character rom</li>
<li> made routine to hold player's health</li>
<li> adjusted player enemy collision routine to account for player health</li>
<li> adjusted player weapon collision routine to account for player health</li>
<li> grabbed some unused ram in zero page to get some routines done, 64 for player health, 47 to hold an x value for oam ram, 65 to hold the colour of the status bar</li>
<li> removed not_called_subroutine_1 and 2</li>
<li> edited title screen palette table</li>
<li> fixed the error in samp_tf2010_t</li>
<li> energon cubes now add full health </li>
<li> D powerups now add full health</li>
<li> dimmed the colours used for the flashing screen transitions</li>
<li> added ability to launch missiles with select in bot mode</li>
<li> reduced the delay between being able to fire another missile in truck mode with a global variable</li>
<li> keep powerup and barrier hits taken when going to next level, but restore health bar</li>
<li> changed barrier music</li>
<li> increase player speed with every playthrough, instead of decreasing</li>
<li> allowed flight in vertical levels</li>
<li> removed two routines<li> screen_reset and dec_zero_ram</li>
<li> corrected an error when doing a 1up check</li>
<li> added level 10 sideroom back, but its just an empty room, for now</li>
<li> spell check on "Congratulation!"</li>
<li> hidden large subroutine in the audio section that wasnt being used</li>
<li> changed megatron poster colour palette</li>
<li> added some text to the stage 10 guardian screen with a sidestory routine</li>
<li> removed unused sprite tables</li>
<li> shortened flash screen time after titlescreen by 1/3</li>
<li> removed barrier music</li>
<li> slowed down the text flash timer</li>
<li> translated normal ending</li>
<li> edited column section 57 (although I thought it was supposed to be 58) for the guardian room autobot insignia palette, also changed pal_14</li>
<li> extended time energon cube and takara baby are on screen before disappearing</li>
<li> edited enemy bullet sprite CHR rom</li>
<li> added 4 more CHR rom banks</li>
<li> had to remove header author tag because mesen didn't like it very much</li>
<li> Azak was supposed to fire bullets, but the code got screwed up somewhere, so I allowed him to fire again with enemy_status_ram</li>
<li> allowed red decepticon symbol and its cymbals to fire weapons</li>
<li> allowed blue decepticon symbol to fire </li>
<li> hid some of the unused enemy stuff, like scary spider, bos_16 unused kabusu spawner and unused firewheel routines</li>
<li> removed eny 2a and 25<li> red snow commander and unused lvl9 vertical platform</li>
<li> laserbeak turns into condor when hit, but i still need to add a score to condor, because 0 pts for 3 hits isnt nice</li>
<li> removed some unnecessary lines after resetting player ram</li>
<li> removed hold screen loop for title, screen is held if start or select was pushed [hold_title_screen]</li>
<li> removed hold_endscreen rtn, held endscreen if select was pushed</li>
<li> removed the one time unused_ram_1 was stored</li>
<li> removed firewheel sprite</li>
<li> I changed alot of things, hard to remember, fixes ratbat's tape turning into a powerup</li>
<li> Ninja said we need to fix the life system, Fixed the max lives, changing the points for some enemies and boss blast/bullet sprites</li>
<li> moved the part that checks for an altmode after reaching the number of enemy taken hits.</li>
<li> fixed number of lives going over 100, lives are maxed out at 99 lives</li>
<li> enemy 1C and 1D arnt used, just for reference. Look like Gido/Maara but dont move. </li>
<li> fixed points table</li>
<li> changed the D powerups to H powerups</li>
<li> changed gosupu's number of hits from #$FF to #$00</li>
</ul>
</body>
</html>