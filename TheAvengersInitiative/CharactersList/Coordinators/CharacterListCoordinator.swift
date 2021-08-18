//
//  CharacterListCoordinator.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 10/06/21.
//

import UIKit

final class CharacterListCoordinator: Coordinator {

    // Properties
    let window: UIWindow
    var navigation: UINavigationController?
    var characterListController: CharactersListViewController?
    var detailController: CharacterDetailViewController?
    
    // Init
    init(window: UIWindow) {
        self.window = window
    }

    // Coordinator
    func start() {
        let controller: CharactersListViewController = .init(coordinator: self)

        characterListController = controller
        navigation = UINavigationController(rootViewController: controller)

        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }

    func didSelectCharacter(_ character: Character) {
        let detailvm: CharacterDetailViewModel = .init(character: character)
        let controller: CharacterDetailViewController = .init(detailvm: detailvm)
        
        detailController = controller
        navigation?.pushViewController(controller, animated: true)
    }
}
