//
//  ViewController.swift
//  TheAvengersInitiative
//
//  Created by Felippe Bertges on 22/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Isso é um comentário
        // TODO: Menssagem com o que está pendente
        /*
            Isso é um bloco de comentário
         */

        // Debug inseguro. É possível ser lido em Prod por qualquer pessoa com o Xcode.
        print("I am Groot")

        // Debug seguro. Visível apenas para quem estiver debugando o app.
        debugPrint("I'm Groot")
    }


}

