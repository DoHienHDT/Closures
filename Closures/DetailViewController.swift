//
//  DetailViewController.swift
//  Closures
//
//  Created by dohien on 7/25/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit
class DetailViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    var data : String?
    var callBack: ((_ data: String) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        if data != nil {
            nameTextField.text = data
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveData(_ sender: UIButton) {
        guard let data = nameTextField.text else { return }
        callBack?(data)
        navigationController?.popViewController(animated: true)
    }
}
