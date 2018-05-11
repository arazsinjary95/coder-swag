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


}










