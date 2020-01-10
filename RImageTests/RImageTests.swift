//
//  RImageTests.swift
//  RImageTests
//
//  Created by Anton Polyakov on 12/14/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import XCTest
import SwiftUI
@testable import RImage

class RImageTests: XCTestCase {

    func testCorrectInjectUrl() {
        let imageUrl = URL(string: "stub/url")!
        let view = RImage(url: imageUrl)

        XCTAssertEqual(view.viewModel.url, imageUrl)
        XCTAssertNil(view.viewModel.placeholder)
    }

    func testCorrectInjectAllParams() {
        let imageUrl = URL(string: "stub/url")!
        let placeholderImage = Image(uiImage: UIImage(named: "remote_image", in: Bundle(for: type(of: self)), compatibleWith: nil)!)

        let view = RImage(url: imageUrl, placeholder: placeholderImage)

        XCTAssertEqual(view.viewModel.url, imageUrl)
        XCTAssertEqual(view.viewModel.placeholder, placeholderImage)
    }
}
