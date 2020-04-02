//
//  WorkoutViewController.swift
//  WoahWorkout
//
//  Created by Anthony Tarbinian on 3/31/20.
//  Copyright © 2020 Anthony Tarbinian. All rights reserved.
//

import UIKit

class WorkoutViewController: UIViewController , UITableViewDataSource{
   
    let workoutSelectionVC = WorkoutSelectionVC()

    var workoutArray:[String] = ["Sit Ups", "Planks"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let workoutTableView = UITableView(frame: .init(origin: .zero, size: view.frame.size))


        view.backgroundColor = .red
        
        title = "Workouts"
        
        let addWorkoutButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(openWorkoutSelector))
        navigationItem.rightBarButtonItem = addWorkoutButton
        
        workoutTableView.dataSource = self
        workoutTableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(workoutTableView)
        
//        view.addConstraints([
//            workoutTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            workoutTableView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//        ])
    }
    
    
    @objc func openWorkoutSelector(){
        present(workoutSelectionVC, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            workoutArray.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell()
        cell.textLabel?.text = workoutArray[indexPath.item]
        return cell
    }
}
