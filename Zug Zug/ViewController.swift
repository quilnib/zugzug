//
//  ViewController.swift
//  Zug Zug
//
//  Created by Timothy Walsh on 2/9/15.
//  Copyright (c) 2015 com.ClassicTim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var hordeCharactersArray: [Character] = []
    var allianceCharactersArray: [Character] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let charactersDictionary = AllCharactersDictionary()
        var tempCharacter: Character?
        
        
        for character in charactersDictionary.characterList {// "character" in this context may just be an index instead of an instance of the index.  Check assumption
            if let characterAffiliation = character["affiliation"] as String! {
                if (characterAffiliation == "Horde") {
                    if let index = find(charactersDictionary.characterList, character) //find the index of the character we were just looking up
                    {
                        tempCharacter = Character(index: index)
                        hordeCharactersArray.append(tempCharacter!)
                    }
                } else if (characterAffiliation == "Alliance") {
                    if let index = find(charactersDictionary.characterList, character) //find the index of the character we were just looking up
                    {
                        tempCharacter = Character(index: index)
                        hordeCharactersArray.append(tempCharacter!)
                    }
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if (segue.identifier == "showCharactersScreenSegue") {
            let charactersScreenController = segue.destinationViewController as CharactersScreenViewController
            charactersScreenController.charactersArray = hordeCharactersArray //this will need to be updated to dynamically send the correct list
            //charactersScreenController.backgroundImage = UIImage(named: "some string for now")
        }
    }
    
    
    @IBAction func showCharactersScreen(sender: AnyObject) {
        performSegueWithIdentifier("showCharactersScreenSegue", sender: sender)
    }


}

