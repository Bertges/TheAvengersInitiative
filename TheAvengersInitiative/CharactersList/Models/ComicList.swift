//
//  Comic.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 17/06/21.
//

import Foundation

final class ComicList: Codable {
    let available: Int
	let items: [Comic]

	init(available: Int, items: [Comic]) {
        self.available = available
		self.items = items
    }
}
