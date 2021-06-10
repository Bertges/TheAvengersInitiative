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
        let controller: CharactersListViewController = .init()
        controller.view.backgroundColor = .red

        characterListController = controller
        navigation = UINavigationController(rootViewController: controller)

        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }
}
