//
//  SymbolList.swift
//  ForeksCase
//
//  Created by yasin on 11.03.2020.
//  Copyright © 2020 yt. All rights reserved.
//

import Foundation

struct PageDetail: Decodable {
    let key: String
    let name: String
}

struct SymbolListResponse: Decodable {
    let mypageDefaults: [Symbol]
    let mypage: [PageDetail]
}
