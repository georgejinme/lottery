//
//  mainTab.swift
//  lottery
//
//  Created by 钩钩么么哒 on 15/7/19.
//  Copyright (c) 2015年 钩钩么么哒. All rights reserved.
//

import Foundation
import UIKit
class mainTabBar:UITabBarController{
    override func viewDidLoad() {
        super.viewDidLoad();
        self.tabBar.barTintColor = UIColor.whiteColor()
        
        var nav1 = lotteryViewController()
        self.addChildViewController(nav1)
        nav1.tabBarItem.title = "抽奖"
        nav1.tabBarItem.image = UIImage(named: "money")
        
        var nav2 = sieveViewController()
        self.addChildViewController(nav2)
        nav2.tabBarItem.image = UIImage(named: "dice")
        nav2.tabBarItem.title = "掷骰子"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}