//
//  ViewController.swift
//  lottery
//
//  Created by 钩钩么么哒 on 15/2/6.
//  Copyright (c) 2015年 钩钩么么哒. All rights reserved.
//

import UIKit

class lotteryViewController: UIViewController {

    var data:[Int] = []
    var label:UILabel?
    var judge:[Bool] = []
    var times:Int = 10;
    var textfield:UITextField?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 1, green: 0.3, blue: 0, alpha: 1)
        addButton()
        addLabel()
        addtextField()
        initdata()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func addtextField(){
        textfield = UITextField(frame: CGRectMake(0, 0, 200, 20))
        textfield?.center = CGPoint(x: self.view.frame.size.width / 2, y: 300)
        textfield?.textAlignment = NSTextAlignment.Center
        textfield?.textColor = UIColor.whiteColor()
        textfield?.placeholder = "想抽多少？"
        self.view.addSubview(textfield!)
    }
    
    func addButton(){
        var button:UIButton = UIButton(frame: CGRectMake(0, 0, 200, 50))
        button.center = CGPoint(x: self.view.frame.size.width / 2, y: 500)
        button.backgroundColor = UIColor.yellowColor()
        button.setTitle("抽奖", forState: UIControlState.Normal)
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        button.addTarget(self, action: "choujiang:", forControlEvents: UIControlEvents.TouchUpInside)
        button.clipsToBounds = true
        button.layer.cornerRadius = 5.0
        self.view.addSubview(button)
    }
    
    func addLabel(){
        label = UILabel(frame: CGRectMake(0, 0, 400, 20))
        label!.center = CGPoint(x: self.view.frame.size.width / 2, y: 200)
        label!.text = "我是萌萌哒抽奖框"
        label?.textColor = UIColor.whiteColor()
        label!.textAlignment = NSTextAlignment.Center
        
        var logo:UILabel = UILabel(frame: CGRectMake(0, 0, 400, 200))
        logo.center = CGPoint(x: self.view.frame.size.width / 2, y: 100)
        logo.text = "2015年师生迎春晚宴"
        logo.textAlignment  = NSTextAlignment.Center
        logo.textColor = UIColor.yellowColor()
        logo.font = UIFont.boldSystemFontOfSize(25)
        logo.shadowColor = UIColor.blackColor()
        logo.shadowOffset = CGSizeMake(0, -2)
        
        self.view.addSubview(logo)
        self.view.addSubview(label!)
    }
    
    func choujiang(sender:UIButton){
        times = textfield!.text.toInt()!
        var randomdata:Int = 0
        var alldata:String = ""
        var count:Int = 0
        for ;count < times;{
            randomdata = Int(arc4random()) % 501
            if judge[randomdata] == true{
                continue
            }else{
                judge[randomdata] == true
                ++count
                alldata += String(data[randomdata]) + " "
            }
            
        }
        label?.text = String(alldata)
    }
    
    
    func initdata(){
        var i = 0;
        for i = 0; i <= 500; ++i{
            data.append(i)
            judge.append(false)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

