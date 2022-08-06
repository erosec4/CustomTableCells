//
//  ViewController.swift
//  CustomCellsTest
//
//  Created by Emma Carpenetti on 7/25/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(CustomTableViewCell.nib(),
                       forCellReuseIdentifier: CustomTableViewCell.identifier) // ??
        table.delegate = self
        table.dataSource = self
    }
    
    let customTexts = ["apples", "oranges", "peaches", "bananas"]
    let colors = [UIColor.systemRed, UIColor.systemOrange, UIColor.systemPink, UIColor.systemYellow]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customTexts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath)  as! CustomTableViewCell
        
        cell.cellLabel.text = customTexts[indexPath.row]
        
        cell.cellView.backgroundColor = colors[indexPath.row]
        
        return cell
    }

}

