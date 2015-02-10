//
//  CharactersScreenViewController.swift
//  Zug Zug
//
//  Created by Timothy Walsh on 2/9/15.
//  Copyright (c) 2015 com.ClassicTim. All rights reserved.
//

import UIKit

class CharactersScreenViewController: UIViewController {
    
    var charactersArray: [Character]?
    var backgroundImage: UIImage?
    var collection: UICollectionView?

    @IBOutlet weak var screenBackgound: UIImageView!
    @IBOutlet weak var navBar: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //collection = UICollectionView()
        
        if (backgroundImage != nil) {//set the background image on the screen to the correct banner
            //screenBackgound.image = backgroundImage
        }
        
        navBar.title = "test title"
        if (charactersArray != nil) {
            //this is where we set up the screen
        }
        
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

}
