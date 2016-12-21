//
//  ViewController.swift
//  DatingAppsTemplate
//
//  Created by Amit Chowdhury on 12/12/16.
//  Copyright © 2016 Amit Chowdhury. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var friendsTableView:UITableView!
    
    var userArray:NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendsTableView.dataSource = self
        
        let path = Bundle.main.path(forResource: "UserDataList", ofType: "plist")
        userArray = NSArray(contentsOfFile: path!)
        
       friendsTableView.register(UINib(nibName: "UserCustomTableCell", bundle: nil), forCellReuseIdentifier: "UserCellIdentifier")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
     // MARK: - Table view data source
    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return userArray.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "UserCellIdentifier"
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? UserCustomTableCell
        
        
        cell?.userNameLabel.text = (userArray[indexPath.row] as AnyObject).object(forKey: "name") as! String?
        cell?.userImageView.image = UIImage(named: ((userArray[indexPath.row] as AnyObject).object(forKey: "photo") as! String?)!)
        cell?.userDescriptionTextView.text = (userArray[indexPath.row] as AnyObject).object(forKey: "about") as! String?

        cell?.userNameLabel.textColor = UIColor.red

        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let learningAlertController = UIAlertController(title: "Hello!!!", message: (userArray[indexPath.row] as AnyObject).object(forKey: "name") as! String? , preferredStyle: .alert)
        
        
        let okAlertAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
            
            print("You've pressed OK button");
            
        }
        
        learningAlertController.addAction(okAlertAction)
        
        present(learningAlertController, animated: true, completion: nil)

    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        
        
    }

}

