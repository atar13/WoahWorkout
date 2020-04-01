//
//  SettingsNavigationController.swift
//  WoahWorkout
//
//  Created by Anthony Tarbinian on 3/31/20.
//  Copyright © 2020 Anthony Tarbinian. All rights reserved.
//

import UIKit

class SettingsNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.largeContentTitle = "Settings"
        title = "Settings"
        
        navigationBar.prefersLargeTitles = false
        navigationBar.isTranslucent = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
