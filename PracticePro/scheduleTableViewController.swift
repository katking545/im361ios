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
        Lessons(name: "Theory 101", difficulty: 4, time: 3),
        Lessons(name: "Learn to Flutter Tounge", difficulty: 4, time: 3),
        Lessons(name: "Perfect Pitch", difficulty: 8, time: 30),
        Lessons(name: "Hot Cross Buns", difficulty: -1, time: 2),
        Lessons(name: "Theory Intermediate", difficulty: 6, time: 15),
        Lessons(name: "Piano Basics", difficulty: 4, time: 15),
        Lessons(name: "High Note Boot Camp", difficulty: 7, time: 9),
        Lessons(name: "How Your Instrument Works", difficulty: 3, time: 10)
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

