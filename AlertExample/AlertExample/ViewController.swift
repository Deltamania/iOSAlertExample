//
//  ViewController.swift
//  AlertExample
//
//  Created by Murat Han on 30.09.2019.
//  Copyright © 2019 Murat Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordText2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func ButtonClicked(_ sender: Any){
        
        
        
        if usernameText.text == ""{
            let alert = UIAlertController(title: "Hata", message: "Kullanici adi bos!", preferredStyle: UIAlertController.Style.alert)
            let okayButton = UIAlertAction(title: "OK ", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okayButton)
            self.present(alert, animated: true, completion: nil)
        }else if passwordText.text == "" {
            let alert = UIAlertController(title: "Hata", message: "Sifre bos!", preferredStyle: UIAlertController.Style.alert)
            let okayButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okayButton)
            self.present(alert, animated: true, completion: nil)
        }else if passwordText2.text == "" {
            let alert = UIAlertController(title: "Hata", message: "Parolayi tekrar girmediniz!", preferredStyle: UIAlertController.Style.alert)
            let okayButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okayButton)
            self.present(alert, animated: true, completion: nil)
        }else if passwordText.text != passwordText2.text {
            let alert = UIAlertController(title: "Hata", message: "Parolalar ayni degil!", preferredStyle: UIAlertController.Style.alert)
            let okayButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okayButton)
            self.present(alert, animated: true, completion: nil)
        }else {
            let alert = UIAlertController(title: "Basarili", message: "Kayit tamamlandi.", preferredStyle: UIAlertController.Style.alert)
            let okayButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okayButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    

}

