//
//  ViewController.swift
//  test_patterns
//
//  Created by Александр Арсенюк on 16.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let notificationCenter = NotificationCenter.default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let notification = Notification.Name("changeColor")
        notificationCenter.addObserver(self, selector: #selector(changeColor), name: notification, object: nil)
        
//        let shop = Shop()
//
//        let buyer1 = Buyer(index: "1")
//        let buyer2 = Buyer(index: "2")
//        let buyer3 = Buyer(index: "3")
//
//        shop.subscribe(buyer: buyer1)
//        shop.subscribe(buyer: buyer3)
//
//        shop.notify()
        
//        let session = Session.instance
//        session.fio = "Igor"
//        session.age = 34
    }
    
    @objc func changeColor() {
        view.backgroundColor = [.red, .yellow].randomElement()
    }
    
    deinit {
        notificationCenter.removeObserver(self)
    }


}

