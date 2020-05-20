//
//  WorkoutSelectionVC.swift
//  WoahWorkout
//
//  Created by Anthony Tarbinian on 4/2/20.
//  Copyright © 2020 Anthony Tarbinian. All rights reserved.
//

import UIKit

class WorkoutSelectionVC: UIViewController {

    //put the saving json stuff into viewWillDissappear
    
    let backButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackButton()
      
     
        view.backgroundColor = .blue
        // Do any additional setup after loading the view.
        
        

        
        
    }
    
    
    @objc func dismissVC() {
        self.dismiss(animated: true, completion: nil)
    }
  
    func setupBackButton(){
//        backButton.frame = .init(origin: .zero, size: self.view.bounds.size)
        backButton.backgroundColor = .red
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(.black, for: .normal)
        backButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        view.addSubview(backButton)
        setupBackButtonConstraints()
    }
    
    func setupBackButtonConstraints(){
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        backButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
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
