//
//  HelloViewController.swift
//  HelloWorld
//
//  Created by Ketan Lotia on 28/07/18.
//  Copyright © 2018 Ketan Lotia. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var countryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryTableView.dataSource = self
        countryTableView.delegate = self
        
        self.navigationItem.rightBarButtonItem = editButtonItem
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        countryTableView.setEditing(editing, animated: animated)
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let answer = countries[section].count
        return answer
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = countries[indexPath.section][indexPath.row]
        cell.detailTextLabel?.text = continents[indexPath.section]
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return continents.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return continents[section]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let country = countries[indexPath.section][indexPath.row]
        let continent = continents[indexPath.section]
        print(country + "\t\t" + continent)
    }
    
}
