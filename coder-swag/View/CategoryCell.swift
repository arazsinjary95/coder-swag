//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Araz Sinjary on 5/10/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateView(category: Category) {
        
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
