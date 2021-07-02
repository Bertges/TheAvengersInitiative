//
//  Character.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 17/06/21.
//

import Foundation

final class Character: Codable {

    final class Thumbnail: Codable {

        // MARK: - Properties
        let path: URL
        let thumbExtension: String

        private enum CodingKeys: String, CodingKey {
            case path
            case thumbExtension = "extension"
        }

        // MARK: - Init
        internal init(path: URL, thumbExtension: String) {
            self.path = path
            self.thumbExtension = thumbExtension
        }
    }
    
    let id: Int
    let name: String
    let description: String
    let thumbnail: Thumbnail
    let comicList: ComicList

    private enum CodingKeys: String, CodingKey {
        case comicList = "comics"
        case id, name, description, thumbnail
    }

    // MARK: - Init
    internal init(id: Int, name: String, description: String, thumbnail: Thumbnail, comicList: ComicList) {
        self.id = id
        self.name = name
        self.description = description
        self.thumbnail = thumbnail
        self.comicList = comicList
    }
}
