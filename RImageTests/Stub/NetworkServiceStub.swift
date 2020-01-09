//
//  NetworkServiceStub.swift
//  RImageTests
//
//  Created by Anton Polyakov 12/27/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import Foundation
import UIKit
@testable import RImage

class NetworkServiceStub: NetworkServiceProtocol {
    
    func load(url: URL, completion: @escaping (Data?) -> Void) {
        let remoteImage = UIImage(named: "remote_image", in: Bundle(for: type(of: self)), compatibleWith: nil)
        let remoteImageData = remoteImage?.jpegData(compressionQuality: 1)
        completion(remoteImageData)
    }
}
