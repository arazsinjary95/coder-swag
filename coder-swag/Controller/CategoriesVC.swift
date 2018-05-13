//
//  ViewController.swift
//  coder-swag
//
//  Created by Araz Sinjary on 5/10/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.delegate = self
        categoryTable.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateView(category: category)
            
            return cell
        }
        else {
            
            return CategoryCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let category = DataService.instance.getCategories()[indexPath.row]
        //why sender is category the reson is in dataservice our getproduct it have switch of category!!!
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let productsVC = segue.destination as? ProductsVC {
            
            //this for backbarbuttonitem
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            //at built time not for production we will create (assertion) this for we know that this is working correctly.
            assert(sender as? Category != nil)
            //sender is category here declare is no any, why because in the up in didselectrowat our sender is categoty.
            productsVC.initProducts(category: sender as! Category)
        }

}

}








