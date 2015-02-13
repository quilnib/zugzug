//
//  PushFromLeftSegue.swift
//  Zug Zug
//
//  Created by Tim Walsh on 2/12/15.
//  Copyright (c) 2015 com.ClassicTim. All rights reserved.
//

import UIKit
import QuartzCore

@objc(PushFromLeftSegue)

class PushFromLeftSegue: UIStoryboardSegue {
    override func perform() {
        
        var sourceViewController = self.sourceViewController as UIViewController
        var destinationViewController = self.destinationViewController as UIViewController
        
        var transition: CATransition = CATransition()
        
        transition.duration = 0.25
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionPush; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
        transition.subtype = kCATransitionFromLeft; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
        
        sourceViewController.navigationController?.view.layer.addAnimation(transition, forKey: "kCATransition")
        sourceViewController.navigationController?.pushViewController(destinationViewController, animated: false)
        
    }
}