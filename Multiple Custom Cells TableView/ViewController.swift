//
//  ViewController.swift
//  Multiple Custom Cells TableView
//
//  Created by Akshay Yendhe on 13/01/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //This is the way to create table view programatically.cell register with identifier also using closure.
    private let tableView : UITableView = {
        let table = UITableView()
        
        table.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier) //custom cell created.
        
        // we created another custom cell for imageview, we are not going to use self because we have xib thats why we use nib() function that we are created.
        table.register(ImageTableViewCell.nib(), forCellReuseIdentifier: ImageTableViewCell.identifier)
        
        table.register(CodedTableViewCell.self, forCellReuseIdentifier: CodedTableViewCell.identifier)
        
        return table
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView) //method called addsubview/.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //we have to add subview manually because we dont use UITableView Drag and drop way.
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CodedTableViewCell.identifier, for: indexPath) as! CodedTableViewCell
            cell.configureImageView()
            return cell
        }
        
        if indexPath.row < 10 {
            //show image cell
            let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath) as! ImageTableViewCell
            cell.configureImageView(with: "image1")
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier, for: indexPath)
        
        cell.textLabel?.text = "Hello World"
        
        return cell
        
    }


}

