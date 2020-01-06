//
//  ViewController.swift
//  day-27-core-graphics
//
//  Created by kinnerapriyap on 2020/01/06.
//  Copyright © 2020 kinnerapriyap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var currentDrawType = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        drawRectangle()
    }
    
    func drawRectangle() {

    }

    @IBAction func redrawTapped(_ sender: Any) {
        currentDrawType += 1

        if currentDrawType > 5 {
            currentDrawType = 0
        }

        switch currentDrawType {
        case 0:
            drawRectangle()

        default:
            break
        }
    }
}

