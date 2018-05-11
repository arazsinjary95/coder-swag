//
//  Category.swift
//  coder-swag
//
//  Created by Araz Sinjary on 5/11/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import Foundation

struct Category {
    
    //here we will protect our data, private(set) is mean is no longer be able access these variable to other classes, but i can't set them but i can retieve them and use them.public for fetching private for setting.
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        
        self.title = title
        self.imageName = imageName
    }
}
