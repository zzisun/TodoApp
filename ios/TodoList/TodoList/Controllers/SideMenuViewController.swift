//
//  SideMenuViewController.swift
//  TodoList
//
//  Created by Jun Ho JANG on 2021/04/15.
//

import UIKit

class SideMenuViewController: UIViewController {
    
    @IBAction func sideMenuCloseButtonToggled(_ sender: Any) {
        self.isSideMenuOpen = false
    }
    @IBOutlet weak var sideMenuTableView: SideMenuTableView!
    
    let sideMenuTableViewDelegate = SideMenuTableViewDelegate()
    
    var isSideMenuOpen = false {
        didSet(oldValue) {
            NotificationCenter.default.post(name: .didChangeSideMenuToggle, object: oldValue)
            print(oldValue)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.sideMenuTableView.dataSource = sideMenuTableViewDelegate
        self.sideMenuTableView.register(UINib(nibName: "SideMenuTableViewCell", bundle: nil), forCellReuseIdentifier: "SideMenuTableViewCell")
    }
    
}