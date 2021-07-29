//
//  CharaterDetailPerson.swift
//  TheAvengersInitiative
//
//  Created by Matheus Mendes Peres on 20/07/21.
//

import UIKit

final class CharacterDetailView: UIView, ViewCode {
	
	
	private let stackView: UIStackView = {
		let stackview: UIStackView = .init(frame: .zero)
		stackview.translatesAutoresizingMaskIntoConstraints = false
		stackview.axis = .vertical
		return stackview
	}()
	
	private let imageStackView: UIStackView = {
		let stackview: UIStackView = .init(frame: .zero)
		stackview.translatesAutoresizingMaskIntoConstraints = false
		stackview.axis = .vertical
		return stackview
	}()
	
	private let nameStackView: UIStackView = {
		let stackview: UIStackView = .init(frame: .zero)
		stackview.translatesAutoresizingMaskIntoConstraints = false
		stackview.axis = .horizontal
		stackview.spacing = 4
		stackview.distribution = .fillProportionally
		return stackview
	}()
	
	private let countStackView: UIStackView = {
		let stackview: UIStackView = .init(frame: .zero)
		stackview.translatesAutoresizingMaskIntoConstraints = false
		stackview.axis = .vertical
		return stackview
	}()

	private let image: UIImageView = {
		let image: UIImageView = .init(frame: .zero)
		image.translatesAutoresizingMaskIntoConstraints = false
		return image
	}()
	
	private let nome: UILabel = {
		let name: UILabel = .init(frame: .zero)
		name.translatesAutoresizingMaskIntoConstraints = false
		name.text = "texto"
		name.backgroundColor = .magenta
		return name
	}()

	let detailvm : CharacterDetailViewModel
	
	init(detailvm: CharacterDetailViewModel) {
		
		self.detailvm = detailvm
		super.init(frame: .zero)
		
		setupViews()
	}
	
	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func setupViewsHierarchy() {
		addSubview(stackView)
			stackView.addArrangedSubview(imageStackView)
			stackView.addArrangedSubview(nameStackView)
			stackView.addArrangedSubview(countStackView)
		
		imageStackView.addArrangedSubview(image)
		
		nameStackView.addArrangedSubview(nome)
		
	}
	
	func setupConstraints() {
		if #available(iOS 11.0, *) {
			stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
			stackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
		}
		stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
		stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
		
		imageStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
		
		nameStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
		nameStackView.widthAnchor.constraint(equalToConstant: 100).isActive = true
		
		countStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
	}
	
	func configureViews() {
		stackView.backgroundColor = .blue
		imageStackView.backgroundColor = .brown
		nameStackView.backgroundColor = .magenta
		countStackView.backgroundColor = .systemPink
	}
}