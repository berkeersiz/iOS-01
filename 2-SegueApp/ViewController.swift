//
//  ViewController.swift
//  2-SegueApp
//
//  Created by Berke Ersiz on 16.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Lifecycle
        print("viewDidLoad  func called")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear func called")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear func called")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear func called")
        nameText.text = ""
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewDidDisappear  func called")
    }
    

    @IBAction func saveButton(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "2Vc", sender: nil )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "2Vc" {
            
            // as --  Casting
            let destinationVc = segue.destination as! SecondViewController
            destinationVc.newName = userName
        }
    }
     
    
}

