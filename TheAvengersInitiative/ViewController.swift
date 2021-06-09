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
		
		guard let apiUrl: String = Bundle.main.infoDictionary?["API_URL"] as? String else { return }
		
		debugPrint(apiUrl)
    }
}
