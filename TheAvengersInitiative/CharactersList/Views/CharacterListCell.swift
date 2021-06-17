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
        imageView.layer.cornerRadius = 5
        return imageView
    }()

    let characterNameLabel: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.text = "Nome do Personagem"
        label.backgroundColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 6
        label.layer.borderColor = UIColor.red.cgColor
        label.layer.borderWidth = 2
        return label
    }()

    let characterComicsCount: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.text = "222"
        label.backgroundColor = .gray
        label.textAlignment = .center
        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.layer.borderColor = UIColor.red.cgColor
        label.layer.borderWidth = 2
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
        characterNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -52).isActive = true
        characterNameLabel.bottomAnchor.constraint(equalTo: characterImageView.bottomAnchor).isActive = true
        
        characterComicsCount.leadingAnchor.constraint(equalTo: characterNameLabel.trailingAnchor, constant: 8).isActive = true
        characterComicsCount.topAnchor.constraint(greaterThanOrEqualTo: characterNameLabel.topAnchor).isActive = true
        characterComicsCount.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }

    func configureViews() {
        
    }
}
