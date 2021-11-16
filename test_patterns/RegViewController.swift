//
//  RegViewController.swift
//  test_patterns
//
//  Created by Александр Арсенюк on 16.11.2021.
//

import UIKit

class RegViewController: UIViewController, CityViewControllerDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        // Do any additional setup after loading the view.
    }
    

    func setCity(city: String) {
        cityLabel.text = city
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCity" {
            let controller = segue.destination as! CityViewController
            controller.delegate = self
        }
        
    }

}

extension RegViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        cityLabel.text = textField.text
    }

}
