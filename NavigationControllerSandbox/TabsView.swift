//
//  TabsView.swift
//  NavigationControllerSandbox
//
//  Created by Jatin Kindra1 on 10/05/24.
//

import UIKit

class TabsView: UIView {
  
  @IBOutlet private weak var placeholderTabsView: UIView!
  @IBOutlet private weak var stackView: UIView!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }
  
  private func commonInit() {
      // Load the XIB
      let nib = UINib(nibName: "TabsView", bundle: nil)
      if let contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView {
          addSubview(contentView)
          contentView.frame = bounds
          contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
      }
  }
}
