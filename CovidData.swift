//
//  CovidData.swift
//  CoreDataProject
//
//  Created by Admin on 25.09.2021.
//

import Foundation

struct CovidData: Decodable {
    let country: String?
    let newCases: String?
    let newDeath: String?
    let totalCases: String?
    let totalDeath: String?
    
    enum CodingKeys: String, CodingKey {
        case country = "Country_text"
        case newCases = "New Cases_text"
        case newDeath = "New Deaths_text"
        case totalCases = "Total Cases_text"
        case totalDeath = "Total Deaths_text"
    }
}
