//
//  CharacterDetailViewModel.swift
//  TheAvengersInitiative
//
//  Created by sara.batista.d.felix on 26/07/21.
//

import UIKit

final class CharacterDetailViewModel {
    
    private let character: Character
    
    init(character: Character) {
        self.character = character
    }

    func name() -> String {
        return character.name
    }
    
    func comicsID() -> String {
        return "\(character.id)"
    }

    func avatarUrl() -> URL {
        let thumbnail: Character.Thumbnail = character.thumbnail
        return thumbnail.path.appendingPathExtension(thumbnail.thumbExtension)
    }
    
    func comicTitle(at index: Int) -> String {
        return character.comicList.items[index].title
    }
    
    var numberOfRows: Int {
        return character.comicList.items.count
    }
    
}
