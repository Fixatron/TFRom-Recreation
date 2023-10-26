#  Information
This is a decompilation of Transformers:Mystery of Convoy (spelled Comvoy) or Fight! Super Robot Lifeform Transformers: Convoy No Nazo
Mostly a rom-study to learn NES 6502 assembly
I annotated what I could as I was learning
Its finally able to be compiled into a working game
Most of the code is correctly annotated, except for a few enemy movement subroutines
Decompiled with the help of FCEUX by Dr Venutech Archeville (DeceptiKitty)
Original Game title is: Tatakae! Chou Robotto Seimeitai Transformers: Convoy no Nazo 戦え！超ロボット生命体 トランスフォーマー コンボイの謎
or Fight! Super Robot Lifeform Transformers: The Mystery of Convoy

##   Installation and Environment
* Unordered sub-list. 
* I followed the NES development environment setup tutorial from NESHacker on Youtube https://www.youtube.com/watch?v=RtY5FV5TrIU&pp=ygUKdnNjb2RlIG5lcw%3D%3D
* I installed a Microsoft hex editor in VSCode, but I used HxD hex editor for comparing a dump to my compilation more often due to preference
* I installed the ca65 Macro Assembler extenstion for VSCode and CC65 from https://cc65.github.io/
* Follow the video if you have an issue with the last line.
* In C:/cc65/cfg/nes.cfg, the size of the character rom (CHR Bank) was changed to $8000, from $2000 (you can use the cfg file included)
* To compile, go to the *.s file and use the hotkey shift+ctrl+P and Run Build Task, should spit out a rom

##   Things I've learned
- How to code in NES 6502 Assembly
- The code is relatively sophisticated, but there was an apparant rush to meet a deadline and some things were left
- At least 2 versions exist, only difference is the copyright at the title screen "©Takara 1986 " vs "© FMG 1987  "
- Theres a sideroom with the pickaxe guy in stage 3 on the top right just before the end. Use the Ratbat tape as a platform. Also, in stage 6, left side, theres a pickaxe guy battle room. Level 10 also has a load point for this sideroom, but its blocked by a wall, so even if you do enter it the player get stuck when exiting the sideroom.
- Theres a side room in stage 8 where the player fights a guardian, megatron appears and the reward is a U for RODIMUS
- Rodimus letters: (Stage:Letter) 1:R,2:O,4:D,5:I,7:M,8:U,9:S
- The vertical levels dont actually update new backgrounds, it loops the same 2 screens
- Extra life at 10,000 points, then every 20,000 points (1000 actual points because the last 0 is a placeholder)
- Level 9 uses 5 checkpoints or it starts the stage over again. As long as these 5 checkpoints are hit, you can take any path to the end of the level.
- Enemy powerup ramjet increases speed by 25% after every game completion, up to 75%, or 3 game completions
- Boss up and down movement increases by 12.5% every game completion up to 3 times
- Ramjet with powerup increases x speed by 25% every game completion up to 3 times
- Most stages have 4 hidden energon bonus point powerups
- Player bullets dont have a hitbox, but use exact location to confirm a hit on enemy hitboxes. The game is far more enjoyable with a bit of a hitbox on bullets
- No F powerup on level 1,2 and 7
- Player's acceleration is reduced after every playthrough, but gets maxed out after 7 completions
- The player's acceleration is reduced by almost half once you beat the game 7 times
- There is an error in the code when checking for a 1up
- Holding select will hold the end/title screens, letting go will allow the next screen to load

