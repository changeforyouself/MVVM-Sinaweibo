//
//  YCTabBarVC.swift
//  MVVM-Sinaweibo
//
//  Created by liuyanchi on 2018/5/20.
//  Copyright © 2018年 yidaoyongche. All rights reserved.
//

import UIKit

class YCTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

    setupChildrenController()
    }
}

extension YCTabBarVC {
    
    private func setupChildrenController() -> () {
        
        let array = [
            ["clsName":"YCHomeViewController","title":"首页","imageName":"image"],
        
        ]
        
        var arrayVC = [UIViewController]()
        
        for dict in array {
            arrayVC.append(controller(dict: dict))
        }
        
        viewControllers = arrayVC
        
    }
    
    func controller(dict:[String:String]) -> UIViewController {
        
        guard let clsName = dict["clsName"],
            let title = dict["title"],
//            let imageName = dict["imageName"],


            let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type
        else {
            return UIViewController()
        }

        let vc = cls.init()
        vc.title = title

        let nav = UINavigationController.init(rootViewController: vc)
        
        return nav
    }
    
    
    
}
