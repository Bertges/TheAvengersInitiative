//
//  CharacterViewModel.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 17/06/21.
//

import Foundation

final class CharacterListViewModel {

    // MARK: - Properties
    let characteres: [Character]
    let api: CharactersAPIProtocol

    // MARK: - Init
    init(characteres: [Character] = [], api: CharactersAPIProtocol = CharactersAPI()) {
        self.characteres = characteres
        self.api = api
    }

    func name(at index: Int) -> String {
        return characteres[index].name
    }

    func comicsCount(at index: Int) -> Int {
        return characteres[index].comicList.available
    }

    func avatarUrl(at index: Int) -> URL {
        return characteres[index].thumbnail.path
    }

    var numberOfRows: Int {
        return characteres.count
    }

    func requestCharacters() {
        api.getCharacters(offset: 0)
    }
}
