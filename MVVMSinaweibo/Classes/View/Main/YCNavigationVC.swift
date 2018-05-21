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
}

extension YCNavigationVC {
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
}
