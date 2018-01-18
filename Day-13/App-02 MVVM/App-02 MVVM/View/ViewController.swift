//
//  ViewController.swift
//  App-02 MVVM
//
//  Created by Nguyễn Minh on 18/01/2018.
//  Copyright © 2018 Nguyễn Minh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let productView = ProductViewModel()

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        loadCustomCell()
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productView.getProductLists.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell
        
        let product = productView.getProductLists[indexPath.row]
        cell.initContent(product.name, product.name.capitalized, product.price)
        
        //cell.initContent("ao", "Ao", 5.12)
        
        return cell
    }

    func loadCustomCell() {
        let nibName = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        collectionView.register(nibName, forCellWithReuseIdentifier: "customCell")
    }


}

