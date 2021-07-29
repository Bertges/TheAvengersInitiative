//
//  CharacterDetailViewController.swift
//  TheAvengersInitiative
//
//  Created by Matheus Mendes Peres on 23/07/21.
//

import UIKit

final class CharacterDetailViewController: UIViewController {
	
	private let _view: CharacterDetailView

	init(detailViewModel: CharacterDetailViewModel) {
			 self._view = CharacterDetailView(detailViewModel: detailViewModel)
			 super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func loadView() {
		view = _view
	}
}
