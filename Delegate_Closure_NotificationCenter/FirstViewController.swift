//
//  ViewController.swift
//  Delegate_Closure_NotificationCenter
//
//  Created by CuongVX-D1 on 6/14/19.
//  Copyright © 2019 CuongVX-D1. All rights reserved.
//

import UIKit

final class FirstViewController: UIViewController {
    
    //  MARK: - Outlet
    @IBOutlet private weak var label: UILabel!
    
    //  MARK: - Case Colsure
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? SecondViewController else {
            return
        }
        destination.onCompletion = { [weak self] (data) in
            self?.label.text = data
        }
    }
    
    //  MARK: - Case Delegate
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        guard let destination = segue.destination as? SecondViewController else {
    //            return
    //        }
    //        destination.delegate = self
    //    }
}

extension FirstViewController: delegateSecondVC {
    func passData(data: String) {
        label.text = data
    }
}
