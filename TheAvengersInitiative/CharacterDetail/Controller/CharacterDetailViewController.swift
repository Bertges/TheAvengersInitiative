//
//  CharacterDetailViewController.swift
//  TheAvengersInitiative
//
//  Created by sara.batista.d.felix on 23/07/21.
//

import UIKit

final class CharacterDetailViewController: UIViewController {
    
    // Properties
    private lazy var _view: CharacterDetailView = {
        let view: CharacterDetailView = .init(detailvm: detailvm)
        return view
    }()
    
    var detailvm: CharacterDetailViewModel
    
    init(detailvm: CharacterDetailViewModel) {
        self.detailvm = detailvm
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = _view
    }
}
