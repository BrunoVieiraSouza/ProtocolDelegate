//
//  ViewController.swift
//  PraticDelegate
//
//  Created by Bruno Vieira Souza on 17/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nextbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextView(_ sender: UIButton) {
        let vc = UIStoryboard(name: "ViewControllerDois", bundle: nil).instantiateViewController(withIdentifier: "ViewControllerDois") as! ViewControllerDois
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController: ViewControllerDoisDelegate {
    func setDados(textLabel: String, titleButton: String) {
        label.text = textLabel
        nextbutton.setTitle(titleButton, for: .normal)
    }
}
