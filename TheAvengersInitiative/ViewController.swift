//
//  ViewController.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 22/05/21.
//

import UIKit

class ViewController: UIViewController {

    var guardians: [String] = ["Peter", "Gamora", "Drax", "Groot", "Rocket", "Mantis"]

    override func viewDidLoad() {
        super.viewDidLoad()

        exercicioControleDeFluxoIfElseIf()
//        exercicioControleDeFluxoFor()
        exercicioControleDeFluxoSwitch()
    }

    func exercicioControleDeFluxoIfElseIf() {
        let capitan: String = "Peter"

        if capitan == "Gamora" {
            debugPrint("Gamora is the capitan")
        }

        if capitan == "Drax" {
            debugPrint("Drax is the capitan")
        } else if capitan == "Groot" {
            debugPrint("Groot is the capitan")
        }
    }

    func exercicioControleDeFluxoFor() {
        let capitan: String = "Peter"

        for guardian in guardians {
            if guardian == capitan {
                debugPrint("\(guardian) is the capitan")
            }
        }

        // TODO: O código abaixo quebra ao rodar. Como podemos arrumar?
        for index in 0...guardians.count {
            if guardians[index] == capitan {
                debugPrint("\(index) - \(guardians[index]) is the capitan")
            }
        }
    }

    func exercicioControleDeFluxoSwitch() {
        let capitan: String = "Peter"

        switch capitan {
        case "Peter":
            debugPrint("Peter is the capitan")
        case "Gamora":
            debugPrint("Peter is the capitan")
        case "Groot":
            debugPrint("Groot is the capitan")
        case "Drax":
            debugPrint("Drax is the capitan")
        case "Rocket":
            debugPrint("Rocket is the capitan")
        case "Mantis":
            debugPrint("Mantis is the capitan")
        default:
            debugPrint("There is no capitan")
        }
    }
}
