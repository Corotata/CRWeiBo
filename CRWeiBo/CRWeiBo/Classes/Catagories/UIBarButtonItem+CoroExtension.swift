//
//  UIBarButtonItem+CoroExtension.swift
//  CRWeiBo
//
//  Created by Corotata on 16/2/18.
//  Copyright © 2016年 Corotata. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    class func coro_createBarButtonItem(imageName:String,highlightedImageName:String,target:AnyObject?,action:Selector) ->UIBarButtonItem{
        let button = UIButton.init(type: UIButtonType.Custom);
        button.coro_image(imageName)
        button.coro_highlightedImage(highlightedImageName)
        
        button.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        button.frame.size = (button.currentImage?.size)!
        button.addTarget(target, action: action, forControlEvents: UIControlEvents.TouchUpInside)
        
        return UIBarButtonItem.init(customView: button)
    }
}