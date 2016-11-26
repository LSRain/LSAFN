//
//  ViewController.swift
//  LSAFN
//
//  Created by WangBiao on 2016/11/26.
//  Copyright © 2016年 lsrain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        afnTest()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /* LS_AFN调用 */
    func afnTest() -> Void {
        LS_AFN.sharedTools.requet(method: LS_AFNMethod.get, urlString: "http://www.weather.com.cn/data/sk/101010100.html", parameters: nil, success: { (responsObj) in
            
            // print(responsObj)
        }) { (error) in
            print(error)
        }
    }

}

