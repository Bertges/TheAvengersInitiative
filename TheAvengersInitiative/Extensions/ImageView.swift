//
//  ImageView.swift
//  TheAvengersInitiative
//
//  Created by Matheus Mendes Peres on 27/07/21.
//

import Kingfisher
import UIKit

extension UIImageView {
	func setImage(from url: URL) {
		self.kf.setImage(with: url)
	}
}
