//
//  PubgClient.swift
//  PUBG
//
//  Created by Shohei Ohno on 2018/04/08.
//  Copyright © 2018年 Shohei Ohno. All rights reserved.
//

import Foundation

final class PubgClient {
    static let session: URLSession = URLSession.shared

    static func request<T: Codable>(requestType: RequestType, regionType: RegionType, completionHandler: @escaping (T?, Bool) -> Void) {
        guard let url = URL(string: "https://api.playbattlegrounds.com/shards/\(regionType.string)\(requestType.path)") else {
            completionHandler(nil, false)
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = requestType.method
        request.setValue("Bearer \(GlobalConst.apiKey)", forHTTPHeaderField: "Authorization")
        request.setValue("application/vnd.api+json", forHTTPHeaderField: "Accept")

        session.dataTask(with: request) { (data, response, error) in
            do {
                let data = try? JSONDecoder().decode(T.self, from: data ?? Data())
                completionHandler(data, true)
            } catch let error {
                print("Error = \(error)")
                completionHandler(nil, false)
            }
        }.resume()
    }
}
