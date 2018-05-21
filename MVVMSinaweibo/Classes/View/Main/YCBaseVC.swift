//
//  YCBaseVC.swift
//  MVVM-Sinaweibo
//
//  Created by liuyanchi on 2018/5/20.
//  Copyright © 2018年 yidaoyongche. All rights reserved.
//

import UIKit

class YCBaseVC: UIViewController {
    
    lazy var customBar:UINavigationBar = YCCustomBar()
    
    lazy var navItem = UINavigationItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override var title: String?{
        didSet {
            navItem.title = title
        }
    }

   @objc func setupUI() {
        view.backgroundColor = UIColor.cz_random()
        view.addSubview(customBar)
        customBar.items = [navItem]
    }

}
