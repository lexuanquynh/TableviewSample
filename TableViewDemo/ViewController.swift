//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Babie Xcode on 10/28/18.
//  Copyright © 2018 Quynhbkhn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var mTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mTableView.dataSource = self
        mTableView.delegate = self
        mTableView.separatorStyle = .none
        
        mTableView.register(UINib(nibName: "FlowerTableViewCell", bundle: nil), forCellReuseIdentifier: "FlowerTableViewCell")
        mTableView.register(UINib(nibName: "SkyTableViewCell", bundle: nil), forCellReuseIdentifier: "SkyTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FlowerTableViewCell", for: indexPath) as! FlowerTableViewCell
            cell.setData(title: "Day la titile", description: "Day la descrition")
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SkyTableViewCell", for: indexPath) as! SkyTableViewCell
//            cell.setData(title: "Day la titile", description: "Day la descrition")
            
            return cell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}

