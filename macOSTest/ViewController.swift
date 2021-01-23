//
//  ViewController.swift
//  macOSTest
//
//  Created by Rita Zerrizuela on 20/02/2020.
//  Copyright © 2020 Auth0. All rights reserved.
//

import Cocoa
import Auth0

class ViewController: NSViewController {

    @IBAction func login(_ sender: Any) {
        Auth0.webAuth
            .logging(enabled: true)
            .start { result in
                switch result {
                case .success(let credentials): print(credentials)
                case .failure(let error): print(error)
                }
        }
    }
    
    @IBAction func logout(_ sender: Any) {
        Auth0.webAuth()
            .logging(enabled: true)
            .clearSession(federated: false) { result in
                result ? print("Logged out") : print("Failed to log out")
        }
    }

}
