//
//  FavsTableViewController.swift
//  tK Fan
//
//  Created by sudo on 7/3/17.
//  Copyright © 2017 sudo. All rights reserved.
//

import UIKit

class FavsTableViewController: UITableViewController {
var member = Members()
    // This variable will hold the data being passed from the First View Controller
     var store = DataStore.sharedInstnce
    override func viewDidLoad() {
        super.viewDidLoad()
      
        loadData()

        if member.altName == " " {
//            self.NavTitle.topItem?.title = self.member.name
            
        } else {
//            self.NavTitle.topItem?.title = self.member.altName
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.store.memberAdd.count
    }


    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.store.memberAdd[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
             store.memberAdd.remove(at: indexPath.row)
            NSKeyedArchiver.archiveRootObject(self.store.memberAdd, toFile: filePath)

            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableViewRowAnimation.automatic)
            

            
            
            
        }
    }
    
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            let member = Members.getMember(name: self.store.memberAdd[indexPath.row].name)
            print("This is the member you are sending over to die\(member.name)")
                
                self.performSegue(withIdentifier: "MembersSegue", sender: member)

        
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let ControlME2 = segue.destination as! profileViewController
            ControlME2.member = sender as! Members
        }
    public func loadData() {
        //get our data along our file path and cast it as an array of Member Path
        if let ourData = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as? [MemberAdd] {
            self.store.memberAdd = ourData
        }
        
}

}



