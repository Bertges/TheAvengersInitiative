//
//  NameList.swift
//  TheAvengersInitiative
//
//  Created by sara.batista.d.felix on 04/08/21.
//

import Foundation

final class Comic: Codable {
    var title: String
    
    private enum CodingKeys: String, CodingKey {
        case title = "name"
    }
    
    init(title: String) {
        self.title = title
    }
}
