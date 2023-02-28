//
//  ViewController.swift
//  myprofile
//
//  Created by Allison Chiang on 2/27/23.
//

import UIKit

class ViewController: UIViewController {
    
    var profile = ["Forever 21, H&M, Lego", "I am a person", "0 friends"];

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapProfile(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view{performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let DetailController = segue.destination as? DetailController {

            if tappedView.tag == 0 {
                DetailController.profile = profile[0]
            } else if tappedView.tag == 1 {
                DetailController.profile = profile[1]
            } else if tappedView.tag == 2 {
                DetailController.profile = profile[2]
            } else {
                print("no item was tapped, please check your selection.")
            }
        }
    }
    
}

