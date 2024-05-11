//
//  CustomNavigationController.swift
//  NavigationControllerSandbox
//
//  Created by Jatin Kindra1 on 02/05/24.
//

import UIKit

class CustomNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
      // Create a custom navigation bar instance
      let customNavBar = CustomNavigationBar(frame: CGRect(x: 0, y: 0, width: self.navigationBar.frame.size.width, height: 300))
      customNavBar.backgroundColor = UIColor.blue // Customize background color if needed
      
      let customNavBar2 = CustomNavigationBar(frame: CGRect(x: 0, y: 0, width: self.navigationBar.frame.size.width, height: 150))
      customNavBar2.backgroundColor = UIColor.red
      
      customNavBar.addSubview(customNavBar2)
      self.view.addSubview(customNavBar)
      
      // If you want to hide the default navigation bar
      self.navigationBar.isHidden = true
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
