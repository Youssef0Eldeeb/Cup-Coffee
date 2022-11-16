//
//  FevoriteViewController.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 16/11/2022.
//

import UIKit

class FevoriteViewController: UIViewController {
    
    @IBOutlet weak var collectionVeiw: UICollectionView!
    
    var fevoites: [ShopSpecial] = [
        .init(image: UIImage(named: "Cappuccino"), name: "Cappuccino", price: "210.00"),
        .init(image: UIImage(named: "Chocolate coffee"), name: "Chocolate coffee", price: "234.00"),
        .init(image: UIImage(named: "Cortadito"), name: "Cortadito", price: "170.00"),
        .init(image: UIImage(named: "South filtered"), name: "South filtered", price: "242.00")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionVeiw.delegate = self
        collectionVeiw.dataSource = self
        
        registerCell()
    }
    
    private func registerCell(){
        collectionVeiw.register(UINib(nibName: FevoriteCollectionViewCell.identifire, bundle: nil), forCellWithReuseIdentifier: FevoriteCollectionViewCell.identifire)
    }
    
    
}

extension FevoriteViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fevoites.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FevoriteCollectionViewCell.identifire, for: indexPath) as! FevoriteCollectionViewCell
        cell.setup(favoriteCup: fevoites[indexPath.row])
        return cell
    }
    
}
