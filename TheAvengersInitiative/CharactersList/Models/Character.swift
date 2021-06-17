//
//  Character.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 17/06/21.
//

import Foundation

final class Character {
    let name: String
    let comicList: ComicList
    let image: URL

    init(name: String = "Capitão América",
         comicList: ComicList = .init(available: 10),
         image: URL = URL(string: "https://popseries.com.br/wp-content/uploads/2019/11/capitao-america-.jpg")!) {
        self.name = name
        self.comicList = comicList
        self.image = image
    }
}
