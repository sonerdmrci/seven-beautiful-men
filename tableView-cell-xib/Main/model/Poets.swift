//
//  poets.swift
//  tableView-cell-xib
//
//  Created by Soner Demirci on 14.11.2023.
//

import UIKit

class Poets{
    let id: Int
    let name: String
    let image: UIImage
    
    init(id: Int, name: String, image: UIImage) {
        self.id = id
        self.name = name
        self.image = image
    }
}
