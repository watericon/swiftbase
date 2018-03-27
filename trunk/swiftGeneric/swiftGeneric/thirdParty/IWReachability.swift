//
//  IWReachability.swift
//  swiftGeneric
//
//  Created by apple on 2017/8/2.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit
import ReachabilitySwift

class IWReachability: NSObject {


  static  func CheckNetWork()  {

    let reachability = Reachability()!

    reachability.whenReachable = { reachability in
        // this is called on a background thread, but UI updates must
        // be on the main thread, like this:
        DispatchQueue.main.async {
            if reachability.isReachableViaWiFi {
                print("Reachable via WiFi")
            } else {
                print("Reachable via Cellular")
            }
        }
    }
    reachability.whenUnreachable = { reachability in
        // this is called on a background thread, but UI updates must
        // be on the main thread, like this:
        DispatchQueue.main.async {
            print("Not reachable")


        }
    }

    do {
        try reachability.startNotifier()
    } catch {
        print("Unable to start notifier")
    }


    }





}
