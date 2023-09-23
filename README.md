##  Information
    This is a decompilation of Transformers:Mystery of Convoy (spelled Comvoy) or Fight! Super Robot Lifeform Transformers: Convoy No Nazo
    Mostly a rom-study to learn NES 6502 assembly
    I annotated what I could as I was learning
    Its finally able to be compiled into a working game
    Over time, I will update the annotations and look for improvements, but not this month
    Decompiled with the help of FCEUX by Dr Venutech Archeville

#   Installation and Environment
    I followed the NES development environment setup tutorial from NESHacker on Youtube https://www.youtube.com/watch?v=RtY5FV5TrIU&pp=ygUKdnNjb2RlIG5lcw%3D%3D
    I installed a Microsoft hex editor in VSCode, but I used HxD hex editor for comparing a dump to my compilation more often due to preference
    I installed the ca65 Macro Assembler extenstion for VSCode and CC65 from https://cc65.github.io/
    Follow the video if you have an issue with the last line.
    In C:/cc65/cfg/nes.cfg, the size of the character rom (CHR Bank) was changed to $8000, from $2000 (you can use the cfg file included)
    To compile, go to the *.s file and use the hotkey shift+ctrl+P and Run Build Task, should spit out a rom

#   Things I've learned
    -theres a player speed setting
    -a strange boss battle can be found by replacing current_level 1c with 14 or 16 when the bumblebee warp is activated, also at the end of the other warp
    -bullet velocity will by increased by how fast player is moving

#   Things I want to change

    - Better hit boxes
    - new characters
    - simultaneous 2 players
    - megaman style boss fights
    - pre-fight boss dialog
    - better music
    - pause menu
    - health bar

#   FCEUX stuff
    - Fn+] to pause/unpause rom

#   Related Videos
    Protoman and Jawz.D Play the original Famicom game https://www.youtube.com/watch?v=sqZUskwHB5s&list=PLlUGmicQ2Ka3C_ZJ2D_zOUOTXlvyk_f8X
    Protoman plays the Q Transformers Mystery of Convoy game for Android https://www.youtube.com/watch?v=bQmbdAcxiOk&ab_channel=ProtomanGamingTrailers
    AVGN on Transformers Games https://www.youtube.com/watch?v=km9vYa2GIUI&list=PL6oq6vDAk2wlYfrYHMYGCO4Q9qta_sLy5&ab_channel=Cinemassacre
    Commercial from 1986 https://www.youtube.com/watch?v=Zr9narWQvTE&ab_channel=BillyPan
    Takara Promo Video from 1986 https://www.youtube.com/watch?v=1jVBzq4ud2U&ab_channel=TFRaw%21%21TransformersMultimediaArchive
    

#   Related Links
    Wikipedia Article on Transformers Mystery of Convoy https://en.m.wikipedia.org/wiki/Transformers:_Mystery_of_Convoy
    TFWiki Article on Transformers Mystery of Convoy https://tfwiki.net/wiki/Transformers:_Mystery_of_Convoy
