//
//  Create_Framework.swift
//  Create_Framework
//
//  Created by L on 2018/7/14.
//  Copyright © 2018年 L. All rights reserved.
//

import UIKit

public class Create_Framework {
    
    public static let share = Create_Framework()
    
    public weak var frameworkDelegate: FrameworkDelegate?
    
    public func sdkFunction() {
        let str = "call sdk function"
        print(str)
        frameworkDelegate?.didCallMethod(withString: str)
    }
    
    public func loadSDK_xcassets_Image() -> UIImage? {
        return UIImage(named: "mvp", in: bundle, compatibleWith: nil)
    }
    
    public func loadSDK_Xib_View() -> UIView? {
        return bundle?.loadNibNamed("TestView", owner: nil, options: nil)?.last as? UIView
    }
    
    public func loadSDK_Xib_Controller() -> TestViewController? {
        guard let bundle = bundle else { print("unfind bundle"); return nil }
        return TestViewController(nibName: "TestViewController", bundle: bundle)
    }
    
    private let bundle = Bundle(identifier: "com.bestidear.Create-Framework")
    
}

public protocol FrameworkDelegate: class {
    func didCallMethod(withString string: String)
}

public extension String {
    
    func doubleStr() -> String {
        return "\(self) \(self)"
    }
    
}
