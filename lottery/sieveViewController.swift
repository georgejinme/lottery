//
//  sieveViewController.swift
//  lottery
//
//  Created by 钩钩么么哒 on 15/7/19.
//  Copyright (c) 2015年 钩钩么么哒. All rights reserved.
//

import Foundation
import UIKit
import CoreMotion

class sieveViewController:UIViewController{
    var diceImageView:UIImageView?
    var motionManager:CMMotionManager?
    var queue:NSOperationQueue?
    
    var diceImage = ["one", "two", "three", "four", "five", "six"]
    
    override func viewDidLoad() {
        super.viewDidLoad();
        addlogo()
        addInstruction()
        addDice()
        addMotion()
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
    
    func addDice(){
        diceImageView = UIImageView(frame: CGRectMake(0, 0, 100, 100))
        diceImageView?.center = CGPoint(x: self.view.frame.size.width / 2, y: 300)
        diceImageView?.image = UIImage(named: diceImage[0])
        self.view.addSubview(diceImageView!)
    }
    
    func addMotion(){
        motionManager = CMMotionManager()
        queue = NSOperationQueue()
        if (motionManager!.accelerometerAvailable){
            self.motionManager?.accelerometerUpdateInterval = 0.1
            self.motionManager?.startAccelerometerUpdatesToQueue(queue, withHandler: {(accelerometerData, error) in
                if (error != nil){
                    self.motionManager?.stopAccelerometerUpdates()
                }else{
                    var x = accelerometerData.acceleration.x
                    var y = accelerometerData.acceleration.y
                    var z = accelerometerData.acceleration.z
                    if (fabs(x) > 2.0 || fabs(y) > 2.0 || fabs(z) > 2.0){
                        dispatch_sync(dispatch_get_main_queue(), {
                            self.diceImageView?.image = UIImage(named: self.diceImage[1])
                        })
                    }
                }
                
            })
        }
    }
    
    func beginDiceChoice(){
        
    }
    
    
}