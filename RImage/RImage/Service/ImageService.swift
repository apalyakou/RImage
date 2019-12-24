//
//  ImageService.swift
//  RImage
//
//  Created by Anton Polyakov on 12/25/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

class ImageService: ImageServiceProtocol {

    private let networkService: NetworkServiceProtocol

    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }

    func load(url: URL, completion: @escaping (Image) -> Void) {
        networkService.load(url: url) { data in
            guard let data = data, let uiImage = UIImage(data: data) else { return }
            completion(Image(uiImage: uiImage))
        }
    }
}
