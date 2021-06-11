//
//  CharactersListView.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 11/06/21.
//

import UIKit

final class CharactersLitView: UIView {

    // Properties
    let usernameLabel: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nome de usuário:"
        return label
    }()

    let passwordLabel: UILabel = {
        let label: UILabel = .init(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Senha:"
        return label
    }()

    let usernameTextfield: UITextField = {
        let textfield: UITextField = .init(frame: .zero)
        textfield.borderStyle = .roundedRect
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "nome de usuário"
        return textfield
    }()

    let passwordTextfield: UITextField = {
        let textfield: UITextField = .init(frame: .zero)
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "senha"
        return textfield
    }()

    let loginButton: UIButton = {
        let button: UIButton = .init(frame: .zero)
        button.setTitle("LOGIN", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints  = false
        return button
    }()

    let forgotPasswordButton: UIButton = {
        let button: UIButton = .init(frame: .zero)
        button.setTitle("esqueci minha senha", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints  = false
        return button
    }()

    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        setupViewHierarchy()
        setupConstraints()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViewHierarchy() {
        addSubview(usernameLabel)
        addSubview(usernameTextfield)
        addSubview(passwordLabel)
        addSubview(passwordTextfield)
        addSubview(loginButton)
    }

    func setupConstraints() {
        if #available(iOS 11.0, *) {
            usernameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 44).isActive = true
        } else {
            usernameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 108).isActive = true
        }

        usernameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true

        usernameTextfield.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 8).isActive = true
        usernameTextfield.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        usernameTextfield.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true

        // Sara
        // Adicionar o label e textfield de senha
        // passwordLabel 16 de distancia vertical do usernameTextfield

        // Matheus
        // Adicionar os botoes
        // Login 16 de distancia vertical do passwordTextfield
        // esqueci minha senha 16 de distancia vertical do bottom da view
    }
}
