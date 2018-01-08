//
//  BorderButton.swift
//  Swoosh
//
//  Created by Malcolm Kumwenda on 2018/01/08.
//  Copyright © 2018 mdevsa. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
}
