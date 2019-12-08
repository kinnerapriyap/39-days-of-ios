//
//  Capital.swift
//  day-16-capital-cities
//
//  Created by kinnerapriyap on 2019/12/08.
//  Copyright © 2019 kinnerapriyap. All rights reserved.
//

import MapKit
import UIKit

class Capital: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String

    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
}
