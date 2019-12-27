//
//  UIImageExtension.swift
//  RImageTests
//
//  Created by Anton Polyakov on 12/27/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import UIKit

extension UIImage {
    
    static func ==(lhs: UIImage, rhs: UIImage) -> Bool {
        return lhs.pngData() == rhs.pngData()
    }
}
