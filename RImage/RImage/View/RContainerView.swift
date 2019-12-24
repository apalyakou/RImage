//
//  RContainerView.swift
//  RImage
//
//  Created by Anton Polyakov on 12/25/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import SwiftUI

struct RContainerView: View {

    /// Remote image
    let resultImage: Image?

    /// Placeholder image
    let placeholder: Image?

    var body: some View {
        ZStack {
            if resultImage != nil {
                resultImage
            } else if placeholder != nil {
                placeholder
            } else {
                EmptyView()
            }
        }
    }
}
