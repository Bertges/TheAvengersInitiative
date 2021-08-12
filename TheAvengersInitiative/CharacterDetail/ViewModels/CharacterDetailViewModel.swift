//
//  CharacterDetailViewModel.swift
//  TheAvengersInitiative
//
//  Created by Matheus Mendes Peres on 27/07/21.
//

import UIKit

final class CharacterDetailViewModel {
	
	private let characteres: Character

	init(_ character: Character){
		self.characteres = character
	}
	
	func name() -> String {
		return characteres.name
	}

	func id() -> String {
		return "\(characteres.id)"
	}

	func avatarUrl() -> URL {
		let thumbnail: Character.Thumbnail = characteres.thumbnail
		return thumbnail.path.appendingPathExtension(thumbnail.thumbExtension)
	}
	
	func nameList(at index: Int) -> String {
		return characteres.comicList.items[index].title
	}
	
	var numberOfRows: Int {
		return characteres.comicList.available
	}
	
}
