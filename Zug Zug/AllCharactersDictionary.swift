//
//  AllCharactersDictionary.swift
//  Zug Zug
//
//  Created by Timothy Walsh on 2/9/15.
//  Copyright (c) 2015 com.ClassicTim. All rights reserved.
//

import Foundation

struct AllCharactersDictionary {
    
    let characterList: [[String: AnyObject]] = [//this could be updated to handle any character list provided, as long as it follows the same structure and the associated audio files are also included in the project
        [
            "affiliation": "Horde",
            "icon": "peon",
            "characterName": "Peon",
            "soundsArray": ["Pnready", "Ohelp1", "Ohelp2", "Opissed1", "Opissed2", "Opissed3", "Opissed4", "Opissed5", "Opissed6", "Opissed7", "Owrkdone", "Oyessir1", "Oyessir2", "Oyessir3", "Oyessir4"]
        ],
        [
            "affiliation": "Horde",
            "icon": "grunt",
            "characterName": "Grunt",
            "soundsArray": ["Odempis4", "Odempis5", "Odempis6", "Odempis7", "Opissed1", "Opissed2", "Opissed3", "Opissed4", "Opissed5", "Opissed6", "Opissed7","Oready", "Owhat1", "Owhat2", "Owhat3", "Owhat4", "Owhat5", "Owhat6"]
        ],
        [
            "affiliation": "Horde",
            "icon": "trollAxethrower",
            "characterName": "Troll Axethrower",
            "soundsArray": ["Trpissd1", "Trpissd2", "Trpissd3", "Trready", "Trwhat1", "Trwhat2", "Trwhat3", "Tryessr1", "Tryessr2", "Tryessr3"]
        ],
        [
            "affiliation": "Horde",
            "icon": "ogre",
            "characterName": "Ogre",
            "soundsArray": ["Ogpissd1", "Ogpissd2", "Ogpissd3", "Ogpissd4", "Ogpissd5", "Ogready", "Ogwhat1", "Ogwhat2", "Ogwhat3", "Ogwhat4", "Ogyessr1", "Ogyessr2", "Ogyessr3"]
        ],
        [
            "affiliation": "Horde", 
            "icon": "ogreMage",
            "characterName": "Ogre Mage",
            "soundsArray": ["Ompissd1", "Ompissd2", "Ompissd3", "Omready", "Omwhat1", "Omwhat2", "Omwhat3", "Omwhat4", "Omyessr1", "Omyessr2", "Omyessr3"]
        ],
        [
            "affiliation": "Horde",
            "icon": "goblinZepplin",
            "characterName": "Goblin Zepplin",
            "soundsArray": ["Gbpissd1", "Gbpissd2", "Gbready", "Gbyessr1"]
        ],
        [
            "affiliation": "Horde",
            "icon": "deathKnight",
            "characterName": "Death Knight",
            "soundsArray": ["Dkpissd1", "Dkpissd2", "Dkpissd3", "Dkready", "Dkwhat1", "Dkwhat2", "Dkyessr1", "Dkyessr2", "Dkyessr3"]
        ],
        [
            "affiliation": "Horde",
            "icon": "goblinSappers",
            "characterName": "Goblin Sappers",
            "soundsArray": ["Gopissd1", "Gopissd2", "Gopissd3", "Goready", "Gowhat1", "Gowhat2", "Gowhat3", "Gowhat4", "Goyessr1", "Goyessr2", "Goyessr3", "Goyessr4"]
        ],
        [
            "affiliation": "Horde",
            "icon": "orcShips",
            "characterName": "Orc Ships",
            "soundsArray": ["Oshppis1", "Oshppis2", "Oshppis3", "Oshpredy", "Oshpwht1", "Oshpwht2", "Oshpwht3", "Oshpyes1", "Oshpyes2", "Oshpyes3"]
        ],
        [
            "affiliation": "Horde",
            "icon": "dragon",
            "characterName": "Dragon",
            "soundsArray": ["Drready", "Drwhat", "Dryessr1", "Dryessr2"]
        ],
        [
            "affiliation": "Alliance",
            "icon": "peasant",
            "characterName": "Peasant",
            "soundsArray": ["Pspissd1", "Pspissd2", "Pspissd3", "Pspissd4", "Pspissd5", "Pspissd6", "Pspissd7", "Psready", "Pswhat1", "Pswhat2", "Pswhat3", "Pswhat4", "Pswrkdon", "Psyessr1", "Psyessr2", "Psyessr3", "Psyessr4"]
        ],
        [
            "affiliation": "Alliance",
            "icon": "footman",
            "characterName": "Footman",
            "soundsArray": ["Hdead", "Hdempis4", "Hdempis5", "Hdempis6", "Hdempis7", "Hhelp1", "Hhelp2", "Hpissed1", "Hpissed2", "Hpissed3", "Hpissed4", "Hpissed5", "Hpissed6", "Hpissed7", "Hready", "Hwhat1", "Hwhat2", "Hwhat3", "Hwhat4", "Hwhat5", "Hwhat6", "Hwrkdone", "Hyessir1", "Hyessir2", "Hyessir3", "Hyessir4",]
        ],
        [
            "affiliation": "Alliance",
            "icon": "elvenArcher",
            "characterName": "Elven Archer",
            "soundsArray": ["Epissed1", "Epissed2", "Epissed3", "Eready", "Ewhat1", "Ewhat2", "Ewhat3", "Ewhat4", "Eyessir1", "Eyessir2", "Eyessir3", "Eyessir4"]
        ],
        [
            "affiliation": "Alliance",
            "icon": "knight",
            "characterName": "Knight",
            "soundsArray": ["Knpissd1", "Knpissd2", "Knpissd3", "Knready", "Knwhat1", "Knwhat2", "Knwhat3", "Knwhat4", "Knyessr1", "Knyessr2", "Knyessr3", "Knyessr4"]
        ],
        [
            "affiliation": "Alliance",
            "icon": "paladin",
            "characterName": "Paladin",
            "soundsArray": ["Pkatak1", "Pkpissd1", "Pkpissd2", "Pkpissd3", "Pkready", "Pkwhat1", "Pkwhat2", "Pkwhat3", "Pkwhat4", "Pkyessr1", "Pkyessr2", "Pkyessr3", "Pkyessr4"]
        ],
        [
            "affiliation": "Alliance",
            "icon": "gnomishFlyingMachine",
            "characterName": "Gnomish Flying Machine",
            "soundsArray": ["Gnpissd1", "Gnpissd2", "Gnpissd3", "Gnpissd4", "Gnpissd5", "Gnready", "Gnyessr1"]
        ],
        [
            "affiliation": "Alliance",
            "icon": "dwarvenDemoSquad",
            "characterName": "Dwarven Demo Squad",
            "soundsArray": ["Dwhat1", "Dwhat2", "Dwpissd1", "Dwpissd2", "Dwpissd3", "Dwready", "Dwyessr1", "Dwyessr2", "Dwyessr3", "Dwyessr4", "Dwyessr5"]
        ],
        [
            "affiliation": "Alliance",
            "icon": "mage",
            "characterName": "Mage",
            "soundsArray": ["Wzpissd1", "Wzpissd2", "Wzpissd3", "Wzready", "Wzwhat1", "Wzwhat2", "Wzwhat3", "Wzyessr1", "Wzyessr2", "Wzyessr3"]
        ],
        [
            "affiliation": "Alliance",
            "icon": "allianceShips",
            "characterName": "Alliance Ships",
            "soundsArray": ["Hshppis1", "Hshppis2", "Hshppis3", "Hshpredy", "Hshpwht1", "Hshpwht2", "Hshpwht3", "Hshpyes1", "Hshpyes2", "Hshpyes3"]
        ],
        [
            "affiliation": "Alliance",
            "icon": "gryphonRider",
            "characterName": "Gryphon Rider",
            "soundsArray": ["Griffon1", "Griffon2", "Grwhat"]
        ],
    
    ]
}
