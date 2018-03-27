//
//  PLTextFiled.swift
//  swiftGeneric
//
//  Created by apple on 2017/10/25.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class PLTextFiled: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)

    }

    required init?(coder aDecoder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
    }

    override func draw(_ rect: CGRect) {


        let context = UIGraphicsGetCurrentContext()

        context!.setFillColor(UIColor.red.cgColor)
        context?.fill(CGRect(x: 0, y: self.frame.size.height-1, width: self.frame.size.width, height: 1))



//        CGContextFillRect(context!, CGRectMake(0, CGRectGetHeight(self.frame)-1, CGRectGetWidth(self.frame), 1))

    }

}

