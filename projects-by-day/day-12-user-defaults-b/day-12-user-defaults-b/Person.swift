//
//  Person.swift
//  day-10-names-to-faces
//
//  Created by kinnerapriyap on 2019/12/02.
//  Copyright © 2019 kinnerapriyap. All rights reserved.
//

import UIKit

class Person: NSObject, Codable {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
