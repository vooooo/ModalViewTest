//
//  ViewController.swift
//  test
//
//  Created by Vu Nguyen on 11/13/18.
//  Copyright © 2018 Vu Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func modalButtonTap(_ sender: UIButton) {
        self.definesPresentationContext = true
        self.providesPresentationContextTransitionStyle = true

        self.showModal()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func showModal() {
        print("showing modal now")
        performSegue(withIdentifier: "showModalView", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "showModalView" {
                if let viewController = segue.destination as? ModalViewController {
                    viewController.modalPresentationStyle = .overFullScreen
                }
            }
        }
    }

    
}

