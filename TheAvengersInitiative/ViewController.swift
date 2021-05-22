//
//  ViewController.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 22/05/21.
//

import UIKit

class ViewController: UIViewController {

    var integer: Int = 10
    let double: Double = 10.0
    let string: String = "I am Groot"
    let boolean: Bool = true // false
    let stringArray: [String] = ["first", "second", "third"]
    let integerArray: [Int] = [1, 2, 3]
    let dictionary: [String: Any] = ["key": "text",
                                     "key_inteiro": 15,
                                     "key_double": 15.24,
                                     "key_boolean": false,
                                     "key_dict": ["nested_key": "nested_value"]]
    let intTuple: (Int, Int) = (1, 2)
    let stringTuple: (Int, Int, Int, Int, Int) = (1, 2, 8, 9, 0)
    let multiTypesTuple: (Int, String, Bool) = (3, "tuple", true)

    override func viewDidLoad() {
        super.viewDidLoad()
        exercicioOperadores()
        exercicioStrings()
        exerciciosArray()
        exerciciosDictionary()
    }

    func operacoesAritmeticas() {
        // Soma
        let a = 10 + 5 // 15

        // Subtracao
        let b = 15 - 10 // 5

        // Multiplicacao
        let c = 2 * 3 // 6

        // Divisão
        let d = 20 / 10 // 2

        // Resto
        let e = 5 % 2 // 1

        debugPrint("Resultados: ", a, b, c, d, e)

    }

    // Corrija os erros abaixo, insira os valores nos placeholder e print os valores esperados
    func exercicioOperadores() {
        integer = 20

        let guardiansOfTheGalaxyReleaseYear: Int = 2014

        let guardiansOfTheGalaxy2ReleaseYear: Int = 2017

        let yearsBetweenMovies: Int = guardiansOfTheGalaxy2ReleaseYear - guardiansOfTheGalaxyReleaseYear

        debugPrint("Anos entre os filmes 01 e 02 = \(yearsBetweenMovies)")
        // valor esperado: "Anos entre os filmes 01 e 02 = 3". ps: utilize a variavel yearsBetweenMovies

        debugPrint(yearsBetweenMovies == 3)
        // valor esperado: true
    }

    func exercicioStrings() {
        let peter: String = "Peter Quill"
        let grootWelcomeMessage: String = "I am Groot"

        debugPrint("Olá \(peter), " +  grootWelcomeMessage)
        // valor esperado: "Olá Peter Quill, I am Groot"
    }

    func exerciciosArray() {
        var guardians: [String] = ["Star Lord", "Gamora", "Rocket", "Drax", "Groot"]

        debugPrint(guardians[2])
        // valor esperado: "Rocket"

        guardians.append("Mantis")
        debugPrint(guardians)
        // valor esperado: ["Start Lord", "Gamora", "Rocket", "Drax", "Groot", "Mantis"]

        if let index = guardians.firstIndex(of: "Gamora") {
            guardians.remove(at: index)
            debugPrint(guardians)
            // valor esperado: ["Start Lord", "Rocket", "Drax", "Groot", "Mantis"]
        }

        let rocketAndDrax: [String] = guardians.filter({ guardian in
            return (guardian == "Rocket" || guardian == "Drax")
        })
        debugPrint(rocketAndDrax)
        // valor esperado: ["Rocket", "Drax"]

        let killedByThanos: [Bool] = guardians.map({ guardian in
            let killedByThanos: [String] = ["Star Lord", "Gamora", "Drax", "Groot", "Mantis"]

            return killedByThanos.contains(guardian)
        })
        debugPrint(killedByThanos)
        // valor esperado: [true, false, true, true, true]
    }

    func exerciciosDictionary() {
        let guardians: [String: Any] = ["name": "Guardiões da Galáxia",
                                        "releaseYear": 2014,
                                        "director": "James Gunn",
                                        "cast": ["Chris Pratt", "Dave Bautista", "Zoe Saldaña", "Vin Diesel"]]

        if let releaseYear: Int = guardians["releaseYear"] as? Int {
            debugPrint(releaseYear)
            // valor esperado: 2014
        }


        debugPrint(guardians["director"])
        // valor esperado: "Optional("James Gunn")"
    }
}

