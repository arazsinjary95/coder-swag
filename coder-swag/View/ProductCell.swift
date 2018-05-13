//
//  ProductCell.swift
//  coder-swag
//
//  Created by Araz Sinjary on 5/12/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    //every time when collectionView is created we're going to pass it need to be update it.
    func updateViews(product: Product) {
        
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
