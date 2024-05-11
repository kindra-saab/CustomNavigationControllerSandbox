//
//  RootVCViewController.swift
//  NavigationControllerSandbox
//
//  Created by Jatin Kindra1 on 10/05/24.
//

import Foundation
import UIKit

class RootVCViewController: UIViewController, UICollectionViewDelegate {
  
  var tabsView: TabsView!
    let searchController = UISearchController(searchResultsController: nil)
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    func addTabsAtTop() {
      tabsView = Bundle.main.loadNibNamed("TabsView", owner: nil, options: nil)?.first as? TabsView
        view.addSubview(tabsView)
//      view.addSubview(tabsView)
    }
  
  func hideNavigationBar() {
    navigationController?.navigationBar.isHidden = true
  }
  
  func showNavigationBar() {
    navigationController?.navigationBar.isHidden = false
  }
}
