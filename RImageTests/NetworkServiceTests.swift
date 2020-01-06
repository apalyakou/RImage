//
//  NetworkServiceTests.swift
//  RImageTests
//
//  Created by Anton Polyakov on 12/27/19.
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
        let url = URL(string: "https://github.com/apalyakou/RImage/blob/master/RImage/RImageTests/Media.xcassets/remote_image.imageset/RemoteImageStub.png")!
        let networkService = NetworkService()
        
        networkService.load(url: url, completion: { data in
            XCTAssertNotNil(data)
        })
    }
}
