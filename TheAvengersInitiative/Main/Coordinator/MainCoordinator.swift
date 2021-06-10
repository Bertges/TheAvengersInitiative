//
//  MainCoordinator.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 09/06/21.
//

import UIKit

final class MainCoordinator: Coordinator {

    var window: UIWindow
    var charactersCoordinator: CharacterListCoordinator?

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        charactersCoordinator = .init(window: window)
        charactersCoordinator?.start()
    }
}
