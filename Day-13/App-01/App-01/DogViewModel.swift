//
//  DogViewModel.swift
//  App-01
//
//  Created by Nguyễn Minh on 18/01/2018.
//  Copyright © 2018 Nguyễn Minh. All rights reserved.
//

import UIKit
class DogViewModel {
    private var myDog: Dog
    init(name: String) {
        self.myDog = Dog(dogName: name)
    }
    
    var dogName: String {
        return myDog.name
    }
    
    var dogLeg: String {
        return "\(myDog.leg)"
    }
    
    var dogNameAndLegs: String {
        return "The dog \(myDog.name) has \(myDog.leg) legs"
    }
    //pass to view
}
