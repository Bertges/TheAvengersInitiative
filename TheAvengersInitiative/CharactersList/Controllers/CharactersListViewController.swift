//
//  CharactersListViewController.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 10/06/21.
//

import UIKit

final class CharactersListViewController: UIViewController, CharactersListViewDelegate {

    // Properties
    lazy var _view: CharactersListView = {
        let view: CharactersListView = .init(delegate: self)
        return view
    }()

    weak var coordinator: CharacterListCoordinator?

    init(coordinator: CharacterListCoordinator) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func loadView() {
        view = _view
    }

    // MARK: - CharactersListViewDelegate
    func didSelectCharacater(_ character: Character) {
        coordinator?.didSelectCharacter(character)
    }
}
