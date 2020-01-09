//
//  ImageServiceTests.swift
//  RImageTests
//
//  Created by Anton Polyakov on 12/31/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import XCTest
import SwiftUI
import UIKit

@testable import RImage

class ImageServiceTests: XCTestCase {

    func testLoadRemoteImage() {
        let url = URL(string: "https://github.com/apalyakou/RImage/blob/master/RImage/RImageTests/Media.xcassets/remote_image.imageset/RemoteImageStub.png")!
        let resultImage = Image(uiImage: UIImage(named: "remote_image", in: Bundle(for: type(of: self)), compatibleWith: nil)!)

        let imageService = ImageService(networkService: NetworkService())

        imageService.load(url: url, completion: { image in
            XCTAssertEqual(image, resultImage)
        })
    }
}
