//
//  IWLoginViewController.swift
//  swiftGeneric
//
//  Created by apple on 2017/10/23.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

import Alamofire

 let loginV = IWLoginView();
let loginurl = "http://192.168.1.212:8888/plsh/"
let loginName = "user/doLogin"

class IWLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //登录UI

        self.view.addSubview(loginV)
        loginV.snp.makeConstraints { (make) -> Void in

            make.top.bottom.left.right.equalTo(0);
        }
        loginV.loginbtn.addTarget(self, action:#selector(loginEvent), for: .touchUpInside)




    }



    func loginEvent() {

        let URL = loginurl+loginName
        let pdict : [String : Any] = ["Phone":loginV.phoneFiled.text,"tradepwd":loginV.pwdFiled.text,"jgpush":""]


        NSLog("phone==%@", loginV.phoneFiled.text ?? "0");
        NSLog("tradepwd==%@", loginV.pwdFiled.text ?? "0");
        Alamofire.request(URL, method:.post, parameters: pdict).response { (response) in
            print("response = \(String(describing: response.response))")
            print("data = \(String(describing: response.data))")
            //   print("error = \(response.error ?? <#default value#>)")


            if let data = response.data ,
            let utf8string = String(data: data , encoding:.utf8) {
                print("utf8string = \(utf8string)")
            }

        }







    }




    


}
