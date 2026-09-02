//
//  PressableButton.swift
//  Profile Card
//
//  Created by Adrian Flores Herrera on 8/20/26.
//

import UIKit

final class PressableButton: UIButton {

    override var isHighlighted: Bool {
        didSet {
            alpha = isHighlighted ? 0.7 : 1.0
        }
    }
}
