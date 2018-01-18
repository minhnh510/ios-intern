//
//  ProductViewModel.swift
//  App-02 MVVM
//
//  Created by Nguyễn Minh on 18/01/2018.
//  Copyright © 2018 Nguyễn Minh. All rights reserved.
//

import UIKit

class ProductViewModel {
   
    var productLists = [Product]()
    
    init() {
        self.productLists.append(Product(name: "ao", price: 5.11))
        self.productLists.append(Product(name: "dongho", price: 12.6))
        self.productLists.append(Product(name: "giay", price: 10.5))
        self.productLists.append(Product(name: "loa", price: 23.88))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
        self.productLists.append(Product(name: "mubaohiem", price: 3.14))
    }
    
    var getProductLists: [Product] {
        return productLists
    }
    
    //
}


