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


        <#keyword#> let name = self.name {
            debugPrint(name)
        }

        // descomentar abaixo para passar no guard
        //guardians = ["Peter", "Gamora", "Rocket", "Drax", "Groot"]
        <#keyword#> let guardiansNames = self.guardians else {
            debugPrint(guardians)
            // valor esperado: nil
            return
        }

        debugPrint(guardiansNames)
        // valor esperado:


        debugPrint(releaseYear <#nil coalescing#>)
    }
}
