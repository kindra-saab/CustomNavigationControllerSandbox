//
//  CustomNavigationBar.swift
//  NavigationControllerSandbox
//
//  Created by Jatin Kindra1 on 02/05/24.
//

import UIKit

class CustomNavigationBar: UINavigationBar {
  override func sizeThatFits(_ size: CGSize) -> CGSize {
      var newSize = super.sizeThatFits(size)
      newSize.height = 100 // Set the desired height for your custom navigation bar
      return newSize
  }
}
