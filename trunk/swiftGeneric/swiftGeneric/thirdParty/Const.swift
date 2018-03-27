//
//  Const.swift
//  ZW_Swift
//
//  Created by zeroing on 2017/7/8.
//  Copyright © 2017年 com.qq-app.appid. All rights reserved.
//

import UIKit

let mainColor = "898989".Color()

func ZWLog<T>(message : T, file : String = #file, lineNumber : Int = #line) {
    
    #if DEBUG

        let fileName = (file as NSString).lastPathComponent
        print("[\(fileName):line:\(lineNumber)]- \(message)")
        
    #endif
}



extension UIView {
    // MARK: View的扩展分类
    var minX: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            self.frame.origin.x = newValue
        }
    }
    var minY: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            self.frame.origin.y = newValue
        }
    }
    var maxX: CGFloat {
        get {
            return self.frame.maxX
        }
    }
    var maxY: CGFloat {
        get {
            return self.frame.maxY
        }
    }
    var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set(newValue) {
            self.frame.size.width = newValue
        }
    }
    var height: CGFloat {
        get {
            return self.frame.size.width
        }
        set(newValue) {
            self.frame.size.height = newValue
        }
    }
}

extension UIBarButtonItem {
    
    // MARK: UIBarButtonItem扩展分类
    
    convenience init(imageName : String, highImageName : String, size : CGSize, target : AnyObject, action : Selector){
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: imageName), for: .normal)
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        if size == CGSize.zero{
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        btn.addTarget(target, action: action, for: .touchUpInside)
        self.init(customView: btn)
    }
}

extension String {
    // MARK: String的扩展分类
    /// 将十六进制颜色转换为UIColor
    func Color() -> UIColor {
        // 存储转换后的数值
        var red:UInt32 = 0, green:UInt32 = 0, blue:UInt32 = 0
        
        // 分别转换进行转换
        Scanner(string: self[0..<2]).scanHexInt32(&red)
        
        Scanner(string: self[2..<4]).scanHexInt32(&green)
        
        Scanner(string: self[4..<6]).scanHexInt32(&blue)
        
        return UIColor(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1.0)
    }
    
    
    /// String使用下标截取字符串
    /// 例: "示例字符串"[0..<2] 结果是 "示例"
    subscript (r: Range<Int>) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
            let endIndex = self.index(self.startIndex, offsetBy: r.upperBound)
            
            return self[startIndex..<endIndex]
        }
    }
}

extension UIColor {
    
    // MARK:  UIColor扩展分类
    /// 用十六进制颜色创建UIColor
    ///
    /// - Parameter hexColor: 十六进制颜色 (0F0F0F)
    convenience init(hexColor: String) {
        
        // 存储转换后的数值
        var red:UInt32 = 0, green:UInt32 = 0, blue:UInt32 = 0
        
        // 分别转换进行转换
        Scanner(string: hexColor[0..<2]).scanHexInt32(&red)
        
        Scanner(string: hexColor[2..<4]).scanHexInt32(&green)
        
        Scanner(string: hexColor[4..<6]).scanHexInt32(&blue)
        
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1.0)
    }
}













