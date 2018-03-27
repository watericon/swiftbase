//
//  IWLoginView.swift
//  swiftGeneric
//
//  Created by apple on 2017/10/25.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

import SnapKit

class IWLoginView: UIView {

    var phoneFiled = PLTextFiled();
    var pwdFiled = PLTextFiled();
    let loginbtn = UIButton();
    var logoimg = UIImageView();





    override init(frame: CGRect) {

     super.init(frame: frame)

        self.addSubview(logoimg);
        self.addSubview(phoneFiled);
        self.addSubview(pwdFiled);
        self.addSubview(loginbtn);
        logoimg.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(50)
            make.top.equalTo(100);
            make.left.equalTo(0);
            make.right.equalTo(0);

        }

        phoneFiled.snp.makeConstraints { (make) -> Void in

            make.left.equalTo(10);
            make.right.equalTo(-10);
            make.top.equalTo(logoimg.snp.bottom).offset(50)
        }

        pwdFiled.snp.makeConstraints { (make) -> Void in

            make.left.equalTo(10);
            make.right.equalTo(-10);
            make.top.equalTo(phoneFiled.snp.bottom).offset(50)

        }

        loginbtn.snp.makeConstraints { (make) -> Void in

            make.left.equalTo(10)
            make.right.equalTo(-10)
            make.top.equalTo(pwdFiled.snp.bottom).offset(30);
            make.height.equalTo(50)

        }


        self.backgroundColor = UIColor.white
        self.logoimg.image = UIImage(named:"Paboutubiao")
        self.logoimg.contentMode = .scaleAspectFit
        self.phoneFiled.placeholder = "请输入手机号，微信已登录适用"
        //        self.phoneFiled.font = UIFont.f
        self.phoneFiled.font=UIFont(name:"",size:13);

        self.pwdFiled.placeholder = "密码"
        self.loginbtn.setTitle("登录", for: .normal)
        self.loginbtn.setTitleColor(UIColor.white, for: .normal)
        self.loginbtn.backgroundColor=UIColor.red
        self.loginbtn.layer.cornerRadius=6
        self.loginbtn.layer.masksToBounds = true









    }

    required init?(coder aDecoder: NSCoder) {
 fatalError("init(coder:) has not been implemented")
    }

}
