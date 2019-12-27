//
//  NetworkServiceTests.swift
//  RImageTests
//
//  Created by ws-067-41b on 12/27/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import XCTest
@testable import RImage

class NetworkServiceTests: XCTestCase {

    func testLoadStubImage() {
        let url = URL(string: "stub/url")!
        let imageDataStub = UIImage(systemName: "remote_image")?.jpegData(compressionQuality: 1)
        let networkService = NetworkServiceStub()
        
        networkService.load(url: url, completion: { data in
            XCTAssertEqual(data, imageDataStub)
        })
    }
    
    func testLoadRemoteImage() {
        let url = URL(string: "https://developer.apple.com/assets/elements/icons/swiftui/swiftui-128x128_2x.png")!
        let networkService = NetworkService()
        
        networkService.load(url: url, completion: { data in
            XCTAssertNotNil(data)
        })
    }
}
