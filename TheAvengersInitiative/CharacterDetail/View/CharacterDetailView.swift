//
//  CharacterDetailView.swift
//  TheAvengersInitiative
//
//  Created by sara.batista.d.felix on 23/07/21.
//

import UIKit
import Kingfisher

final class CharacterDetailView: UIView, ViewCode {
    private let detailViewModel: CharacterDetailViewModel
    
    init(detailvm: CharacterDetailViewModel) {
        self.detailViewModel = detailvm
        super.init(frame: .zero)

        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let stackView: UIStackView = {
        let stackView: UIStackView = .init(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    // MARK: - Image
    private let characterImageView: UIStackView = {
        let stackView: UIStackView = .init(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var characterImage: UIImageView = {
        let imageView: UIImageView = .init()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.kf.setImage(with: self.detailViewModel.avatarUrl())
        return imageView
    }()
    
    // MARK: - ID e name
    private let characterIDNameView: UIStackView = {
        let stackView: UIStackView = .init(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var characterID: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "\(self.detailViewModel.comicsID())      \(self.detailViewModel.name())"
        return label
    }()
    
    // MARK: - Comics
    private let characterComicsView: UIStackView = {
        let stackView: UIStackView = .init(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var tableView: UITableView = {
        let tableView: UITableView = .init(frame: .zero)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    func setupViewsHierarchy() {
        addSubview(stackView)
        stackView.addArrangedSubview(characterImageView)
        characterImageView.addArrangedSubview(characterImage)
        
        stackView.addArrangedSubview(characterIDNameView)
        characterIDNameView.addArrangedSubview(characterID)
        
        stackView.addArrangedSubview(characterComicsView)
        characterComicsView.addArrangedSubview(tableView)
    }
    
    func setupConstraints() {
        if #available(iOS 11.0, *) {
            stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
            
        }
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        
        characterImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        characterIDNameView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        characterComicsView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }

    func configureViews() {
        backgroundColor = .white
        tableView.register(CharacterDetailCell.self, forCellReuseIdentifier: CharacterDetailCell.identifier)
    }
}

extension CharacterDetailView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailViewModel.numberOfRows
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: CharacterDetailCell = tableView.dequeueReusableCell(withIdentifier: CharacterDetailCell.identifier , for: indexPath) as? CharacterDetailCell else {
            return CharacterDetailCell()
        }
        cell.setup(title: detailViewModel.comicTitle(at: indexPath.row))

        return cell
    }
}
