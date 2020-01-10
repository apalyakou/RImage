//
//  RImageViewModel.swift
//  RImage
//
//  Created by Anton Polyakov on 12/14/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import SwiftUI

class RImageViewModel: ObservableObject {

    /// Result remote image
    @Published var image: Image?

    /// Placeholder image
    @Published var placeholder: Image?

    /// Remote image url
    let url: URL

    /// Image service
    private let imageService: ImageServiceProtocol

    ///
    /// - Parameters:
    ///   - url: Remote image url
    ///   - placeholder: Placeholder image
    ///   - imageService: Image service
    init(url: URL, placeholder: Image? = nil, imageService: ImageServiceProtocol = ImageService(networkService: NetworkService())) {
        self.url = url
        self.placeholder = placeholder
        self.imageService = imageService
    }

    /// Load  image by url
    func loadImage() {
        imageService.load(url: url) { [weak self] image in
            self?.image = image
        }
    }
}
