//
//  CharacterListCell.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 15/06/21.
//

import UIKit
import Kingfisher

final class CharacterListCell: UITableViewCell, ViewCode {

    static let identifier: String = "CharacterListCell"

    // Properties
    let characterImageView: UIImageView = {
        let imageView: UIImageView = .init()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .red
        return imageView
    }()

    let characterNameLabel: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.text = "Falha ao carregar informações"
        label.backgroundColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let characterComicsCount: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.text = ""
        label.backgroundColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let stackView: UIStackView = {
        let stackView: UIStackView = .init(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 8
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.alignment = .bottom
        return stackView
    }()

    func setup(name: String, comicsCount: Int, avatarUrl: URL) {
        setupViews()

        characterNameLabel.text = name
        characterComicsCount.text = "\(comicsCount)"
        characterImageView.kf.setImage(with: avatarUrl)
    }

    // ViewCode
    func setupViewsHierarchy() {
        contentView.addSubview(stackView)
            stackView.addArrangedSubview(characterImageView)
            stackView.addArrangedSubview(characterNameLabel)
            stackView.addArrangedSubview(characterComicsCount)
    }

    func setupConstraints() {
        stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4).isActive = true
        stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        characterImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        characterImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        characterComicsCount.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }

    func configureViews() {

    }
}
