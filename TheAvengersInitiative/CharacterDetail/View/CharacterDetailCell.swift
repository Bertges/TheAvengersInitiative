//
//  CharacterDetailCell.swift
//  TheAvengersInitiative
//
//  Created by sara.batista.d.felix on 11/08/21.
//

import UIKit

final class CharacterDetailCell: UITableViewCell, ViewCode {
    static let identifier: String = "CharacterDetailCell"
    
    private let stackView: UIStackView = {
        let stackView: UIStackView = .init(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var nameComics: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setup(title: String) {
        setupViews()
        
        nameComics.text = title
    }
    
    func setupViewsHierarchy() {
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(nameComics)
    }
    
    func setupConstraints() {
        stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4).isActive = true
        stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
    }
    
    func configureViews() {
    }
}
