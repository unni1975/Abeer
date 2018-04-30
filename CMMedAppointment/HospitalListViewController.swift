//
//  HospitalListViewController.swift
//  CMMedAppointment
//
//  Created by Unni K S on 4/25/18.
//  Copyright © 2018 calmove. All rights reserved.
//

import Foundation
import UIKit
import FontIcons

class HospitalListViewController:UIViewController,UITableViewDataSource,UITableViewDelegate, UISearchResultsUpdating  {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        cancelButton.image = UIImage(icon: FontAwesome.chevronLeft, size: CGSize(width: 20, height: 20))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "hospitalCell";
        let cell = self.tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.imageView?.image = UIImage(icon: FontAwesome.hospitalO, size: CGSize(width: 30, height: 30), textColor: .black , backgroundColor: .clear)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    @IBAction func onCancel(_ sender: Any) {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
    
}
