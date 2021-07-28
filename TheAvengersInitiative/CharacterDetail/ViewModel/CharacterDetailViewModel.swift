//
//  CharacterDetailViewModel.swift
//  TheAvengersInitiative
//
//  Created by sara.batista.d.felix on 26/07/21.
//

import UIKit

final class CharacterDetailViewModel {
    
    let character: Character
    
    init(character: Character) {
        self.character = character
    }

    func name(at index: Int) -> String {
        return character.name
    }

    func comicsCount(at index: Int) -> Int {
        return character.comicList.available
    }

    func avatarUrl(at index: Int) -> URL {
        let thumbnail: Character.Thumbnail = character.thumbnail
        return thumbnail.path.appendingPathExtension(thumbnail.thumbExtension)
    }
    
    // let comic 
}
