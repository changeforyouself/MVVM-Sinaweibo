//
//  YCHomeViewController.swift
//  MVVM-Sinaweibo
//
//  Created by liuyanchi on 2018/5/20.
//  Copyright © 2018年 yidaoyongche. All rights reserved.
//

import UIKit

class YCHomeViewController: YCBaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func setupUI() {
        super.setupUI()
        navItem.leftBarButtonItem = UIBarButtonItem.init(title: "测试", target: self, selector: #selector(buttonClick))
    }
    
    @objc private func buttonClick() {
        let vc = YCDemoViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension YCHomeViewController {
    

    
}
