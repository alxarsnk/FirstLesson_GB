//
//  ThrirdViewController.swift
//  test_patterns
//
//  Created by Александр Арсенюк on 16.11.2021.
//

import UIKit

class ThrirdViewController: UIViewController {
    
    let notificationCenter = NotificationCenter.default

    @IBOutlet weak var fioLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let session = Session.instance
        fioLabel.text = session.fio
        ageLabel.text = session.age.description
        
    }
    
    @IBAction func changeColorButton(_ sender: Any) {
        let notification = Notification.Name("changeColor")
        notificationCenter.post(name: notification, object: nil, userInfo: ["color": UIColor.cyan])
        let text = ["color", "name", "some", "iOS"].randomElement()
        ageLabel.text = text
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
