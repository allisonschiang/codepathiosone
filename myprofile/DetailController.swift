//
//  DetailController.swift
//  myprofile
//
//  Created by Allison Chiang on 2/27/23.
//

import UIKit

class DetailController: UIViewController {

    var profile: profile?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let profile = profile{
            Label.text=profile
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
