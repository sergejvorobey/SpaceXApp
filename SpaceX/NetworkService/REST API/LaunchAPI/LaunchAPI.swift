//
//  LaunchAPI.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 09.12.2022.
//

import Foundation

protocol LaunchAPIRepository: WebRepository {
    func loadLaunches(completion: @escaping ([Launch]) -> Void)
}

struct LaunchAPI: LaunchAPIRepository {
    var baseURL: String = "https://api.spacexdata.com/v4"
    
    func loadLaunches(completion: @escaping ([Launch]) -> Void) {
        call(endpoint: API.allLaunches) { rockets in
            completion(rockets)
        }
    }
}

// MARK: - Endpoints
extension LaunchAPI {
    enum API {
        case allLaunches
    }
}

extension LaunchAPI.API: APICall {
    var path: String {
        switch self {
        case .allLaunches:
            return "/launches"
        }
    }
    var method: String {
        switch self {
        case .allLaunches:
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
