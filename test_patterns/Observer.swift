//
//  Observer.swift
//  test_patterns
//
//  Created by Александр Арсенюк on 16.11.2021.
//

import Foundation


class Buyer {
    
    var index: String
    
    init(index: String) {
        self.index = index
    }
    
    func takeInfo() {
        print("\(index) info take")
    }
    
}

struct WeakBuyer {
    weak var buyer: Buyer?
}

class Shop {
    
    var listner = [WeakBuyer]()
    
    func subscribe(buyer: Buyer) {
        let weakListner = WeakBuyer(buyer: buyer)
        listner.append(weakListner)
    }
    
    func notify() {
        listner.forEach { $0.buyer?.takeInfo() }
    }
    
}
