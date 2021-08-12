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
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    // MARK: - Image
    
    private lazy var characterImageView: UIImageView = {
        let imageView: UIImageView = .init()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.kf.setImage(with: self.detailViewModel.avatarUrl())
        return imageView
    }()
    
    // MARK: - ID e Name
    
    private lazy var characterIDLabel: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "\(self.detailViewModel.comicsID())      \(self.detailViewModel.name())"
        return label
    }()
    
    // MARK: - Comics
    
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
        stackView.addArrangedSubview(characterIDLabel)
        stackView.addArrangedSubview(tableView)
    }
    
    func setupConstraints() {
        if #available(iOS 11.0, *) {
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
            stackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
            
        }
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        
        characterImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        characterIDLabel.heightAnchor.constraint(equalToConstant: 44).isActive = true
        tableView.heightAnchor.constraint(greaterThanOrEqualToConstant: 100).isActive = true
       
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
