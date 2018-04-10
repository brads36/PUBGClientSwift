//
//  RequestType.swift
//  PUBG
//
//  Created by Shohei Ohno on 2018/04/08.
//  Copyright © 2018年 Shohei Ohno. All rights reserved.
//

import Foundation

enum RequestType {
    case playerWithId(String)
    case playerWithIds([String])
    case playerWithNames([String])

    var path: String {
        switch self {
        case .playerWithId(let id):
            return "/players/\(id)"
        case .playerWithIds(let ids):
            return "/players?filter[playerIds]=\(ids.joined(separator: ","))"
        case .playerWithNames(let names):
            return "/players?filter[playerNames]=\(names.joined(separator: ","))"
        }
    }

    var method: String {
        switch self {
        case .playerWithId:
            return "GET"
        case .playerWithIds:
            return "GET"
        case .playerWithNames:
            return "GET"
        }
    }
}
