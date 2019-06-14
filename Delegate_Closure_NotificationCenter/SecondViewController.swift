//
//  SecondViewController.swift
//  Delegate_Closure_NotificationCenter
//
//  Created by CuongVX-D1 on 6/14/19.
//  Copyright © 2019 CuongVX-D1. All rights reserved.
//

import UIKit

protocol delegateSecondVC: class {
    func passData(data: String)
}

final class SecondViewController: UIViewController {
    
    //  MARK: - Closure
    var onCompletion: ((_ data: String) -> ())?
    
    @IBAction func closureAction(_ sender: Any) {
        let data = textField.text ?? ""
        onCompletion?(data)
        dismiss(animated: true, completion: nil)
    }
    
    //  MARK: - Delegate
    @IBOutlet weak var textField: UITextField!
    
    //  MARK: - Delegate
    weak var delegate: delegateSecondVC?
    
    //  MARK: - Action
    @IBAction func delegateAction(_ sender: Any) {
        let data = textField.text ?? ""
        delegate?.passData(data: data)
        dismiss(animated: true, completion: nil)
    }
    
    
}
