//
//  Character.swift
//  Zug Zug
//
//  Created by Timothy Walsh on 2/9/15.
//  Copyright (c) 2015 com.ClassicTim. All rights reserved.
//

import Foundation
import UIKit

struct Character {
    
    var affiliation: String?
    var icon: UIImage?
    var name: String?
    var soundsArray: [String] = []
    
    init(index: Int) {
        let allCharacterDictionary = AllCharactersDictionary()
        let characterDictionary = allCharacterDictionary.characterList[index]
        
        self.affiliation = characterDictionary["affiliation"] as String!
        
        
        let iconName = characterDictionary["icon"] as String!
        self.icon = UIImage(named: iconName)
        
        self.name = characterDictionary["characterName"] as String!
        
        self.soundsArray += characterDictionary["soundsArray"] as [String]
        
    }
    
    init(#affiliation: String, #icon: String, #name: String, soundsArray: [String] )// allow characters to be created without having to reference AllCharactersDictionary
    {
        self.affiliation = affiliation
        self.icon = UIImage(named: icon)
        self.name = name
        self.soundsArray += soundsArray
        
    }
    
    func returnRandomSound() -> String {
        
        var soundCount = UInt32(soundsArray.count)
        var unsignedRandomNumber = arc4random_uniform(soundCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return soundsArray[randomNumber]
    }
}
