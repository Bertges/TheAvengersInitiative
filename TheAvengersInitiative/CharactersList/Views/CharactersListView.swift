//
//  CharactersListView.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 11/06/21.
//

import UIKit

final class CharactersListView: UIView, ViewCode {

    // Properties
    lazy var tableView: UITableView = {
        let tableView: UITableView = .init(frame: .zero)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    let viewModel: CharacterListViewModel

    init(viewModel: CharacterListViewModel = CharacterListViewModel()) {
        self.viewModel = viewModel
        super.init(frame: .zero)
        setupViews()
        load()
    }

    func load() {
        viewModel.requestCharacters()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViewsHierarchy() {
        addSubview(tableView)
    }

    func setupConstraints() {
        if #available(iOS 11.0, *) {
            tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        }

        tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }

    func configureViews() {
        tableView.register(CharacterListCell.self, forCellReuseIdentifier: CharacterListCell.identifier)
        backgroundColor = .white
    }
}

extension CharactersListView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: CharacterListCell = tableView.dequeueReusableCell(withIdentifier: CharacterListCell.identifier, for: indexPath) as? CharacterListCell else {
            return CharacterListCell()
        }

        cell.setup(name: viewModel.name(at: indexPath.row), comicsCount: viewModel.comicsCount(at: indexPath.row), avatarUrl: viewModel.avatarUrl(at: indexPath.row))

        return cell
    }
}
