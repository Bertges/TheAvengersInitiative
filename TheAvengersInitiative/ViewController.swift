//
//  ViewController.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 22/05/21.
//

import UIKit

class ViewController: UIViewController {

    var name: String?
    var guardians: [String]?
    var releaseYear: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        exercicioOpcionais()
    }

    func exercicioOpcionais() {

        // descomentar abaixo para entrar no if
        name = "Guardiões da Galáxia"
        if let name = self.name {
            debugPrint(name)
            // valor esperado: "Guardiões da Galáxia"
        }

        // descomentar abaixo para passar no guard
        guardians = ["Peter", "Gamora", "Rocket", "Drax", "Groot"]
        guard let guardiansNames = self.guardians else {
            debugPrint(guardians)
            // valor esperado: nil
            return
        }

        debugPrint(guardiansNames)
        // valor esperado: ["Peter", "Gamora", "Rocket", "Drax", "Groot"]


        debugPrint(releaseYear ?? 2014)
        // valor esperado: 2014
    }
}
