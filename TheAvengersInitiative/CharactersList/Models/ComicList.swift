//
//  Comic.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 17/06/21.
//

import Foundation

final class ComicList: Codable {
    let available: Int

    init(available: Int) {
        self.available = available
    }
}
