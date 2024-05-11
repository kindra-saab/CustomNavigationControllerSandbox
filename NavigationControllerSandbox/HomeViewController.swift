//
//  HomeViewController.swift
//  NavigationControllerSandbox
//
//  Created by Jatin Kindra1 on 02/05/24.
//

import UIKit

class HomeViewController: RootVCViewController {

  @IBOutlet weak var placeholderTabsView: UIView!
  
    override func viewDidLoad() {
      super.viewDidLoad()
      placeholderTabsView.isHidden = true
      let sharedTabView = SharedTabView.shared
//      SharedTabView.shared.configure()
//      placeholderTabsView.addSubview(sharedTabView)
    }
  
  override func viewWillAppear(_ animated: Bool) {
//    self.navigationController?.navigationBar.isHidden = true
    hideNavigationBar()
    addTabsAtTop()
  }
  
  @IBAction func popHomeViewController() {
    self.navigationController?.popViewController(animated: true)
  }
}
