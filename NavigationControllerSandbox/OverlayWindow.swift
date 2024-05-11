//
//  OverlayWindow.swift
//  NavigationControllerSandbox
//
//  Created by Jatin Kindra1 on 03/05/24.
//

import UIKit

class OverlayWindow: UIWindow {
  var overlayView: UIView?

  init(frame: CGRect, overlayView: UIView) {
      super.init(frame: frame)
      self.overlayView = overlayView
      self.windowLevel = UIWindow.Level.alert + 1 // Ensures it's above everything else
      self.addSubview(overlayView)
  }

  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
}
