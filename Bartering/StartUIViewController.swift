//
//  StartUIViewController.swift
//  Bartering
//
//  Created by Erika Sito on 24/03/22.
//

import SwiftUI
import UIKit

class StartUIViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
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

    @IBSegueAction func embedSwift(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: PresentMeView())
    }
    
}
