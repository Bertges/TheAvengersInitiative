//
//  CharacterDetailViewController.swift
//  TheAvengersInitiative
//
//  Created by sara.batista.d.felix on 23/07/21.
//

import UIKit

final class CharacterDetailViewController: UIViewController {
    
    private let _view: CharacterDetailView

    init(detailvm: CharacterDetailViewModel) {
             self._view = CharacterDetailView(detailvm: detailvm)
             super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
     
    override func loadView() {
        view = _view
    }
}
