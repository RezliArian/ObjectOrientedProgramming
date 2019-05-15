//
//  ViewController.swift
//  ObjectOrientedProgramming
//
//  Created by Rezli Arian Perdana on 15/05/19.
//  Copyright © 2019 RezL.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profilImage: UIImageView!
    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerHeightLabel: UILabel!
    @IBOutlet weak var planeBrandLabel: UILabel!
    @IBOutlet weak var planeFuelLabel: UILabel!
    @IBOutlet weak var planeHeightLabel: UILabel!
    
    var learnerInstance:LearnerModel?
    var planeInstance:PlaneModel?
    var facilitatorInstance:FacilitatorModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        learnerInstance = LearnerModel(learnerName: "Rezli", learnerAge: 21, learnerHeight: 175.0, learnerImageProfile: "")
        
        facilitatorInstance = FacilitatorModel(facilName: "David", facilAge: 23, facilHeight: 175.0, facilImageProfile: "", facilPerk: "Free Flow Starbuck")
        
        
        planeInstance = PlaneModel(planeBrand: "Ayam Air", planeFuel: 500, planeHeight: 2000)
        
        updateUI()

    }
    
    func updateUI() {
        if let instance = learnerInstance {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerHeightLabel.text = "\(instance.height)"
        }
        
        if let instan = planeInstance{
            planeBrandLabel.text = instan.brand
            planeFuelLabel.text = "\(instan.fuel)"
            planeHeightLabel.text = "\(instan.height)"
        }
    }

    @IBAction func increaseAgeButtonClicked(_ sender: UIButton) {
        if let instance = learnerInstance{
            instance.increaseAge()
            updateUI()
    }
    
    }
    
    @IBAction func increaseHeightButtonClicked(_ sender: UIButton) {
        if let instan = planeInstance{
            instan.increaseHeight()
            updateUI()
        }
    }
    
}
