//
//  ViewController.swift
//  Closures
//
//  Created by dohien on 7/25/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailViewController {
            detailViewController.data = nameTextField.text
            detailViewController.callBack = { [unowned self] data in
                self.nameTextField.text = data
            }
        }
    }
}
