//
//  NameList.swift
//  TheAvengersInitiative
//
//  Created by Matheus Mendes Peres on 04/08/21.
//

import Foundation


final class Comic: Codable {

	let title: String
	
	private enum CodingKeys: String, CodingKey {
		case title = "name"
	}
	
	init(title: String) {
		self.title = title
	}
	
	
}
