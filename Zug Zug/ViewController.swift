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
    var isHorde: Bool = false
    
    
    @IBOutlet weak var chooseFactionLabel: UILabel!
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let charactersDictionary = AllCharactersDictionary()
        var tempCharacter: Character?
        
        
        //create ability to have the "Choose your faction" label on the home screen pulse visually
        var pulseAnimation:CABasicAnimation = CABasicAnimation(keyPath: "opacity");
        pulseAnimation.duration = 0.75;
        pulseAnimation.toValue = NSNumber(float: 1.0);
        pulseAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut);
        pulseAnimation.autoreverses = true;
        pulseAnimation.repeatCount = FLT_MAX;
        self.view.layer.addAnimation(pulseAnimation, forKey: nil)
        chooseFactionLabel.layer.addAnimation(pulseAnimation, forKey: nil)
        
        
        for character in charactersDictionary.characterList {// "character" in this context may just be an index instead of an instance of the index.  Check assumption
            if let characterAffiliation = character["affiliation"] as String! {
                if (characterAffiliation == "Horde") {
                    tempCharacter = Character(affiliation: (character["affiliation"] as String!), icon: (character["icon"] as String!), name: (character["characterName"] as String!), soundsArray: (character["soundsArray"] as [String])) // create a character and deal with the optionals
                    hordeCharactersArray.append(tempCharacter!)
                    
                } else if (characterAffiliation == "Alliance") {
                    tempCharacter = Character(affiliation: (character["affiliation"] as String!), icon: (character["icon"] as String!), name: (character["characterName"] as String!), soundsArray: (character["soundsArray"] as [String])) // create a character and deal with the optionals
                    allianceCharactersArray.append(tempCharacter!)
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if (segue.identifier == "showCharactersScreenSegue" || segue.identifier == "showLeftCharactersScreenSegue") {
            let charactersScreenController = segue.destinationViewController as CharactersScreenViewController
            if (isHorde)
            {
                charactersScreenController.charactersArray += hordeCharactersArray //this will need to be updated to dynamically send the correct list
                charactersScreenController.backgroundImage = UIImage(named: "hordeBackground")
            } else {// if not horde then assume alliance
                charactersScreenController.charactersArray += allianceCharactersArray
                charactersScreenController.backgroundImage = UIImage(named: "allianceBackground")
            }
        }
    }
    
    
    @IBAction func showCharactersScreen(sender: AnyObject) {
        performSegueWithIdentifier("showCharactersScreenSegue", sender: sender)
    }

    @IBAction func hordeButtonSelected(sender: AnyObject) {
        
        isHorde = true
        performSegueWithIdentifier("showCharactersScreenSegue", sender: sender)//change this to "showLeftCharactersScreenSegue" for custom segue
    }
    @IBAction func allianceButtonSelected(sender: AnyObject) {
        isHorde = false
        performSegueWithIdentifier("showCharactersScreenSegue", sender: sender)
    }

}

