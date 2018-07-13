//
//  ViewController.swift
//  Use_Framework
//
//  Created by L on 2018/7/13.
//  Copyright © 2018年 L. All rights reserved.
//

import UIKit
import Create_Framework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TestFramework.share.sdkFunction()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

