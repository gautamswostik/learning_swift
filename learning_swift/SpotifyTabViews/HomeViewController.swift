//
//  HomeViewController.swift
//  learning_swift
//
//  Created by swostik gautam on 17/11/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    let tableView : UITableView = {
        let tableView = UITableView()
        //if you have madde custom table cell pass that otherwise pass UITableViewCell
        // register bableview
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "LearningTableView")
        tableView.showsVerticalScrollIndicator = false
        return tableView
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
        view.addSubview(tableView)
        
        
        setupTableDelegate()
    }
    
    func setupTableDelegate(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableView.frame = view.bounds
    }
    
}


extension HomeViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LearningTableView" , for: indexPath)
        cell.textLabel?.text = "Hello Swostik this is table view and you are learning Uikit and IOS"
        cell.textLabel?.numberOfLines = 0
        cell.backgroundColor = .systemPurple
        
        return cell
    }
    
    
}
