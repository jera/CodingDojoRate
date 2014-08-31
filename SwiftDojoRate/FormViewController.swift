//
//  FormViewController.swift
//  SwiftDojoRate
//
//  Created by Alessandro Nakamuta on 30/08/14.
//  Copyright (c) 2014 Jera. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
 
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var surnameTextField: UITextField!
    
    
    @IBAction func saveForm(sender: AnyObject) {
        var user = User(name: nameTextField.text, surname: surnameTextField.text)
        println(user.name)
        println(user.surname)
        self.performSegueWithIdentifier("savedUser", sender: user)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        var destinationController = segue.destinationViewController as ViewController
        destinationController.usersArray.append(sender as User)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
