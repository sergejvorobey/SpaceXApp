//
//  URLSession.swift
//  SpaceX
//
//  Created by Sergey Vorobey on 06.12.2022.
//

import Foundation

extension URLSessionSetup {
    var sessionManager: URLSessionSetup {
        URLSessionSetup.shared
    }
}

class URLSessionSetup {
    static let shared = URLSessionSetup()
    
    static func configuredURLSession() -> URLSession {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 20
        configuration.timeoutIntervalForResource = 120
        configuration.waitsForConnectivity = true
        configuration.httpMaximumConnectionsPerHost = 5
        configuration.requestCachePolicy = .returnCacheDataElseLoad
        configuration.urlCache = .shared
        return URLSession(configuration: configuration)
    }
    
//    static let countriesWebRepository = RocketAPI(
//        session: configuredURLSession(),
//        baseURL: "https://api.spacexdata.com/v4")
    
//    func getRequest(baseURL: String, endpoint: APICall) {
//        let requestRocket = RocketAPI(
//            session: URLSessionSetup.configuredURLSession(),
//            baseURL: baseURL)//"https://api.spacexdata.com/v4")
//    }
    
//    func get(baseURL: String, endpoint: APICall) {
//        let requestRocket = RocketAPI(
//            session: URLSessionSetup.configuredURLSession(),
//            baseURL: baseURL)
//    }
}
