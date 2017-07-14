//
//  ViewController.swift
//  Binary_Counter
//
//  Created by Seth Bishop on 7/12/17.
//  Copyright © 2017 Seth Bishop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var total = 0
    
    @IBOutlet weak var totalLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = "Total: \(total)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCell", for: indexPath) as! BinaryCell
        cell.delegate = self
        cell.BinaryLabel?.text = "\(pow(10, indexPath.row))"
        
        return cell
    }
}

extension ViewController: BinaryTableViewCellDelegate {
    func valueChangedBy(value: Int) {
        total += value
        totalLabel.text = "Total: \(total)"
    }
}
