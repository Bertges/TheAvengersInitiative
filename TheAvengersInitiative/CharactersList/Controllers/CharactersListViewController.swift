//
//  CharactersListViewController.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 10/06/21.
//

import UIKit

final class CharactersListViewController: UIViewController {

    // Properties
    let _view: CharactersLitView = .init()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func loadView() {
        view = _view
    }
}
