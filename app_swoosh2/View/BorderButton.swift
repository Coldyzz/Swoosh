//
//  BorderButton.swift
//  app_swoosh2
//
//  Created by Дима Холод on 08.05.2022.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
