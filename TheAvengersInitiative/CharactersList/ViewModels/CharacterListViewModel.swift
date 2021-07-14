//
//  CharacterViewModel.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 17/06/21.
//

import Foundation

final class CharacterListViewModel {

    // MARK: - Properties
    var characteres: [Character]
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
        let thumbnail: Character.Thumbnail = characteres[index].thumbnail
        return thumbnail.path.appendingPathExtension(thumbnail.thumbExtension)
    }

    var numberOfRows: Int {
        return characteres.count
    }

    func requestCharacters(completion: @escaping (() -> Void)) {
        api.getCharacters(offset: 0) { result in
            switch result {
            case let .success(wrapper):
                self.characteres = wrapper.data.results
            case let .error(error):
                break
            }

            completion()
        }
    }
}
