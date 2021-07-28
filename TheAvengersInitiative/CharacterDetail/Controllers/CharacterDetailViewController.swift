//
//  CharacterDetailViewController.swift
//  TheAvengersInitiative
//
//  Created by Matheus Mendes Peres on 23/07/21.
//

import UIKit

final class CharacterDetailViewController: UIViewController {
	
	lazy var _view: CharacterDetail = {
		let view: CharacterDetail = .init(detailvm: detalhe)
		return view
	}()
	
	var detalhe: CharacterDetailViewModel
	
	init(detailvm: CharacterDetailViewModel){
		self.detalhe = detailvm
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
