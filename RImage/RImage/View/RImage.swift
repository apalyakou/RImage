//
//  RImage.swift
//  RImage
//
//  Created by Anton Polyakov on 12/14/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import SwiftUI

public struct RImage: View {

    @ObservedObject var viewModel: RImageViewModel

    public var body: some View {
        RContainerView(resultImage: viewModel.image,
                       placeholder: viewModel.placeholder)
        .onAppear(perform: {
            self.viewModel.loadImage()
        })
    }

    ///
    /// - Parameters:
    ///   - url: Required. Remote image url
    ///   - placeholder: Optional. Placeholder image for loading process
    init(url: URL, placeholder: Image? = nil) {
        self.viewModel = RImageViewModel(url: url, placeholder: placeholder)
    }
}

