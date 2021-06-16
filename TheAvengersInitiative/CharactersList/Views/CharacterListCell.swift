//
//  CharacterListCell.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 15/06/21.
//

import UIKit

final class CharacterListCell: UITableViewCell, ViewCode {

    // Properties
    let characterImageView: UIImageView = {
        let imageView: UIImageView = .init()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .red
        return imageView
    }()

    let characterNameLabel: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.text = "Nome do Personagem"
        label.backgroundColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let characterComicsCount: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.text = "222"
        label.backgroundColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func setup() {
        setupViews()
    }

    // ViewCode
    func setupViewsHierarchy() {
        contentView.addSubview(characterImageView)
        contentView.addSubview(characterNameLabel)
        contentView.addSubview(characterComicsCount)
    }

    func setupConstraints() {
        characterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        characterImageView.topAnchor.constraint(greaterThanOrEqualTo: contentView.topAnchor, constant: 8).isActive = true
        characterImageView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -8).isActive = true
        characterImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        characterImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true

        characterNameLabel.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 8).isActive = true
        characterNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        characterNameLabel.bottomAnchor.constraint(equalTo: characterImageView.bottomAnchor).isActive = true
    }

    func configureViews() {
        
    }
}
