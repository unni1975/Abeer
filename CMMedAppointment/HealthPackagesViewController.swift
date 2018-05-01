//
//  HealthPackagesViewController.swift
//  CMMedAppointment
//
//  Created by Unni K S on 4/30/18.
//  Copyright © 2018 calmove. All rights reserved.
//

import UIKit
import FontIcons

class HealthPackagesViewController: UITableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "PackageCell";
        let cell = self.tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PackageCell
        cell.numberLabel.text = String(indexPath.row + 1)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let browserVC = BrowserViewController(nibName: nil, bundle: nil)
        let browserTitle = "HEALTH_DETAIL_TITLE".localized()
        browserVC.title = browserTitle
        browserVC.urlString = "http://calmoveindia.com/Package.aspx?PID=2"
        self.navigationController?.pushViewController(browserVC, animated: true)
    }
    
}
