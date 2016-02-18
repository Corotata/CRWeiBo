//
//  CRTabBarController.swift
//  CRWeiBo
//
//  Created by Corotata on 16/2/17.
//  Copyright © 2016年 Corotata. All rights reserved.
//

import UIKit

class CRTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addChildViewControllers()
        setValue(CRTabBar.init(), forKey: "tabBar")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    private func addChildViewControllers(){
        let jsonPath = NSBundle.mainBundle().pathForResource("MainVCSettings", ofType: "json");
        
        let jsonData = NSData(contentsOfFile: jsonPath!)
        
        do{
            let dictArray = try NSJSONSerialization.JSONObjectWithData(jsonData!, options: NSJSONReadingOptions.MutableContainers)
            
            for dict in dictArray as! [[String : String]]
            {
                setupChildViewController(dict["vcName"]!, title: dict["title"]!, imageName: dict["imageName"]!)
            }
        }
        catch{
            setupChildViewController("CRHomeViewController", title: "首页", imageName: "tabbar_home")
            setupChildViewController("CRMessageViewController", title: "消息", imageName: "tabbar_message_center")
            setupChildViewController("CRDiscoverViewController", title: "发现", imageName: "tabbar_discover")
            setupChildViewController("CRProfileViewController", title: "我", imageName: "tabbar_profile")

        }
    }
    
    private func setupChildViewController(childControllerName: String, title: String,imageName: String){
        
        //用mainBundle中取出工程名，因为swift存在命名空间，类似C#，所以类的实际名称为：命名空间.类名的形式，所以要以类名动态生成类，则需要拼出其完整名称，再通过NSClassFromString方法进行转化
        let namespace = NSBundle.mainBundle().infoDictionary!["CFBundleExecutable"] as! String
        print(namespace)
        
        let cls:AnyClass = NSClassFromString(namespace + "." + childControllerName)!
        print(cls)
        
        let vcCls = cls as! UIViewController.Type
        let childController = vcCls.init()
        
        //配置基本属性
        childController.title = title
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        let navigaionController = CRNavigationController.init(rootViewController: childController)
        addChildViewController(navigaionController)
    }
    
}
