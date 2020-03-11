//
//  SymbolDetail.swift
//  ForeksCase
//
//  Created by yasin on 11.03.2020.
//  Copyright © 2020 yt. All rights reserved.
//

import Foundation

typealias SymbolDetailItem = [String: String]

struct SymbolDetail: Decodable {
    
    enum SymbolKeys: String, CodingKey {
        case list = "l"
    }
    
    let symbolDetails: [SymbolDetailItem]
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: SymbolKeys.self)
        self.symbolDetails = try container.decode(Array.self, forKey: .list)
    }
}
