//
//  UIButton+CoreExtension.swift
//  CRWeiBo
//
//  Created by Corotata on 16/2/17.
//  Copyright © 2016年 Corotata. All rights reserved.
//

import UIKit

extension UIButton
{
    func coroImage (imageName:String) {
        setImage(UIImage(named: imageName), forState: UIControlState.Normal)
    }
    func coroSelectedImage (imageName:String) {
        setImage(UIImage(named: imageName), forState: UIControlState.Selected)
    }
    func coroHighlightedImage (imageName:String) {
        setImage(UIImage(named: imageName), forState: UIControlState.Highlighted)
    }
    
    func coroTitle (title:String) {
        setTitle(title, forState: UIControlState.Normal)
    }
    func coroHighlightedTitle (title:String) {
        setTitle(title, forState: UIControlState.Highlighted)
    }
    func coroSelectedTitle (title:String) {
        setTitle(title, forState: UIControlState.Selected)
    }
    
    func coroBackgroundImage(imageName :String) {
        setBackgroundImage(UIImage(named:imageName), forState: UIControlState.Normal)
    }
    func coroHighlightedBackgroundImage(imageName :String) {
        setBackgroundImage(UIImage(named:imageName), forState: UIControlState.Highlighted)
    }
    func coroSelectedBackgroundImage(imageName :String) {
        setBackgroundImage(UIImage(named:imageName), forState: UIControlState.Selected)
    }

}


