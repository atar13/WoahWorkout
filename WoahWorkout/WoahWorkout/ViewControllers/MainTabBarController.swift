//
//  MainTabBarController.swift
//  WoahWorkout
//
//  Created by Anthony Tarbinian on 3/31/20.
//  Copyright © 2020 Anthony Tarbinian. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    
    let startTab = UITabBarItem()
    
    override func loadView() {
        super.loadView()
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .blue
        
        let startVC = StartViewController()
        
        setViewControllers([startVC], animated: true)
        
//        startTab.title = "Start"
//        let startTabImage = UIImage(named: "StartTab")
//        startTab.image = startTabImage
        
        configTabBarProperties(viewController: startVC, tabBarTitle: "Start", tabBarImageName: "StartTab")

        // Do any additional setup after loading the view.
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
