//
//  SecondViewController.swift
//  test_patterns
//
//  Created by Александр Арсенюк on 16.11.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    let notificationCenter = NotificationCenter.default

    override func viewDidLoad() {
        super.viewDidLoad()

        let notification = Notification.Name("changeColor")
        notificationCenter.addObserver(self, selector: #selector(changeColor), name: notification, object: nil)
    }
    
    @objc func changeColor(notification: Notification) {
        let data = notification.userInfo?["color"]
        if let color = data as? UIColor {
            view.backgroundColor = color
        }
    }
    
    deinit {
        notificationCenter.removeObserver(self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
