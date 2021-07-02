//
//  CharactersAPI.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 24/06/21.
//

import Foundation

protocol CharactersAPIProtocol {
    func getCharacters(offset: Int)
}

final class CharactersAPI: CharactersAPIProtocol {

    let requestManager: RequestManagerProtocol

    init(requestManager: RequestManagerProtocol = RequestManager()) {
        self.requestManager = requestManager
    }

    func getCharacters(offset: Int) {
        guard let url: URL = URL(string: "https://gateway.marvel.com:443/v1/public/characters?apikey=71180e0d0ca397ea99017cb485cb232d&ts=1234&hash=1c8abdb7851de22b6c703af0b04f4a67") else {
            return
        }
        requestManager.request(httpMethod: .get, url: url) { (result: Result<CharactersListWrapper>) in
            debugPrint(result)
        }
    }
}
