//
//  CharacterDetailViewModel.swift
//  TheAvengersInitiative
//
//  Created by Matheus Mendes Peres on 27/07/21.
//

import UIKit

final class CharacterDetailViewModel {
	
	let characteres: Character
 
	init(_ character: Character){
		self.characteres = character
	}
	
	func name() -> String {
		return characteres.name
	}

	func comicsCount() -> Int {
		return characteres.comicList.available
	}

	func avatarUrl() -> URL {
		let thumbnail: Character.Thumbnail = characteres.thumbnail
		return thumbnail.path.appendingPathExtension(thumbnail.thumbExtension)
	}
	
}
