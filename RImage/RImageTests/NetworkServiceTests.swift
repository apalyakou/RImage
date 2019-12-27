//
//  NetworkServiceTests.swift
//  RImageTests
//
//  Created by ws-067-41b on 12/27/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import XCTest
import UIKit

class NetworkServiceTests: XCTestCase {

    func testLoadImage() {
        let url = URL(string: "stub/url")!
        let imageDataStub = UIImage(systemName: "remote_image")?.jpegData(compressionQuality: 1)
        let networkService = NetworkServiceStub()
        
        networkService.load(url: url, completion: { data in
            XCTAssertEqual(data, imageDataStub)
        })
    }
}
