//
//  CharactersScreenViewController.swift
//  Zug Zug
//
//  Created by Timothy Walsh on 2/9/15.
//  Copyright (c) 2015 com.ClassicTim. All rights reserved.
//

import UIKit
import AudioToolbox

class CharactersScreenViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    var charactersArray: [Character] = []
    var backgroundImage: UIImage?
    var currentCharacter: Character?

    @IBOutlet weak var screenBackgound: UIImageView!
    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var characterCollectionView: UICollectionView!
    @IBOutlet weak var characterLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (backgroundImage != nil) {//set the background image on the screen to the correct banner
            screenBackgound.image = backgroundImage
        }
        
        navBar.title = charactersArray[0].affiliation
        //characterLabel.text = charactersArray[0].name!
        characterLabel.text = ""//default to empty text until a user selects a cell
        currentCharacter = charactersArray[0]
        
        characterCollectionView.dataSource = self

        characterCollectionView.delegate = self
        characterCollectionView.registerClass(CharacterCollectionViewCell.self, forCellWithReuseIdentifier: "characterCell")
        characterCollectionView.backgroundColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.5)//allows us to have a transparent collectionView without that transparency being passed onto the internal views.  The alpha is applied to the color instead of the object
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    //audio functions
    
    @IBAction func playCharacterAudio() {
        var soundName = currentCharacter!.returnRandomSound()
        println("\(soundName)")
        
        if let filePath = NSBundle.mainBundle().pathForResource("\(soundName)", ofType: "wav") {//just wrap this in an if-let statement and then post a UIAlert for the else
            let fileURL = NSURL(fileURLWithPath: filePath)
            var soundID:SystemSoundID = 0
            AudioServicesCreateSystemSoundID(fileURL, &soundID)
            AudioServicesPlaySystemSound(soundID)
        } else {
            let networkIssueController = UIAlertController(title: "Error", message: "Unable to find an audio file!", preferredStyle: .Alert)
            let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            networkIssueController.addAction(okButton)
            
            let cancelButton = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
            networkIssueController.addAction(cancelButton)
            
            self.presentViewController(networkIssueController, animated: true, completion: nil)// you have to display the alert after you create it
        }

    }
    
    
    
    
    
    //CollectionView functions
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return charactersArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("characterCell", forIndexPath: indexPath) as CharacterCollectionViewCell
        
        cell.imageView.image = charactersArray[indexPath.item].icon
        cell.imageView.alpha = 1.0
        cell.layer.masksToBounds = true //make sure everything in the cell is bound to the mask
        cell.layer.cornerRadius = 5 //set a rounded corner radius
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println("selected the \(charactersArray[indexPath.item].name!) character cell")
        let cell = collectionView.cellForItemAtIndexPath(indexPath)
        
        
        currentCharacter = charactersArray[indexPath.item]
        characterLabel.text = charactersArray[indexPath.item].name!
        cell?.backgroundColor = UIColor(red: 254/255.0, green: 179/255.0, blue: 41/255.0, alpha: 0.5)
        
    }
    
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        println("deselected the \(charactersArray[indexPath.item].name!) character cell")
        let cell = collectionView.cellForItemAtIndexPath(indexPath)
        cell?.backgroundColor = UIColor.clearColor()
    }
    
    
    

}
