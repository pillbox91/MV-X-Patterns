//
//  GreetingViewController.swift
//  MV(X)Patterns
//
//  Created by Андрей Аверьянов on 25.02.2022.
//

import UIKit

protocol GreetingViewProtocol: class {
    func setGreeting(_ greeting: String)
}

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var presenter: GreetingPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Tim", surname: "Cook")
        presenter = GreetingPresenter(view: self, person: person)
    }
    
    @IBAction func showGreetingPressed() {
        presenter.showGreeting()
    }
    
  
}

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
