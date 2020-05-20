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

    var workoutArray:[String] = ["Sit Ups", "Planks","idk","how many","more"]
    
    let workoutTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let workoutTableView = UITableView(frame: .init(origin: .zero, size: self.view.bounds.size))

        view.backgroundColor = .red
        
        title = "Workouts"
        
        let addWorkoutButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(openWorkoutSelector))
        navigationItem.rightBarButtonItem = addWorkoutButton
        
        workoutTableView.dataSource = self
        workoutTableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(workoutTableView)
        setupTableViewConstraints()
        
//        view.addConstraints([
//            workoutTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            workoutTableView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//        ])
    }
    
    func setupTableViewConstraints(){
        workoutTableView.translatesAutoresizingMaskIntoConstraints = false
        workoutTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        workoutTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        workoutTableView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        workoutTableView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
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
