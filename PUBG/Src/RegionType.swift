//
//  RegionType.swift
//  PUBG
//
//  Created by Shohei Ohno on 2018/04/08.
//  Copyright © 2018年 Shohei Ohno. All rights reserved.
//

enum RegionType {
    case xboxAs
    case xboxEu
    case xboxNa
    case xboxOc
    case pcKrJp
    case pcNa
    case pcEu
    case pcOc
    case pcKakao
    case pcSea
    case pcSa
    case pcAs

    var string: String {
        switch self {
        case .xboxAs:
            return "xbox-as"
        case .xboxEu:
            return "xbox-eu"
        case .xboxNa:
            return "xbox-na"
        case .xboxOc:
            return "xbox-oc"
        case .pcKrJp:
            return "pc-krjp"
        case .pcNa:
            return "pc-na"
        case .pcEu:
            return "pc-eu"
        case .pcOc:
            return "pc-oc"
        case .pcKakao:
            return "pc-kakao"
        case .pcSea:
            return "pc-sea"
        case .pcSa:
            return "pc-sa"
        case .pcAs:
            return "pc-as"
        }
    }
}
