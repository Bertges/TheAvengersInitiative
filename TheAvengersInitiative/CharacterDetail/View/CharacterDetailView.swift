//
//  CharacterDetailView.swift
//  TheAvengersInitiative
//
//  Created by sara.batista.d.felix on 23/07/21.
//

import UIKit
import Kingfisher

final class CharacterDetailView: UIView, ViewCode {
    
    let detailvm: CharacterDetailViewModel
    
    init(detailvm: CharacterDetailViewModel) {
        self.detailvm = detailvm
        super.init(frame: .zero)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let stackView: UIStackView = {
        let stackView: UIStackView = .init(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 7
        stackView.distribution = .fillProportionally
        
        return stackView
    }()
    
    // MARK: - Image
    let characterImageView: UIStackView = {
        let stackView: UIStackView = .init(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        
        return stackView
    }()
    
    let characterImage: UIImageView = {
        let imageView: UIImageView = .init()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // MARK: - ID
    let characterIDView: UIStackView = {
        let stackView: UIStackView = .init(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        
        return stackView
    }()
    
    let characterID: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Comics
    let characterComicsView: UIStackView = {
        let stackView: UIStackView = .init(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        
        return stackView
    }()
    
    let characterComics: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // criar table
    
    func setup(name: Character , comicsCount: Int, avatarUrl: URL) {
        setupViews()

        characterID.text = ""
        characterComics.text = "\(comicsCount)"
        characterImage.kf.setImage(with: avatarUrl)
    }
    
    func pushCharacters(_ character: CharacterDetailViewModel) {

    }
    
    func setupViewsHierarchy() {
        addSubview(stackView)
        stackView.addArrangedSubview(characterImageView)
        characterImageView.addArrangedSubview(characterImage)
        
        stackView.addArrangedSubview(characterIDView)
        characterIDView.addSubview(characterID)
        
        stackView.addArrangedSubview(characterComicsView)
        characterComicsView.addSubview(characterComics)
    }
    
    func setupConstraints() {
        if #available(iOS 11.0, *) {
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
            stackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        }
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        
        characterImageView.heightAnchor.constraint(greaterThanOrEqualToConstant: 90).isActive = true
//        characterImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
//
        characterIDView.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        characterIDView.widthAnchor.constraint(equalToConstant: 50).isActive = true
//
        characterComicsView.heightAnchor.constraint(greaterThanOrEqualToConstant: 70).isActive = true
//        characterComicsView.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func configureViews() {
        stackView.backgroundColor = .white
        characterImageView.backgroundColor = .blue
        characterIDView.backgroundColor = .gray
        characterComicsView.backgroundColor = .orange
    }
}
