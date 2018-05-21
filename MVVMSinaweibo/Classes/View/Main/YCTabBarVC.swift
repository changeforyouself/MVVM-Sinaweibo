//
//  YCTabBarVC.swift
//  MVVM-Sinaweibo
//
//  Created by liuyanchi on 2018/5/20.
//  Copyright © 2018年 yidaoyongche. All rights reserved.
//

import UIKit

class YCTabBarVC: UITabBarController {
    
    lazy var composeButton:UIButton = UIButton.cz_imageButton("tabbar_compose_icon_add", backgroundImageName: "tabbar_compose_button")

    override func viewDidLoad() {
        super.viewDidLoad()

        setupChildrenController()
        composeButtonFunc()
        
    }
    
  @objc private func composeButtonClick(button:UIButton){
        
    }
    
}

extension YCTabBarVC {
    
   private func composeButtonFunc() {
    tabBar.addSubview(composeButton)
    let w:CGFloat = tabBar.bounds.width / CGFloat(childViewControllers.count) - 1
    composeButton.frame = tabBar.bounds.insetBy(dx: w * 2, dy: 0)
    composeButton.addTarget(self, action: #selector(composeButtonClick(button:)), for: .touchUpInside)
    }
    
    private func setupChildrenController() -> () {
        let array = [
            ["clsName":"YCHomeViewController","title":"首页","imageName":"home"],
            ["clsName":"YCDiscoverViewController","title":"发现","imageName":"discover"],
            ["clsName":"UIViewController"],
            ["clsName":"YCMessageViewController","title":"消息","imageName":"message_center"],
            ["clsName":"YCProfileViewController","title":"我的","imageName":"profile"],
        
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
            let imageName = dict["imageName"],
            let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type
        else {
            return UIViewController()
        }

        let vc = cls.init()
        vc.title = title
        vc.tabBarItem.image = UIImage.init(named: "tabbar_"+imageName)
        vc.tabBarItem.selectedImage = UIImage.init(named: "tabbar_"+imageName+"_selected")
        vc.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14)], for: .normal)
        vc.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.orange], for: .selected)
        
        let nav = YCNavigationVC.init(rootViewController: vc)
        
        return nav
    }
}
