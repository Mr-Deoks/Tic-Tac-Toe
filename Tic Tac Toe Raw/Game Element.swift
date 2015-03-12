//
//  Game Element.swift
//  Tic Tac Toe Raw
//
//  Created by Denis Aganin on 12.03.15.
//  Copyright (c) 2015 Denis Aganin. All rights reserved.
//

import Foundation
import UIKit

class GameElement {
    var name = Type.Default
    var image = UIImage(named: "")
}

enum Type {
    case X
    case O
    case Default
}