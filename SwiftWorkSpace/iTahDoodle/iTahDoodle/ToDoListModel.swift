//
//  TodoListModel.swift
//  iTahDoodle
//
//  Created by 王朝孟 on 2022/1/26.
//

import UIKit

class TodoListModel: NSObject {

//    private let findURL : URL = {
//        let documentDictoryURLs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
//        var documentDirectoryURL = documentDictoryURLs.first!
//
//        return documentDirectoryURL.appendPathComponent("todoFile")
//    }()
    
    
    private let findURL1 : URL = { () -> URL in
        
        let documentDictoryURLs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        var documentDirectoryURL = documentDictoryURLs.first!
        
        return documentDirectoryURL.appendPathComponent("todoFile")
    }()
    
    
    fileprivate var items:[String] = []
    
    func add(_ item:String){
        items.append(item)
    }
}

extension TodoListModel:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = items[indexPath.row]
        cell.textLabel!.text = item
        
        return cell;
    }
}
