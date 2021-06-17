//
//  CharacterListCell.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 15/06/21.
//

import UIKit

final class CharacterListCell: UITableViewCell, ViewCode {
	
	let characterImageView: UIImageView = {
		let imageView: UIImageView = .init()
		imageView.translatesAutoresizingMaskIntoConstraints = false
		imageView.backgroundColor = .blue
		return imageView
	}()
	
	let characterNameLabel: UILabel = {
		let label: UILabel = .init(frame: .zero)
		label.text = "Capitão America"
		label.backgroundColor = .cyan
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let comicsCount: UILabel = {
		let label: UILabel = .init(frame: .zero)
		label.text = "223"
		label.backgroundColor = .magenta
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	func setup(){
		setupViews()
	}
	
	
	func setupViewsHierarchy() {
		contentView.addSubview(characterImageView)
		contentView.addSubview(characterNameLabel)
		contentView.addSubview(comicsCount)
	}
	
	func setupConstraints() {
		characterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
		characterImageView.topAnchor.constraint(greaterThanOrEqualTo: contentView.topAnchor, constant: 8).isActive = true
		characterImageView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -8).isActive = true
		characterImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
		characterImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true

		characterNameLabel.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 8).isActive = true
		characterNameLabel.trailingAnchor.constraint(greaterThanOrEqualTo: contentView.trailingAnchor, constant: -64).isActive = true
		characterNameLabel.bottomAnchor.constraint(equalTo: characterImageView.bottomAnchor).isActive = true
		
		comicsCount.leadingAnchor.constraint(equalTo: characterNameLabel.trailingAnchor, constant: 8).isActive = true
		comicsCount.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
		comicsCount.bottomAnchor.constraint(equalTo: characterNameLabel.bottomAnchor).isActive = true
	}
	
	func configureViews() {
		
	}
	
	
	
	
}
