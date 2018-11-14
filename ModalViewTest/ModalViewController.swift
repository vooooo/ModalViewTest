//
//  VC2.swift
//  test
//
//  Created by Vu Nguyen on 11/13/18.
//  Copyright © 2018 Vu Nguyen. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    
    @IBOutlet weak var dismissButton: UIButton!
    
    @IBAction func dismissButtonTap(_ sender: UIButton) {
        print("Dismiss tapped")
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.clear
        view.layer.isOpaque = false
        view.layer.borderWidth = 5.0
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        dismissButton.roundCorners([.topLeft, .topRight], radius: 15)
    }
}


extension UIView {
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}
