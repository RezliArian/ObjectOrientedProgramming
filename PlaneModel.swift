//
//  PlaneModel.swift
//  ObjectOrientedProgramming
//
//  Created by Rezli Arian Perdana on 15/05/19.
//  Copyright © 2019 RezL.inc. All rights reserved.
//

import Foundation

class PlaneModel{
    var brand: String
    var fuel: Int
    var height: Int
    
    init(planeBrand: String, planeFuel: Int, planeHeight: Int) {
        self.brand = planeBrand
        self.fuel = planeFuel
        self.height = planeHeight
    }
    
    func increaseHeight(){
        height += 1
        fuel -= 1
    }
}
