//
//  YCCustomBarButton.swift
//  MVVMSinaweibo
//
//  Created by liuyanchi on 2018/5/21.
//  Copyright © 2018年 yidaoyongche. All rights reserved.
//

import UIKit

class YCCustomBar: UINavigationBar {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 64)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        for view:UIView in subviews {
            if(NSStringFromClass(view.classForCoder).contains("Background")){
                view.frame = bounds
            }else if(NSStringFromClass(view.classForCoder).contains("ContentView")){
                if #available(iOS 11.0, *) {
                    view.frame = CGRect.init(x: bounds.origin.x, y: 20, width: bounds.size.width, height: bounds.size.height - 20)
                }
            }
        }
    }
}
