#  Information
This is a decompilation of Transformers:Mystery of Convoy (spelled Comvoy) or Fight! Super Robot Lifeform Transformers: Convoy No Nazo
Mostly a rom-study to learn NES 6502 assembly
I annotated what I could as I was learning
Its finally able to be compiled into a working game
Over time, I will update the annotations and look for improvements, but not this month
Decompiled with the help of FCEUX by Dr Venutech Archeville

##   Installation and Environment
    I followed the NES development environment setup tutorial from NESHacker on Youtube https://www.youtube.com/watch?v=RtY5FV5TrIU&pp=ygUKdnNjb2RlIG5lcw%3D%3D
    I installed a Microsoft hex editor in VSCode, but I used HxD hex editor for comparing a dump to my compilation more often due to preference
    I installed the ca65 Macro Assembler extenstion for VSCode and CC65 from https://cc65.github.io/
    Follow the video if you have an issue with the last line.
    In C:/cc65/cfg/nes.cfg, the size of the character rom (CHR Bank) was changed to $8000, from $2000 (you can use the cfg file included)
    To compile, go to the *.s file and use the hotkey shift+ctrl+P and Run Build Task, should spit out a rom

##   Things I've learned
    -At least 2 versions exist, only difference is the copyright at the title screen "©Takara 1986 " vs "© FMG 1987  "
    -Theres a sideroom with the pickaxe guy in stage 3 on the top right just before the end. Use the Ratbat tape as a platform. Also, in stage 6, left side, theres a pickaxe guy battle room. Level 10 also has a load point for this sideroom, but its blocked by a wall, so even if you do enter it the player get stuck when exiting the sideroom.
    -Theres a side room in stage 8 where the player fights a guardian, megatron appears and the reward is a U for RODIMUS
    -Rodimus letters: (Stage:Letter) 1:R,2:O,4:D,5:I,7:M,8:U,9:S
    -The vertical levels dont actually update new backgrounds, it loops the same 2 screens
    -Extra life every 10,000 points. (1000 actual points because the last 0 is a placeholder)
    -Level 9 uses 5 checkpoints or you start the stage over again. As long as these 5 checkpoints are hit, you can take any path to the end of the level.
    -The player's acceleration is reduced by almost half once you beat the game 7 times
    -Enemy powerup ramjet increases speed by 25% after every game completion, up to 75%, or 3 game completions
    -Boss up and down movement increases by 12.5% every game completion up to 3 times
    -Ramjet with powerup increases x speed by 25% every game completion up to 3 times
    -Most stages have 4 hidden energon bonus point powerups
    -Player bullets dont have a hitbox, but use exact location to confirm a hit on enemy hitboxes. The game is far more enjoyable with a bit of a hitbox on bullets
    -No F powerup on level 1,2 and 7

##   Walkthrough
    -Stage 1: 
            Hold right as the level starts and jump over the first swooping decepticon jet. 
            Run under the subsequent jets and under the Gosupu (rocket). Shoot the powerup ramjet, but watch out for the jet that swoops just after the Gosupu.
            Running along, there is a Gosupu directly under a moon, right after this is the jet with the first Rodimus letter, R.
            Hidden energon cube at plrxprog 048000
            Hidden energon cube is at plrxprog0xA078F8, w/ plrxpos0xBF78, or between the two large moons before the end of the level. Jump as high as you can in the middle of the two moons and shoot once to the right to reveal an energon cube. Dont shoot the cube, it can be killed and you wont get any points.
    -Boss 1:
            Go to the grey platform which looks like Optimus Prime's bumper under the boss and transform into a truck by holding down.
            Fire 4 vertical bullets into the glowing part of the planet and complete the stage.
    -Stage 2:
            More of a platforming level, but still get the hell out of there.
            Theres a hidden energon cube shorly before starscream

    -Stage 9:
