//
//  UIBarButton+Extensions.swift
//  MVVMSinaweibo
//
//  Created by liuyanchi on 2018/5/21.
//  Copyright © 2018年 yidaoyongche. All rights reserved.
//

import Foundation

extension UIBarButtonItem {
    convenience init(title:String,fontSize:CGFloat = 16,target:Any?,selector:Selector,isBack:Bool = false) {
        
        let button:UIButton = UIButton.cz_textButton(title, fontSize: fontSize, normalColor: UIColor.gray, highlightedColor: UIColor.orange)
        button.addTarget(target, action: selector, for:.touchUpInside)
        if isBack {
            button.setImage(UIImage.init(named: "navigationbar_back_withtext"), for:.normal)
            button.setImage(UIImage.init(named: "navigationbar_back_withtext_highlighted"), for:.highlighted)
            button.sizeToFit()
        }
       self.init(customView: button)
    }
}
