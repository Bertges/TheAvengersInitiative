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

    // MARK: - Init
    init(characteres: [Character] = [Character(name: "Iron Man", comicList: ComicList(available: 3)),
                                     Character(name: "Thor", comicList: ComicList(available: 4)),
                                     Character(name: "Capitão América", comicList: ComicList(available: 5)),
                                     Character(name: "Viúva Negra", comicList: ComicList(available: 6)),
                                     Character(name: "Visão", comicList: ComicList(available: 7)),
                                     Character(name: "Rocket", comicList: ComicList(available: 8)),
                                     Character(name: "Hulk", comicList: ComicList(available: 9))]) {
        self.characteres = characteres
    }

    func name(at index: Int) -> String {
        return characteres[index].name
    }

    func comicsCount(at index: Int) -> Int {
        return characteres[index].comicList.available
    }

    func avatarUrl(at index: Int) -> URL {
        return characteres[index].image
    }

    var numberOfRows: Int {
        return characteres.count
    }
}
