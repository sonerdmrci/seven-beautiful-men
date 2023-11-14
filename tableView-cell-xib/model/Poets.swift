//
//  poets.swift
//  tableView-cell-xib
//
//  Created by Soner Demirci on 14.11.2023.
//

import UIKit

class Poets{
    let name: String
    let image: UIImage
    let rowTypes: RowTypes
    
    init(name: String, image: UIImage, rowTypes: RowTypes) {
        self.name = name
        self.image = image
        self.rowTypes = rowTypes
    }
    
}
