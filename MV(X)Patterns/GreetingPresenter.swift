//
//  GreetingPresenter.swift
//  MV(X)Patterns
//
//  Created by Андрей Аверьянов on 09.03.2022.
//

import Foundation

protocol GreetingPresenterProtocol: class {
    init(view: GreetingViewProtocol, person: Person)
    func showGreeting()
}

class GreetingPresenter: GreetingPresenterProtocol {
    unowned private let view: GreetingViewProtocol
    private let person: Person
    
    required init(view: GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello, \(person.name) \(person.surname)!"
        view.setGreeting(greeting)
    }
    
    
}
