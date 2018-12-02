//
//  Cell.swift
//  Stulin's Game of Life
//
//  Created by Masha Chausovsky on 9/16/18.
//  Copyright © 2018 King Ultimat0's Fabulous Creations. All rights reserved.
//

import Foundation

struct Cell: CustomStringConvertible, Hashable {
    
    var x: Int
    var y: Int
    var hashValue: Int {
        return x^3 - y^3
    }
    
    init (x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    var description: String {
        return "x: \(x), y: \(y)"
    }
    
    static func == (cell1: Cell, cell2: Cell) -> Bool {
        return cell1.x == cell2.x && cell1.y == cell2.y
    }

}
