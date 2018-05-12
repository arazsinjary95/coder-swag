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
    
    //this for tableview
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
    
    //this for collectionview
    //here we get products
    private let hats = [
    
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "&22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
    
        Product(title: "Devslopes Logo Hoodies Gray", price: "$31", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodies Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo  Gray", price: "$34", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Black", price: "$32", imageName: "hoodie04.png"),
    ]
    
    private let shirts = [
        
        Product(title: "Devslopes Logo Shiert Black", price: "$19", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shiert Light Gray", price: "$15", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shiert Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Logo Gray", price: "$16", imageName: "shirt04.png"),
        Product(title: "Kickglip Studios Black", price: "$19", imageName: "shirt05.png"),
    ]
    
    //if i remove the parentheses at end it will be crash.
    private let digitalGoods = [Product]()
    
    //after get product need to specify a product.
    func getProducts(forCategoryTitle title: String) -> [Product]{
        
        switch title {
            //this case in table view when we click a Shirts it will dsplay product shirts.
        case "SHIRTS":
           return getShirt()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirt()
        }
    }
    
    func getHats() -> [Product] {
        
        return hats
    }
    
    func getHoodies() -> [Product] {
        
        return hoodies
    }
    
    func getShirt() -> [Product] {
        
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        
        return digitalGoods
    }
}
















