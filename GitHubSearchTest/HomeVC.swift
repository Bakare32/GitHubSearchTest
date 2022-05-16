//
//  ViewController.swift
//  GitHubSearchTest
//
//  Created by Bakare Waris on 16/05/2022.
//

import UIKit
import MaterialComponents.MDCFilledTextField

class HomeVC: UIViewController, Mainboarded, UITextFieldDelegate {

    var coordinator: MainCoordinator?
    

    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var continueBtn: UIButton!
    
    var searchTextField: MDCFilledTextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        searchTextField.becomeFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swipeToPop()
        continueBtn.primaryButton()
        searchTextField = MDCFilledTextField(frame: CGRect(x: 0, y: 0, width: view.frame.width-40, height: 50))
        searchView.addSubview(searchTextField)
        searchTextField.setUp(label: "Name", placeholder: "Tom", keyType: .namePhonePad)
        searchTextField.returnKeyType = .done
        searchTextField.delegate = self
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == searchTextField {
            searchTextField.materialActive()
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == searchTextField {
            searchTextField.materialNormal()
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == searchTextField {
            searchTextField.resignFirstResponder()
        }
        return true
    }

    @IBAction func continueTapped(_ sender: UIButton) {
        if searchTextField.text == "" {
            searchView.shake()
        } else {
            coordinator?.openDetailsVC(query: searchTextField.text!)
        }
        
    }
    
}


