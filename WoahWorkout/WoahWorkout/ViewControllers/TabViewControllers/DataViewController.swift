//
//  DataViewController.swift
//  WoahWorkout
//
//  Created by Anthony Tarbinian on 3/31/20.
//  Copyright © 2020 Anthony Tarbinian. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    
    let jsonLabel = UILabel(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        
        title = "Data"
        
        
        let displayButton = UIBarButtonItem(barButtonSystemItem: .play, target: self, action: #selector(readJson))
        
        navigationItem.rightBarButtonItem = displayButton

        jsonLabel.translatesAutoresizingMaskIntoConstraints = false
        jsonLabel.text = "x"
               
//               view.addSubview(jsonLabel)
               
//               view.addConstraints([
//                      jsonLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//                      jsonLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//                  ])


     
    }
    
     @objc func readJson(){
            let path = Bundle.main.path(forResource: "workouts", ofType: "json")
    //        print(path!)
            
            let url = URL(fileURLWithPath: path!)
//            print(url)
            
            let data = try! Data(contentsOf: url)
            let obj = try! JSONSerialization.jsonObject(with: data, options: .allowFragments)
//            print(obj)
            
            if let str = (obj as! NSDictionary).value(forKey: "workout"){
                self.jsonLabel.text = str as? String ?? ""
        }
        
        
//        print(txt)

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
