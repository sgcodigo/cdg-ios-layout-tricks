//
//  MainViewController.swift
//  CDGLayoutTricks
//
//  Created by Jayden Ma on 28/5/18.
//  Copyright © 2018 Codigo. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tblGuides: UITableView!
    let tblGuidesCellIdentifier = "tblGuidesCell"
    var guides: [Any] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTable()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupTable() {
        tblGuides.register(UITableViewCell.self, forCellReuseIdentifier: tblGuidesCellIdentifier)
    }

}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return guides.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tblGuidesCellIdentifier, for: indexPath)
        
        return cell
    }
}
