//
//  CharacterCollectionViewCell.swift
//  Zug Zug
//
//  Created by Tim Walsh on 2/11/15.
//  Copyright (c) 2015 com.ClassicTim. All rights reserved.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    
    let imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView(frame: CGRect(x: 25, y: 29, width: 46, height: 38))
        imageView.contentMode = UIViewContentMode.Center
        imageView.alpha = 1.0
        contentView.addSubview(imageView)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
}
