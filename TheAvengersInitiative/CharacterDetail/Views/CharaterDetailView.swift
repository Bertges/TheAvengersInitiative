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
		stackview.spacing = 16
		return stackview
	}()
	
	private lazy var characterImageView: UIImageView = {
		let image: UIImageView = .init(frame: .zero)
		image.translatesAutoresizingMaskIntoConstraints = false
		image.setImage(from: self.detailViewModel.avatarUrl())
		return image
	}()
	
	private lazy var characterNameIdLabel: UILabel = {
		let name: UILabel = .init(frame: .zero)
		name.translatesAutoresizingMaskIntoConstraints = false
		name.text = "\(self.detailViewModel.id())   \(self.detailViewModel.name())"
		return name
	}()
	
	private lazy var characterTableView: UITableView = {
		let tableView: UITableView = .init(frame: .zero)
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.delegate = self
		tableView.dataSource = self
		return tableView
	}()
	

	private let detailViewModel : CharacterDetailViewModel
	
	init(detailViewModel: CharacterDetailViewModel) {
		
		self.detailViewModel = detailViewModel
		super.init(frame: .zero)
		
		setupViews()
	}
	
	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func setupViewsHierarchy() {
		addSubview(stackView)
			stackView.addArrangedSubview(characterImageView)
			stackView.addArrangedSubview(characterNameIdLabel)
			stackView.addArrangedSubview(characterTableView)
		
	}
	
	func setupConstraints() {
		if #available(iOS 11.0, *) {
			stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
			stackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
		}
		stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
		stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
		
		characterImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
		
		characterNameIdLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
		
		characterTableView.heightAnchor.constraint(equalToConstant: 400).isActive = true

	}
	
	func configureViews() {
		characterTableView.register(ListDetailView.self, forCellReuseIdentifier : ListDetailView.identifier)
		backgroundColor = .white
	}
}

extension CharacterDetailView: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return detailViewModel.numberOfRows
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: ListDetailView.identifier, for: indexPath) as? ListDetailView else {
			return ListDetailView()
		}
		
		cell.setup(title: detailViewModel.nameList(at: indexPath.row))
		return cell
	}
	
	
}
