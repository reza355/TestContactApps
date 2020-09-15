//
//  HomeListViewController.swift
//  ContactApps
//
//  Created by Fathureza Januarza on 15/09/20.
//  Copyright © 2020 Fathureza Januarza. All rights reserved.
//

import UIKit

internal final class HomeListViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension HomeListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
