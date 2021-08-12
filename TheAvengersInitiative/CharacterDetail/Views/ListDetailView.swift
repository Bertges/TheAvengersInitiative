//
//  ListDetailView.swift
//  TheAvengersInitiative
//
//  Created by Matheus Mendes Peres on 09/08/21.
//

import UIKit

final class ListDetailView: UITableViewCell, ViewCode {
	
	static let identifier = "ListDetailView"
	
	 private let comicNameLabel: UILabel = {
		let label: UILabel = .init(frame: .zero)
		label.text = "Falha ao carregar informações"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	 private let stackView: UIStackView = {
		let stackView: UIStackView = .init(frame: .zero)
		stackView.translatesAutoresizingMaskIntoConstraints = false
		return stackView
	}()
	
	func setup(title: String) {
		setupViews()
		comicNameLabel.text = title
		
	}
	func setupViewsHierarchy() {
		contentView.addSubview(stackView)
			stackView.addArrangedSubview(comicNameLabel)
	}
	
	func setupConstraints() {
		stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4).isActive = true
		stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4).isActive = true
		stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
		stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
	}
	
	func configureViews() {
		
	}
	
}
