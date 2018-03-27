//
//  HttpManfer.swift
//  swiftGeneric
//
//  Created by apple on 2018/1/8.
//  Copyright © 2018年 apple. All rights reserved.
//

import UIKit


class HttpManfer: NSObject {
    func test(a:String,b:String)  {

        print("aaaaa");

    }

    func backName(name:String) -> String {


        return name
    }


    func md5String(str:String) -> String{
        let cStr = str.cString(using: String.Encoding.utf8);
        let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: 16)
        CC_MD5(cStr!,(CC_LONG)(strlen(cStr!)), buffer)
        let md5String = NSMutableString();
        for i in 0 ..< 16{
            md5String.appendFormat("%02x", buffer[i])
        }
        free(buffer)
        return md5String as String
    }


    func md5Sign(dict:NSDictionary, name:String) -> String{
        let contentList = NSMutableArray.init()

        for (key,value) in dict {
         //   print("\(key) : \(value)")
            let tmp = "\(key)\("=")\(value)"

            contentList.add(tmp)

        }
        //排序
//        let nembers =  contentList.sortedArray({ (<#Any#>, <#Any#>, <#UnsafeMutableRawPointer?#>) -> Int in
//            <#code#>
//        }, context: <#T##UnsafeMutableRawPointer?#>, hint: <#T##Data?#>)



//        contentList.sort(options: <#T##NSSortOptions#>) { (<#Any#>, <#Any#>) -> ComparisonResult in
//            <#code#>
//        }




        let ss = "1"
       return ss

    }





}
