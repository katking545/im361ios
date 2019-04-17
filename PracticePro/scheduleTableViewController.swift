//
//  scheduleTableViewController.swift
//  PracticePro
//
//  Created by Katrina King on 4/17/19.
//  Copyright © 2019 Katrina King. All rights reserved.
//

import Foundation
import UIKit

class ScheduleTableViewController: UITableViewController {
    
    let data = [
        Lessons(name: "Practice", difficulty: 4, time: 3),
        Lessons(name: "Flutter Tounge", difficulty: 4, time: 3),
        Lessons(name: "Perfect Pitch", difficulty: 8, time: 1000),
        Lessons(name: "Hot Cross Buns", difficulty: -1, time: -5)
]
    
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PracticeViewCell") as? PracticeViewCell else {
            fatalError("No cell available")
        }
        
        let lessons = data[indexPath.row]
        
        cell.firstLable.text = lessons.name
        cell.SecondLable.text = "Difficulty: \(lessons.difficulty)"
        cell.ThirdLable.text = "\(lessons.time) min"
        
        return cell
    }
    
}

