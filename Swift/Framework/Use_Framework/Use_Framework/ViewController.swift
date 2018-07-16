//
//  ViewController.swift
//  Use_Framework
//
//  Created by L on 2018/7/14.
//  Copyright © 2018年 L. All rights reserved.
//

import UIKit
import Create_Framework

class ViewController: UIViewController {
    
    let instance = Create_Framework.share
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Test Delegate
        instance.frameworkDelegate = self
        
        // Test function
        instance.sdkFunction()
        
        // Test extension
        let str = "aaa"
        print("extension double str: " + str.doubleStr())
        
        // Test load image
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 10, y: 30, width: 150, height: 150)
        imageView.image = instance.loadSDK_xcassets_Image()
        view.addSubview(imageView)
        
        // Test load xib view
        if let xib_view = instance.loadSDK_Xib_View() {
            xib_view.frame = CGRect(x: 10, y: 200, width: 150, height: 150)
            view.addSubview(xib_view)
        }
        
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Test load xib controller
        if let xib_controller = instance.loadSDK_Xib_Controller() {
            present(xib_controller, animated: true, completion: nil)
        }
    }

}

extension UIViewController: FrameworkDelegate {
    
    public func didCallMethod(withString string: String) {
        print("delegate \(string)")
    }
    
}

