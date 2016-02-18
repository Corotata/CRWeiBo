//
//  CRNavigationController.swift
//  CRWeiBo
//
//  Created by Corotata on 16/2/18.
//  Copyright © 2016年 Corotata. All rights reserved.
//

import UIKit

class CRNavigationController: UINavigationController {

    override class func initialize(){
        super.initialize()
    }
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        if(self.childViewControllers.count > 0){
            viewController.hidesBottomBarWhenPushed = true;
        }
        super.pushViewController(viewController, animated: animated)
    }
}


