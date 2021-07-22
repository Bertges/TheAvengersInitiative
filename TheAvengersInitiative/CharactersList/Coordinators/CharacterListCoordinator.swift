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
        
    }
}
