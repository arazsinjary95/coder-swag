//
//  DataService.swift
//  coder-swag
//
//  Created by Araz Sinjary on 5/11/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import Foundation

class DataService {
    //this is a singleton!!!
    //static is mean one copy in menory this is going to hold our data for the app
    static let instance = DataService()
    
    //categories is array of type category
    private let categories = [
    
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    
    ]
    
    func getCategories() -> [Category] {
        
        return categories
    }
}
