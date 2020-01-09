//
//  RImageViewModelTests.swift
//  RImageTests
//
//  Created by Anton Polyakov on 1/10/20.
//  Copyright © 2020 by.anton.paliakou. All rights reserved.
//

import XCTest
@testable import RImage

class RImageViewModelTests: XCTestCase {

    func testLoadImage() {
        let url = URL(string: "https://github.com/")!
        let imageServiceStub = ImageServiceStub()
        let viewModel = RImageViewModel(url: url, imageService: imageServiceStub)

        XCTAssertFalse(imageServiceStub.loadImageCalled)

        viewModel.loadImage()

        XCTAssertTrue(imageServiceStub.loadImageCalled)
    }
}
