//
//  GreatingViewController.swift
//  MV(X)Patterns
//
//  Created by Андрей Аверьянов on 25.02.2022.
//

import UIKit

class GreatingViewController: UIViewController {

    @IBOutlet var greatingLabel: UILabel!
    
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tim", surname: "Cook")
    }

    @IBAction func showGreatingPressed() {
        greatingLabel.text = "Hello, \(person.name) \(person.surname)"
    }
}
