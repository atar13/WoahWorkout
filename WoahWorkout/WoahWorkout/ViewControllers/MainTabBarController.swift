//
//  MainTabBarController.swift
//  WoahWorkout
//
//  Created by Anthony Tarbinian on 3/31/20.
//  Copyright © 2020 Anthony Tarbinian. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    
    let startVC = StartViewController()
    let workoutVC = WorkoutViewController()
    let dataVC = DataViewController()
    let settingsVC = SettingsViewController()
    
    
    
    override func loadView() {
        super.loadView()
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let workoutNC = WorkoutNavigationController(rootViewController: workoutVC)
        let dataNC = DataNavigationController(rootViewController: dataVC)
        let settingsNC = SettingsNavigationController(rootViewController: settingsVC)

        let tabBarViewControllers: [UIViewController] = [startVC, workoutNC, dataNC, settingsNC]
   
        setViewControllers(tabBarViewControllers, animated: true)
        
        configTabBarProperties(viewController: startVC, tabBarTitle: "Start", tabBarImageName: "StartTab")
        configTabBarProperties(viewController: workoutNC, tabBarTitle: "Workout", tabBarImageName: "WorkoutTab")
        configTabBarProperties(viewController: dataNC, tabBarTitle: "Data", tabBarImageName: "DataTab")
        configTabBarProperties(viewController: settingsNC, tabBarTitle: "Settings", tabBarImageName: "SettingsTab")
        

    }
    
    
    /**
            Method to configure tab bar item title and image properties
            To configure the image set the parameter to the String value equivalent to the one in the Assets folder
     */
    func configTabBarProperties(viewController: UIViewController, tabBarTitle: String, tabBarImageName: String){
        viewController.tabBarItem.title = tabBarTitle
        let tabBarImage = UIImage(named: tabBarImageName)
        viewController.tabBarItem.image = tabBarImage
    }


}
