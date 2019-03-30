//
//  TablaVC.swift
//  Tabla
//
//  Created by L01451229 on 4/28/16.
//  Copyright © 2016 itesm.mx. All rights reserved.
//

import UIKit

class TablaVC: UITableViewController {
    let names = ["Ale", "Jorge", "Jessica",
                 "Eduardo", "Carlos", "Raul"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configurar celda
        cell.textLabel?.text = names [indexPath.row]
        
        return cell
    }
    
}
