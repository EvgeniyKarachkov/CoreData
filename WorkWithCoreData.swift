//
//  WorkWithCoreData.swift
//  CoreDataProject
//
//  Created by Admin on 28.09.2021.
//

import Foundation
import CoreData
import SwiftUI



protocol Storage {
    func save (_ country: String, _ cases: String, _ death: String, _ allCases: String, _ allDeath: String)
    func deleteRow(_ task: Task, indexPath: IndexPath)
}

private var tasks:[Task] = []
private let manageContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

class CoreDataStorage: UITableViewController, Storage {
    func deleteRow(_ task: Task, indexPath: IndexPath) {
         manageContext.delete(task)
            
            do {
                try manageContext.save()
                tasks.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .middle)
            } catch let error {
                print(error.localizedDescription)
            }
    }
    
    
    func save(_ country: String, _ cases: String, _ death: String, _ allCases: String, _ allDeath: String) {
        guard let entityDescription = NSEntityDescription.entity(forEntityName: "Task",
                                                                 in: manageContext) else { return }
        let task = NSManagedObject(entity: entityDescription, insertInto: manageContext) as! Task
        task.country = country
        task.cases = cases
        task.death = death
        task.allcases = allCases
        task.alldeath = allDeath
        
        do {
            try manageContext.save()
            tasks.append(task)
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
}










