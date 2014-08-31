//
//  ViewController.swift
//  SwiftDojoRate
//
//  Created by Alessandro Nakamuta on 30/08/14.
//  Copyright (c) 2014 Jera. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource{
    
    var usersArray: [User]=[]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return usersArray.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        var userCell = tableView.dequeueReusableCellWithIdentifier("userCell", forIndexPath: indexPath) as UserCell
        
        var user = usersArray[indexPath.row]
        
        userCell.nameLabel.text = user.name + " " + user.surname
        
        return userCell
    }
    
//    unwind segue
    
    @IBAction func savedUser (segue : UIStoryboardSegue) {
        tableView.reloadData()
    }

    @IBAction func teste(sender: AnyObject) {
        self.performSegueWithIdentifier("testeSegue", sender: nil)  
    }
}

