//
//  NetworkService.swift
//  RImage
//
//  Created by Anton Polyakov on 12/25/19.
//  Copyright © 2019 by.anton.paliakou. All rights reserved.
//

import Foundation

class NetworkService: NetworkServiceProtocol {

    func load(url: URL, completion: @escaping (Data?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                completion(data)
            }
        }.resume()
    }
}
