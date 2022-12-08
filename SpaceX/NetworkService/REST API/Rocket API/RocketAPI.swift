//
//  RocketAPI.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 06.12.2022.
//

import Foundation
import Combine

protocol RocketAPIRepository: WebRepository {
    func loadRockets(completion: @escaping ([Rocket]) -> Void)
}

struct RocketAPI: RocketAPIRepository {
    var baseURL: String = "https://api.spacexdata.com/v4"
    
    func loadRockets(completion: @escaping ([Rocket]) -> Void) {
        call(endpoint: API.allRockets) { rockets in
            completion(rockets)
        }
    }
}

// MARK: - Endpoints
extension RocketAPI {
    enum API {
        case allRockets
    }
}

extension RocketAPI.API: APICall {
    var path: String {
        switch self {
        case .allRockets:
            return "/rockets"
        }
    }
    var method: String {
        switch self {
        case .allRockets:
            return "GET"
        }
    }
    var headers: [String: String]? {
        return ["Accept": "application/json"]
    }
    func body() throws -> Data? {
        return nil
    }
}
