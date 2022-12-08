//
//  NetworkService.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 06.12.2022.
//

import Foundation

protocol WebRepository {
    var baseURL: String { get }
}

extension WebRepository {
    func call<T: Decodable>(endpoint: APICall, completion: @escaping ([T]) -> Void) {
        
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 20
        configuration.timeoutIntervalForResource = 120
        configuration.waitsForConnectivity = true
        configuration.httpMaximumConnectionsPerHost = 5
        configuration.requestCachePolicy = .returnCacheDataElseLoad
        configuration.urlCache = .shared
        let session = URLSession(configuration: configuration)
        
        do {
            let request = try endpoint.urlRequest(baseURL: baseURL)
            session.dataTask(with: request) { data, res, err in
                do {
                    if let data = data {
                        let result = try JSONDecoder().decode([T].self, from: data)
                        completion(result)
                    } else {
                        debugPrint(err?.localizedDescription ?? "No data")
                    }
                } catch let error {
                    debugPrint(error.localizedDescription)
                }
            }
            .resume()
        } catch let error {
            debugPrint(error.localizedDescription)
        }
    }
}
