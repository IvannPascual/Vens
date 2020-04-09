//
//  ShopsListVC.swift
//  Vens
//
//  Created by Ivan Pascual Palacios on 09/04/2020.
//  Copyright © 2020 Covid. All rights reserved.
//

import Foundation
import UIKit

class ShopsListVC: UIViewController {

    @IBOutlet weak var shopsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpDelegates()
        setUpTableViewCellIdentifiers()
        
    }
    
    
    private func setUpDelegates() {
        shopsTableView.delegate = self
        shopsTableView.dataSource = self
    }
    
    private func setUpTableViewCellIdentifiers() {
        shopsTableView.register(ShopCell.nib(), forCellReuseIdentifier: ShopCell.identifier)
    }


}


extension ShopsListVC : UITableViewDelegate {
    
}

extension ShopsListVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ShopCell.identifier, for: indexPath)
        return cell
    }
    
    
}
