//
//  Codables.swift
//  PUBG
//
//  Created by Shohei Ohno on 2018/04/08.
//  Copyright © 2018年 Shohei Ohno. All rights reserved.
//

import Foundation

protocol Result: Codable {}

struct PlayerResult: Result {
    let data: Player
    let links: Links
}

struct PlayersResult: Result {
    let data: [Player]
    let links: Links
}

struct Player: Codable {
    let id: String
    let attributes: Attributes
    let relationships: Relationships
    let links: Links
}

struct Attributes: Codable {
    let createdAt: String
    let name: String
    let patchVersion: String
    let shardId: String
    let stats: String?  // TODO: type
    let titleId: String
    let updatedAt: String
}

struct Relationships: Codable {
    let assets: Assets
}

struct Assets: Codable {
    let data: [String] // TODO: type
}

struct Links: Codable {
    let schema: String?
    let url: String

    private enum CodingKeys: String, CodingKey {
        case schema = "schema"
        case url = "self"
    }
}

