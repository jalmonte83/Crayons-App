//
//  ViewController.swift
//  Crayons
//
//  Created by Jeffrey Almonte on 12/3/18.
//  Copyright © 2018 Jeffrey Almonte. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    // all the crayons from the model
    private var crayons = Crayon.allTheCrayons
    override func viewDidLoad() {
        super.viewDidLoad()
tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
            let crayonDeatailController = segue.destination as? CrayonDeatailViewController else { fatalError("missing indexPath, crayonDetailViewControllor)}
    }
}


extension CrayonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red/255), green: CGFloat(crayon.green/255), blue: CGFloat(crayon.blue/255), alpha: 1.0)
        return cell
    }
}
