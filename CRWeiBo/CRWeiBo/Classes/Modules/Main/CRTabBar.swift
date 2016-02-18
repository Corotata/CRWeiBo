//
//  CRTabBar.swift
//  CRWeiBo
//
//  Created by Corotata on 16/2/17.
//  Copyright © 2016年 Corotata. All rights reserved.
//

import UIKit

class CRTabBar: UITabBar {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let image = UIImage(named: "tabbar_background")
        backgroundColor = UIColor.init(patternImage: image!)
        addSubview(composeButton)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private lazy var composeButton:UIButton = {
        let button = UIButton()
        button.coroImage("tabbar_compose_icon_add")
        button.coroHighlightedImage("tabbar_compose_icon_add_highlighted")
        
        button.coroBackgroundImage("tabbar_compose_button")
        button.coroHighlightedBackgroundImage("tabbar_compose_button_highlighted")
        
        button.frame.size = button.currentBackgroundImage!.size
        return button
    }()
    
    override func layoutSubviews() {
        let width = frame.size.width
        let height = frame.size.height
        
        composeButton.center = CGPoint(x: width/2, y: height/2)
        let buttonY = CGFloat(0);
        let buttonW = CGFloat(width / 5);
        let buttonH = height;
        var index = 0;
        for button in subviews{
            if !button .isKindOfClass(UIControl) || button == composeButton{
                continue;
            }
            let buttonX = buttonW * CGFloat(index > 1 ? index + 1 :index) ;
            button.frame = CGRect(x: buttonX, y: buttonY, width: buttonW, height: buttonH)
            
            index = index + 1 ;
            
        }
    }
    
    
}




