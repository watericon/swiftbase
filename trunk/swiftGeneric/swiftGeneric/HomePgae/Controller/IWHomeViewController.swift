//
//  IWHomeViewController.swift
//  swiftGeneric
//
//  Created by apple on 2017/8/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

import Alamofire
import SwiftyJSON
import ObjectMapper

import SDWebImage
import SnapKit
import MJExtension

class bannerM: NSObject {
     var id = ""
     var imgname = ""
     var imgurl = ""
     var name = ""
     var relationtype = ""
     var relationurl = ""
     var subimgurl = ""
     var type = ""
     var typename = ""
     var videourl = ""
}


var bannerList = NSMutableArray()
let jxList = NSMutableArray()
let newGoodsList = NSMutableArray()
let recommGoodsList = NSMutableArray()
let tjList = NSMutableArray()
let xpList = NSMutableArray()
let yxList = NSMutableArray()

let banner = bannerM();


class IWHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.white;
        self.view.backgroundColor=UIColor.init(hexColor: "898989");
     //   self.loadhomedata()
     //   self.Gethomedata()
//        let homeimg = UIImageView();
//        self.view.addSubview(homeimg)

//        let purl = NSURL.init(string: "http://pic4.nipic.com/20091217/3885730_124701000519_2.jpg")
//        homeimg.sd_setImage(with: purl as URL?, placeholderImage: UIImage.init(named: "fenxiang"))
//        homeimg.snp.makeConstraints { (make) -> Void in
//
//            make.top.bottom.left.right.equalTo(0)
//
//        }

        let mang=HttpManfer.init()
        mang.test(a: "1", b: "2")
        let a =  mang.backName(name: "123")
        print(a)
        let dict = ["name":"lnj","age":30] as [String : Any]
        let a1 =  mang.md5Sign(dict: dict as NSDictionary, name: "")

               print(a1)







      //  HttpManfer.test();




    }

    func Gethomedata() {


        let baseurl = "http://paile.shop/plsh/"
        let homeurl = "startPage/getStartPageInfo"
        let homeURL = baseurl + homeurl

        Alamofire.request(homeURL, method: .post, parameters: nil).responseJSON { (response) in

//            response.value;
      //      print(response.value);

            if let error=response.result.error{

                print(error);

            }else {


                let value = response.result.value


                print(value ?? 0);
                let  tmplist
                    = JSON(value)["data"]["bannerList"].array

//                print("111111==",tmplist?.count as Any);

                bannerList =   bannerM.mj_keyValuesArray(withObjectArray: tmplist);



                print("bannerList==",bannerList.count as Any);







            }



        }
    }



    func loadhomedata() {
        let baseurl = "http://192.168.99.212:8888/plsh/"
        let homeurl = "startPage/getStartPageInfo"
        let homeURL = baseurl + homeurl
        Alamofire.request(homeURL, method:.post, parameters: nil).response { (response) in

            if let data = response.data ,
                let utf8string = String(data: data , encoding:.utf8) {
//                print("utf8string = \(utf8string)")


                let json = JSON(data: data).dictionary
                let code = json!["code"]
                let sucess = json!["success"]

                let dict = json!["data"];

                let bannlist = dict!["bannerList"];

                print("code = \(String(describing: code))")
                print("sucess = \(String(describing: sucess))")
                print("数组bannerList = \(bannlist.count)")

            }
        }

    }

}
