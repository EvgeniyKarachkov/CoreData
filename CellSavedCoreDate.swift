//
//  CellSavedCoreDate.swift
//  CoreDataProject
//
//  Created by Admin on 02.10.2021.
//

import UIKit

class CellSavedCoreDate: UITableViewCell {
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var casesThisDay: UILabel!
    @IBOutlet weak var deathThisDay: UILabel!
    @IBOutlet weak var totalCases: UILabel!
    @IBOutlet weak var totalDeath: UILabel!
    @IBOutlet weak var imageFlag: UIImageView!
    
    var cell: [Task] = []
    
    func savedCell(with data: Task) {
        
        let allCountryCodes = CountryCode.all
        let url = CountryCode.getURLofImage(dict: allCountryCodes, value: data.country!)
        
        country.text = "bfdh \(data.country!)"
        casesThisDay.text = "dsfjb \(data.cases!)"
        deathThisDay.text = "edcvd \(data.death!)"
        totalCases.text = "sfewds \(data.allcases!)"
        totalDeath.text = "hdsfg \(data.alldeath!)"
        
        
        DispatchQueue.global().async {
            
            let image: UIImage?
            
            if let url = url, let imageUrl = URL(string: url), let imageData = try? Data(contentsOf: imageUrl) {
                image = UIImage(data: imageData)
                
            } else {
                image = UIImage(named: "NoImage")
                
            }
            DispatchQueue.main.async {
                self.imageFlag.image = image
//                self.imageFlag.layer.cornerRadius = 50
//                self.imageFlag.clipsToBounds = true
                
                
            }
        }
    }
    }

