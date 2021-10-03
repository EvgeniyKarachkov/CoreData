//
//  DataFromNetwork.swift
//  CoreDataProject
//
//  Created by Admin on 25.09.2021.
//

import UIKit

class DataFromNetwork: UITableViewCell {
    
    @IBOutlet weak var imageFlag: UIImageView!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var newCases: UILabel!
    @IBOutlet weak var newDeath: UILabel!
    @IBOutlet weak var totalCases: UILabel!
    @IBOutlet weak var totalDeath: UILabel!
    
   
    func configuration(with data: CovidData) {
        
        let allCountryCodes = CountryCode.all
        let url = CountryCode.getURLofImage(dict: allCountryCodes, value: data.country!)
        
        if data.country != nil {
            country.text = "Country: \(data.country!)"
        } else {
            country.text = "Country: No data"
        }
        
        
        if data.newCases != "" {
            newCases.text = "New Cases: \(data.newCases!)"
            
        } else {
            newCases.text = "New Cases: No data"
        }
        
        
        if data.newDeath != ""  {
            newDeath.text = "New Death: \(data.newDeath!)"
        } else {
            newDeath.text = "New  Death: No data"
        }
        
        if data.totalCases != "" {
            totalCases.text = "Total Cases: \(data.totalCases!)"
        } else {
            totalCases.text = "Total Cases: No data"
        }
        
        if data.totalDeath != "" {
            totalDeath.text = "Total Death: \(data.totalDeath!)"
        } else {
            totalDeath.text = "Total Death: No data"
        }
        
        
       
        
        DispatchQueue.global().async {
            
            let image: UIImage?
  
            if let url = url, let imageUrl = URL(string: url), let imageData = try? Data(contentsOf: imageUrl) {
                image = UIImage(data: imageData)
                
            } else {
                image = UIImage(named: "NoImage")
            
            }
            DispatchQueue.main.async {
                self.imageFlag.image = image
                self.imageFlag.layer.cornerRadius = 50
                self.imageFlag.clipsToBounds = true
                
                
            }
        }
    }
    
}
