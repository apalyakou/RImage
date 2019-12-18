//
//  RImage.swift
//  RImage
//
//  Created by Anton Polyakov on 12/14/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import SwiftUI

struct RImage: View {

    @ObservedObject var viewModel = RImageViewModel()

    var body: some View {
        Image(viewModel.image)
    }
}

