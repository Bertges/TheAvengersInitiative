//
//  CharactersListWrapper.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 30/06/21.
//

import Foundation

final class CharacterListData: Codable {

    // MARK: - Properties
    let offset: Int
    let limit: Int
    let total: Int
    let count: Int
    let results: [Character]

    // MARK: - Init
    internal init(offset: Int, limit: Int, total: Int, count: Int, results: [Character]) {
        self.offset = offset
        self.limit = limit
        self.total = total
        self.count = count
        self.results = results
    }

    init(from decoder: Decoder) throws {
        let container = try! decoder.container(keyedBy: CodingKeys.self)
        self.offset = try! container.decode(Int.self, forKey: .offset)
        self.limit = try! container.decode(Int.self, forKey: .limit)
        self.total = try! container.decode(Int.self, forKey: .total)
        self.count = try! container.decode(Int.self, forKey: .count)
        self.results = try! container.decode([Character].self, forKey: .results)
    }
}

final class CharactersListWrapper: Codable {

    let data: CharacterListData

    private enum CodingKeys: String, CodingKey {
        case data
    }

    init(data: CharacterListData) {
        self.data = data
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decode(CharacterListData.self, forKey: .data)
    }
}
