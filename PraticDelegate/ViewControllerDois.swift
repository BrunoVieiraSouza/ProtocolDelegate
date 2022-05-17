//
//  ViewControllerDois.swift
//  PraticDelegate
//
//  Created by Bruno Vieira Souza on 17/05/22.
//

import UIKit

protocol ViewControllerDoisDelegate {
    func setDados(textLabel: String, titleButton: String)
}

class ViewControllerDois: UIViewController {

    var delegate: ViewControllerDoisDelegate!
    
    @IBOutlet weak var textotf: UITextField!
    @IBOutlet weak var textoButton: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        guard let textLabel = textotf.text, let titleButton = textoButton.text else {return}

        delegate.setDados(textLabel: textLabel , titleButton: titleButton)
        navigationController?.popViewController(animated: true)
    }
}
