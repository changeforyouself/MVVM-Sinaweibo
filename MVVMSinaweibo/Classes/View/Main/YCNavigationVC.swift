//
//  YCNavigationVC.swift
//  MVVM-Sinaweibo
//
//  Created by liuyanchi on 2018/5/20.
//  Copyright © 2018年 yidaoyongche. All rights reserved.
//

import UIKit

class YCNavigationVC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isHidden = true
    }
    
  @objc private func popBackFunc(){
        popViewController(animated: true)
    }
}

extension YCNavigationVC {
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            
            if let vc = viewController as? YCBaseVC {
                
                var title:String = "返回"
                if childViewControllers.count == 1 {
                     title = childViewControllers.first?.title ?? "返回"
                }
                
                vc.navItem.leftBarButtonItem = UIBarButtonItem.init(title: title, target: self, selector: #selector(popBackFunc), isBack:true)
            }
        }
        super.pushViewController(viewController, animated: animated)
    }
}
