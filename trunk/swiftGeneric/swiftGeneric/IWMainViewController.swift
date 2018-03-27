//
//  IWMainViewController.swift
//  swiftGeneric
//
//  Created by apple on 2017/8/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit
import ReachabilitySwift
import MJRefresh

class IWMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()


        addChildViewController(childVc: IWHomeViewController(), title: "首页", imageName:"tabbar_home" )
            addChildViewController(childVc: IWShopBuyViewController(), title: "买东西", imageName:"tabbar_message_center" )
            addChildViewController(childVc: IWHomeViewController(), title: "个人中心", imageName:"tabbar_mine" )

    }

 
    private  func addChildViewController(childVc: UIViewController,title:String,imageName:String) {
        childVc.title=title;
        childVc.tabBarItem
            .image=UIImage(named:imageName);
        childVc.tabBarItem.selectedImage=UIImage(named:imageName+"_highlighted")
        let childNav = UINavigationController(rootViewController: childVc)
        addChildViewController(childNav)


    }


    override func viewWillAppear(_ animated: Bool) {


          IWReachability.CheckNetWork()

    }





     


}