##   Walkthrough
- Stage 1: 
  * ![Level 1 Map](https://github.com/Fixatron/TFRom-Recreation/blob/main/images/stages/st1.png)
  * Hold right as the level starts and jump over the first swooping decepticon jet. This level is a run and gun, keep going.
  * Run under the subsequent jets and under the Gosupu (rocket). Shoot the powerup ramjet, but watch out for the jet that swoops just after the first Gosupu.
  * Running along, there is a Gosupu directly under a moon, right after this is the jet with the first Rodimus letter, R.
  * Hidden energon cube are about! Dont shoot the cube, it can be destroyed and rendered useless.
- Boss 1:
  * ![Boss 1](https://github.com/Fixatron/TFRom-Recreation/blob/main/images/stages/st1-boss.png)
  * Fire 4 vertical bullets into the glowing part of the planet and complete the stage.
- Stage 2:
  * More of a platforming level
  * Theres a hidden energon cube shorly before Starscream
  * Destroy Starscream's Ghost to rescue Goldbug and warp to stage 4

- Stage 9:
  * ![Level 9 map](https://github.com/Fixatron/TFRom-Recreation/blob/main/images/level9map.png)
  * Stage 9 requires the player to hit 5 checkpoints or start the stage over again. As long as these 5 checkpoints are hit, you can take any path to the end of the level.
  * The Black Baby in stage 9 is the old Takara Logo
- Boss 9:
  * ![Boss 9](https://github.com/Fixatron/TFRom-Recreation/blob/main/images/stages/st9-boss.png)

   ... i was going to make some more of this tutorial to write about the siderooms and the powerup locations, but its easier with pictures or video, like a walkthrough. I've added possible improvements for a barrier meter and better bullet hitboxes to make playing not a torture. The developers were intentionally making it hard to play and it gets harder as we go along. What a nightmare, but it was 1986 and there was a rush to get this game out around Christmas, making this game quite a marvel for its time.

##   RAM cheats
- Store 40 to ram 0x22 to complete level (need to make 0x76 0 for level 9)
- Store FF to 0x53 for all powerups (0x54 is number of hits taken)
- 0x69 is number of lives, 0x6a is current level
- To jump to another level, press pause, enter the level before into ram and complete the level by storing 40 to ram 0x22
- 0x42 is player accelleration
- 0x41 is player max x speed, 0x3f is player max y speed

##   Things I want to change
- better hit boxes  ☑
- health bar ☑
- fire missiles in bot mode ☑
- new character sprites
- simultaneous 2 players (not enough room)
- megaman style boss fights (not enough room)
- pre-bossfight dialog (maybe, using the level 10 sideroom)
- better music (maybe)
- expand PRG Rom (not necessary to make a decent game, but would be nice to have more content)
- improve ice mechanics
- multi-directional shooting
- script a new ending and storyline
- use the stage 10 sideroom for different story notes depending on the playthrough number and player (Rodimus/Magnus)
- reasonable points for enemies that werent previously expected to be destroyed
- add a special sprite for the endscreen

##  Things I've changed (RomHack)
* added 08 hitbox to plr bullet x and y value
* made a sprite routine for the player health and shield/barrier bar
* translated title screen with changed character rom
* made routine to hold player's health
* adjusted player enemy collision routine to account for player health
* adjusted player weapon collision routine to account for player health
* grabbed some unused ram in zero page ($Ex) to get some routines done
* removed not_called_subroutine_1 and 2
* edited title screen palette table
* fixed the error in samp_tf2010_t
* energon cubes now add full health 
* D powerups now add full health
* dimmed the colours used for the flashing screen transitions
* added ability to launch missiles with select in bot mode
* reduced the delay between being able to fire another missile in truck mode with a global variable
* keep powerup and barrier hits taken when going to next level, but restore health bar
* changed barrier music
* increase player speed with every playthrough, instead of decreasing
* allowed flight in vertical levels
* removed two routines* screen_reset and dec_zero_ram
* corrected an error when doing a 1up check
* added level 10 sideroom back, but its just an empty room, for now
* spell check on "Congratulation!"
* hidden large subroutine in the audio section that wasnt being used


##   Tools
- YYCHR  https://w.atwiki.jp/yychr
- FCEUX  https://fceux.com/web/download.html
- MESEN  https://www.mesen.ca/
- .net desktop runtime for mesen https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-6.0.22-windows-x64-installer?cid=getdotnetcore
- VSCode https://code.visualstudio.com/download
- cc65   https://cc65.github.io/
- notepad++  https://notepad-plus-plus.org/downloads/
- HxD    https://mh-nexus.de/en/downloads.php?product=HxD20

##   Related Videos
* Protoman and Jawz.D Play the original Famicom game https://www.youtube.com/watch?v=sqZUskwHB5s&list=PLlUGmicQ2Ka3C_ZJ2D_zOUOTXlvyk_f8X
* Protoman plays the Q Transformers Mystery of Convoy game for Android https://www.youtube.com/watch?v=bQmbdAcxiOk&ab_channel=ProtomanGamingTrailers
* AVGN on Transformers Games https://www.youtube.com/watch?v=km9vYa2GIUI&list=PL6oq6vDAk2wlYfrYHMYGCO4Q9qta_sLy5&ab_channel=Cinemassacre
* Commercial from 1986 https://www.youtube.com/watch?v=Zr9narWQvTE&ab_channel=BillyPan
* Takara Promo Video from 1986 https://www.youtube.com/watch?v=1jVBzq4ud2U&ab_channel=TFRaw%21%21TransformersMultimediaArchive
* Guardian Room stage 8 https://www.youtube.com/watch?v=ciftJMN4MxA&ab_channel=PatrickSo&t=340s
* TF Chiptunes https://www.youtube.com/watch?v=wZyM6kFGWj8&ab_channel=StudioMegaane
  * https://www.youtube.com/watch?v=RrDoWdKgQFM&ab_channel=StudioMegaane
  * https://www.youtube.com/watch?v=HuhMyjP-byU&ab_channel=StudioMegaane
  * https://www.youtube.com/watch?v=S4VJ1KDWTeo&ab_channel=StudioMegaane
* My first MoC video https://www.youtube.com/watch?v=db-pN0WLpgI&ab_channel=Deceptikitty


##   Related Links
* Wikipedia Article on Transformers Mystery of Convoy https://en.m.wikipedia.org/wiki/Transformers:_Mystery_of_Convoy
* TFWiki Article on Transformers Mystery of Convoy https://tfwiki.net/wiki/Transformers:_Mystery_of_Convoy
* Japanese Wikipedia article https://ja.wikipedia.org/wiki/%E3%83%88%E3%83%A9%E3%83%B3%E3%82%B9%E3%83%95%E3%82%A9%E3%83%BC%E3%83%9E%E3%83%BC_%E3%82%B3%E3%83%B3%E3%83%9C%E3%82%A4%E3%81%AE%E8%AC%8E
* GameFaqs Walkthrough https://gamefaqs.gamespot.com/nes/578338-transformers-convoy-no-nazo/faqs/47896
* Level 9 Map     https://gamefaqs.gamespot.com/nes/578338-transformers-convoy-no-nazo/map/3988?raw=1
* Strategy guide https://www.tfraw.com/p/family-computer-victory-dojo.html
* Manga Translation https://www.tfraw.com/p/victory-dojo-transformers-mystery-of.html
* Another tie-in Manga https://www.tfraw.com/p/famicom-how-to-manga-transformers.html
* Cartridge information https://nescartdb.com/profile/view/2211/tatakae-chou-robotto-seimeitai-transformers-convoy-no-nazo
* Discord https://discord.childrenofprimus.com
* Japanese review https://chara.ge/matome/transformers-mystery-convoy-review/
* Another Japanese review https://dic.pixiv.net/a/%E3%82%B3%E3%83%B3%E3%83%9C%E3%82%A4%E3%81%AE%E8%AC%8E
* Reference to developer Hiroshi Okamoto https://gdri.smspower.org/wiki/index.php/Locomotive
* Original reference to Okamoto-San https://web.archive.org/web/20140828202915/http://animex.jp/?p=6210

##   NES Assembly resourses
* 6502 Instruction Set    https://www.masswerk.at/6502/6502_instruction_set.html
* Wikibooks 6502 Asm      https://en.wikibooks.org/wiki/6502_Assembly

##  Story
The Earth is now in a desperate situation due to an evil army known as the Decepticons, who aim to seize Earth's rich resources and conquer it.
In order to love the Earth and protect peace, the Cybertrons challenged the Decepticons to a fight.
However, in the battle, the Cybertron's supreme commander, Optimus Prime, was injured and collapsed.
The dying Supreme Commander of Cybertron, Optimus Prime, appoints City Commander Ultra Magnus to take command of Scramble City.
He handed over the "Matrix" that was stored inside Optimus Prime's body.
Under orders from Supreme Commander Optimus Prime, Ultra Magnus bravely challenges the Decepticons to restore peace to Earth.
(From the manual)
In short, the explanation is that in the movie "Transformers: The Movie", Optimus Prime dies and Ultra Magnus inherits the Matrix.