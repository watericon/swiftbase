//
//  BaseViewController.swift
//  swiftGeneric
//
//  Created by apple on 2017/12/26.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func test() {
        NSLog("test 测试")
        ZWLog(message: "111")

    }


    /**
     *  设置 导航栏标题
     *
     *  @param title
     */

    func setNavigationBarTitle(title: String) {

        let customLab = UILabel.init()
        customLab.snp.makeConstraints { (make) -> Void in
            make.left.right.equalTo(0)
            make.height.equalTo(44);
            make.width.equalTo(kScreenWith)
        }
        customLab.textAlignment = NSTextAlignment(rawValue: 1)!
        customLab.text=title;
        self.navigationItem.titleView=customLab

    }
//设置返回按钮
    func setNavbackbtn() {

        let  backbtn = UIButton.init()
        backbtn.setImage(UIImage.init(named:"fanhui" ), for: UIControlState(rawValue: 0))
        backbtn.contentMode = .scaleAspectFit
//
         backbtn.addTarget(self, action: #selector(backPoPtoEvent), for: .touchUpInside)


        self.view.addSubview(backbtn)
        backbtn.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(10);
            make.top.equalTo(20)
            make.width.equalTo(60);
            make.height.equalTo(44);
        }
    }

    func backPoPtoEvent(){

        self.navigationController?.popViewController(animated: true)

    }


}











