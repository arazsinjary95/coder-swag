//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Araz Sinjary on 5/13/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.delegate = self
        productsCollection.dataSource = self
    }

    func initProducts(category: Category) {
        
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        
        //set title for navigationbar
        navigationItem.title = category.title
        //for backbuttonitem we can't set here the reson is decause the navigationbar is previous viewcontroller.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            
            return cell
        }
        
        return ProductCell()
    }
    


}














