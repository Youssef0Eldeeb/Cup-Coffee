//
//  ShopSpecialCollectionViewCell.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 08/11/2022.
//

import UIKit

class ShopSpecialCollectionViewCell: UICollectionViewCell {

    static let identifire = String(describing: ShopSpecialCollectionViewCell.self)
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(_ coffee: ShopSpecial){
        image.image = coffee.image
        name.text = coffee.name
        price.text = coffee.price
    }

}
