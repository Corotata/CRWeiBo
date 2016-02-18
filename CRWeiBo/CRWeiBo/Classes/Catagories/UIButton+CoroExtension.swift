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
    func coro_image (imageName:String) {
        setImage(UIImage(named: imageName), forState: UIControlState.Normal)
    }
    func coro_selectedImage (imageName:String) {
        setImage(UIImage(named: imageName), forState: UIControlState.Selected)
    }
    func coro_highlightedImage (imageName:String) {
        setImage(UIImage(named: imageName), forState: UIControlState.Highlighted)
    }
    
    func coro_title (title:String) {
        setTitle(title, forState: UIControlState.Normal)
    }
    func coro_highlightedTitle (title:String) {
        setTitle(title, forState: UIControlState.Highlighted)
    }
    func coro_selectedTitle (title:String) {
        setTitle(title, forState: UIControlState.Selected)
    }
    
    func coro_backgroundImage(imageName :String) {
        setBackgroundImage(UIImage(named:imageName), forState: UIControlState.Normal)
    }
    func coro_highlightedBackgroundImage(imageName :String) {
        setBackgroundImage(UIImage(named:imageName), forState: UIControlState.Highlighted)
    }
    func coro_selectedBackgroundImage(imageName :String) {
        setBackgroundImage(UIImage(named:imageName), forState: UIControlState.Selected)
    }

}


