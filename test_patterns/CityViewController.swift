//
//  CityViewController.swift
//  test_patterns
//
//  Created by Александр Арсенюк on 16.11.2021.
//

import UIKit

protocol CityViewControllerDelegate: AnyObject {
    func setCity(city: String)
}

class CityViewController: UIViewController {
    
    let cities = ["Moscow", "St.Peterburg", "Kazan", "New York"]
    
    weak var delegate: CityViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    
    

}

extension CityViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = cities[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cities.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.setCity(city: cities[indexPath.row])
    }

    
}
