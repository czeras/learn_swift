//
//  ViewController.swift
//  iTahDoodle
//
//  Created by YongQin on 2022/1/17.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    @IBOutlet weak var itemTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    let todoListModel = TodoListModel();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
//        self.view.backgroundColor = UIColor.red;
        
//        self.view.addSubview(box)
//        box.backgroundColor = .green
//        box.snp.makeConstraints { (make) -> Void in
//            make.width.height.equalTo(50)
//            make.center.equalTo(self.view)
//        }
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todoListModel
    }
    
    // MARK: 按钮点击事件
    @IBAction func addBtnPressed(_ sender: UIButton) {
//        print("Add to-do item:\(String(describing: itemTextField.text))")
        
        guard let todo = itemTextField.text else {
            return
        }
        
        todoListModel.add(todo)
        
        tableView.reloadData()
    }
    
    
    
}

