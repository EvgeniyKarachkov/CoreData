//
//  ViewController.swift
//  CoreDataProject
//
//  Created by Admin on 22.09.2021.
//

import UIKit
import CoreData

class ViewController: UITableViewController {
    
    private var tasks: [Task] = []
    var covidDatas: [CovidData] = []
    
    private let manageContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        fetchData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  140
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tasks.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")! as! CellSavedCoreDate
        
        let task = tasks[indexPath.row]
        cell.savedCell(with: task)
        cell.backgroundColor = UIColor.red
        cell.textLabel?.textColor = .white
       
       
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let row = tasks[indexPath.row]
        
        if editingStyle == .delete {let alert = UIAlertController(title: "Delete", message: "Do you really want to delete row?", preferredStyle: .actionSheet)
            
            let deleteRows = UIAlertAction(title: "Delete", style: .default) {_ in
                self.deleteRow(row, indexPath: indexPath)}
            
            alert.addAction(deleteRows)
            present(alert, animated: true, completion:nil)
            
            
        }
    }
    
    
    
    private func setupView() {
        setupNavigationBar()
        view.backgroundColor = .red
        
    }
    
    
    
    private func setupNavigationBar() {
        title = "Saved value"
        
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.red
       navigationController?.navigationBar.tintColor = .white
    }
   
    
    private func deleteRow(_ task: Task, indexPath: IndexPath) {
        
        manageContext.delete(task)
        
        do {
            try manageContext.save()
            tasks.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .middle)
        } catch let error {
            print(error.localizedDescription)
        }
        
        
        
    }
    
    private func fetchData() {
        let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
        
        do {
            tasks = try manageContext.fetch(fetchRequest)
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