![Level 9 map](https://github.com/Fixatron/TFRom-Recreation/blob/main/images/level9map.png)
            Stage 9 requires the player to hit 5 checkpoints or start the stage over again. As long as these 5 checkpoints are hit, you can take any path to the end of the level.
           The Black Baby in stage 9 is the old Takara Logo

           ... i was going to make some more of this tutorial to write about the siderooms and the powerup locations, but its easier with pictures or video, like a walkthrough. I've added possible improvements for a barrier meter and better bullet hitboxes to make playing not a torture. The developers were intentionally making it hard to play and it gets harder as we go along. What a nightmare, but it was 1986 and there was a rush to get this game out around Christmas, making this game quite a marvel for its time.

##   RAM cheats
    - Store 40 to ram 0x22 to complete level (need to make 0x76 0 for level 9)
    - Store FF to 0x53 for all powerups (0x54 is number of hits taken)
    - 0x69 is number of lives, 0x6a is current level
    - To jump to another level, press pause, enter the level before into ram and complete the level by storing 40 to ram 0x22
    - 0x42 is player accelleration
    - 0x41 is player max x speed, 0x3f is player max y speed

##   Things I want to change

    - better hit boxes  ☑ : added a potential hitbox to the bullets
    - new character sprites
    - simultaneous 2 players
    - megaman style boss fights
    - pre-bossfight dialog
    - better music
    - pause menu
    - health bar    ☑ : added a potential shield_bar routine for the barrier
    - expand PRG Rom
    - improve ice mechanics
    - longer turning sprite times
    - allow player to keep moving while transforming

##   Tools
    -YYCHR  https://w.atwiki.jp/yychr
    -FCEUX  https://fceux.com/web/download.html
    -MESEN  https://www.mesen.ca/
    -.net desktop runtime for mesen https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-6.0.22-windows-x64-installer?cid=getdotnetcore
    -VSCode https://code.visualstudio.com/download
    -cc65   https://cc65.github.io/
    -notepad++  https://notepad-plus-plus.org/downloads/
    -HxD    https://mh-nexus.de/en/downloads.php?product=HxD20

##   Related Videos
    Protoman and Jawz.D Play the original Famicom game https://www.youtube.com/watch?v=sqZUskwHB5s&list=PLlUGmicQ2Ka3C_ZJ2D_zOUOTXlvyk_f8X
    Protoman plays the Q Transformers Mystery of Convoy game for Android https://www.youtube.com/watch?v=bQmbdAcxiOk&ab_channel=ProtomanGamingTrailers
    AVGN on Transformers Games https://www.youtube.com/watch?v=km9vYa2GIUI&list=PL6oq6vDAk2wlYfrYHMYGCO4Q9qta_sLy5&ab_channel=Cinemassacre
    Commercial from 1986 https://www.youtube.com/watch?v=Zr9narWQvTE&ab_channel=BillyPan
    Takara Promo Video from 1986 https://www.youtube.com/watch?v=1jVBzq4ud2U&ab_channel=TFRaw%21%21TransformersMultimediaArchive
    Guardian Room stage 8 https://www.youtube.com/watch?v=ciftJMN4MxA&ab_channel=PatrickSo&t=340s
    

##   Related Links
    Wikipedia Article on Transformers Mystery of Convoy https://en.m.wikipedia.org/wiki/Transformers:_Mystery_of_Convoy
    TFWiki Article on Transformers Mystery of Convoy https://tfwiki.net/wiki/Transformers:_Mystery_of_Convoy
    GameFaqs Walkthrough https://gamefaqs.gamespot.com/nes/578338-transformers-convoy-no-nazo/faqs/47896
    Level 9 Map     https://gamefaqs.gamespot.com/nes/578338-transformers-convoy-no-nazo/map/3988?raw=1
    Strategy guide https://www.tfraw.com/p/family-computer-victory-dojo.html
    Manga Translation https://www.tfraw.com/p/victory-dojo-transformers-mystery-of.html
    Another tie-in Manga https://www.tfraw.com/p/famicom-how-to-manga-transformers.html


##   NES Assembly resourses
    6502 Instruction Set    https://www.masswerk.at/6502/6502_instruction_set.html
    Wikibooks 6502 Asm      https://en.wikibooks.org/wiki/6502_Assembly
