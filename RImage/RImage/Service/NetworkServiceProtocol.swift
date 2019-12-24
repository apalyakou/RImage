//
//  NetworkServiceProtocol.swift
//  RImage
//
//  Created by Anton Polyakov on 12/25/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import Foundation

protocol NetworkServiceProtocol {

    func load(url: URL, completion: @escaping (Data?) -> Void)
}
