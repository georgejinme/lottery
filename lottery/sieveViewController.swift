//
//  sieveViewController.swift
//  lottery
//
//  Created by 钩钩么么哒 on 15/7/19.
//  Copyright (c) 2015年 钩钩么么哒. All rights reserved.
//

import Foundation
import UIKit
class sieveViewController:UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad();
        addlogo()
        addInstruction()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    func addlogo(){
        var logo:UILabel = UILabel(frame: CGRectMake(0, 0, 400, 100))
        logo.center = CGPoint(x: self.view.frame.size.width / 2, y: 60)
        logo.text = "掷骰子"
        logo.textAlignment  = NSTextAlignment.Center
        logo.textColor = UIColor.redColor()
        logo.font = UIFont.boldSystemFontOfSize(28)
        self.view.addSubview(logo)
    }
    
    func addInstruction(){
        var inst:UILabel = UILabel(frame: CGRectMake(0, 0, 400, 200))
        inst.center = CGPoint(x: self.view.frame.size.width / 2, y: 160)
        inst.text = "摇一摇手机，让骰子动起来!"
        inst.textAlignment  = NSTextAlignment.Center
        inst.textColor = UIColor.grayColor()
        inst.font = UIFont.boldSystemFontOfSize(14)
        self.view.addSubview(inst)
    }
}