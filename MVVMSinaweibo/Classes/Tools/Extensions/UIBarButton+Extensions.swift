//
//  UIBarButton+Extensions.swift
//  MVVMSinaweibo
//
//  Created by liuyanchi on 2018/5/21.
//  Copyright © 2018年 yidaoyongche. All rights reserved.
//

import Foundation

extension UIBarButtonItem {
    convenience init(title:String,fontSize:CGFloat = 16,target:Any?,selector:Selector) {
        let button:UIButton = UIButton.cz_textButton("测试", fontSize: fontSize, normalColor: UIColor.gray, highlightedColor: UIColor.orange)
        button.addTarget(target, action: selector, for:.touchUpInside)
       self.init(customView: button)
    }
}
