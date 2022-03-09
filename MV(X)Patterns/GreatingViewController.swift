//
//  GreatingViewController.swift
//  MV(X)Patterns
//
//  Created by Андрей Аверьянов on 25.02.2022.
//

import UIKit

class GreatingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var viewModel: GreetingViewModelProtocol! {
        didSet {
            viewModel.greetingDidChange = { [unowned self] viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Tim", surname: "Cook")
        viewModel = GreetingViewModel(person: person)
    }
    
    @IBAction func showGreetingPressed() {
        viewModel.showGreeting()
    }
}
