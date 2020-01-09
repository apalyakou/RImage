//
//  ImageServiceStub.swift
//  RImageTests
//
//  Created by Anton Polyakov on 1/10/20.
//  Copyright © 2020 by.anton.paliakou. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

@testable import RImage

class ImageServiceStub: ImageServiceProtocol {

    var loadImageCalled = false

    func load(url: URL, completion: @escaping (Image) -> Void) {
        loadImageCalled = true
    }
}
