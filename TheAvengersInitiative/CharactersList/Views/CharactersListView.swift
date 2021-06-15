//
//  CharactersListView.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 11/06/21.
//

import UIKit

final class CharactersLitView: UIView, ViewCode {

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
        textfield.borderStyle = .roundedRect
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "senha"
        return textfield
    }()

    let loginButton: UIButton = {
        let button: UIButton = .init(frame: .zero)
        button.setTitle("LOGIN", for: .normal)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints  = false
        return button
    }()

    let forgotPasswordButton: UIButton = {
        let button: UIButton = .init(frame: .zero)
        button.setTitle("esqueci minha senha", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints  = false
        return button
    }()

    let scrollView: UIScrollView = {
        let scrollView: UIScrollView = .init(frame: .zero)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()

    let contentView: UIView = {
        let view: UIView = .init(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let stackView: UIStackView = {
        let stackView: UIStackView = .init(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    init() {
        super.init(frame: .zero)
        registerObserver()
        setupViews()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func registerObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillAppear(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    }

    @objc
    func keyboardWillAppear(notification: Notification) {
        guard let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
        let keyboardRectangle = keyboardFrame.cgRectValue
        let keyboardHeight = keyboardRectangle.height

        var contentInset: UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardHeight
        scrollView.contentInset = contentInset
    }

    func setupViewsHierarchy() {
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView)

        stackView.addArrangedSubview(usernameLabel)
        stackView.addArrangedSubview(usernameTextfield)
        stackView.addArrangedSubview(passwordLabel)
        stackView.addArrangedSubview(passwordTextfield)
        stackView.addArrangedSubview(loginButton)
        contentView.addSubview(forgotPasswordButton)
    }

    func setupConstraints() {
        if #available(iOS 11.0, *) {
            scrollView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
            scrollView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        } else {
            usernameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 108).isActive = true
        }

        stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        stackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true

        loginButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true

        forgotPasswordButton.topAnchor.constraint(greaterThanOrEqualTo: loginButton.bottomAnchor, constant: 16).isActive = true
        forgotPasswordButton.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -16).isActive = true
        forgotPasswordButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        forgotPasswordButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true

        scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true

        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        contentView.heightAnchor.constraint(greaterThanOrEqualTo: scrollView.heightAnchor).isActive = true
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
    }

    func configureViews() {
        backgroundColor = .white
        loginButton.backgroundColor = .yellow
    }
}
