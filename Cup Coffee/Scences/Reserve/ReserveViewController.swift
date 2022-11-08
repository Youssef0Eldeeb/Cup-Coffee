//
//  ReserveViewController.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 08/11/2022.
//

import UIKit

class ReserveViewController: UIViewController {

    @IBOutlet weak var shopImage: UIImageView!
    
    @IBOutlet weak var shopSpecialCollectionView: UICollectionView!
    
    
    var shopSpecials: [ShopSpecial] = [
        .init(image: UIImage(named: "Avocado Coffee"), name: "Avocado Coffee", price: "134.00"),
        .init(image: UIImage(named: "Cappuccino"), name: "Cappuccino", price: "210.00"),
        .init(image: UIImage(named: "Chocolate coffee"), name: "Chocolate coffee", price: "234.00"),
        .init(image: UIImage(named: "Cortadito"), name: "Cortadito", price: "170.00"),
        .init(image: UIImage(named: "Normal coffee"), name: "Normal coffee", price: "120.00"),
        .init(image: UIImage(named: "South filtered"), name: "South filtered", price: "242.00")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        shopSpecialCollectionView.delegate = self
        shopSpecialCollectionView.dataSource = self
        
        shopImage.roundCorners(corners: [.topLeft, .bottomLeft], radius: 20)
        registerCell()
    }
    private func registerCell(){
        shopSpecialCollectionView.register(UINib(nibName: ShopSpecialCollectionViewCell.identifire, bundle: nil), forCellWithReuseIdentifier: ShopSpecialCollectionViewCell.identifire)
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}


extension ReserveViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        shopSpecials.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ShopSpecialCollectionViewCell.identifire, for: indexPath) as! ShopSpecialCollectionViewCell
        
        cell.setup(shopSpecials[indexPath.row])
        return cell
    }
    
    
}
