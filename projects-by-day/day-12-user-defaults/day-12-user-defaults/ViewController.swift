//
//  ViewController.swift
//  day-12-user-defaults
//
//  Created by kinnerapriyap on 2019/12/06.
//  Copyright © 2019 kinnerapriyap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "UseTouchID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        let arr = ["Hello", "World"]
        defaults.set(arr, forKey: "SavedArray")

        let dic = ["Name": "Paul", "Country": "UK"]
        defaults.set(dic, forKey: "SavedDict")
        
        let array = defaults.object(forKey:"SavedArray") as? [String] ?? [String]()
        let dict = defaults.object(forKey: "SavedDict") as? [String: String] ?? [String: String]()
        
        print(arr.elementsEqual(array))
    }


}

