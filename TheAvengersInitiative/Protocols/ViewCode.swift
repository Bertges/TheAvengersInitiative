//
//  ViewCode.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 15/06/21.
//

import Foundation

protocol ViewCode {
    func setupViewsHierarchy()
    func setupConstraints()
    func configureViews()
    func setupViews()
}

extension ViewCode {
    func setupViews() {
        setupViewsHierarchy()
        setupConstraints()
        configureViews()
    }
}
