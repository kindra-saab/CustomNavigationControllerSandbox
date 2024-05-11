//
//  TabsCapsulesCollectionViewCell.swift
//  NavigationControllerSandbox
//
//  Created by Jatin Kindra1 on 03/05/24.
//

import UIKit

class TabsCapsulesCollectionViewCell: UICollectionViewCell {

  @IBOutlet weak var outerView: UIView!
  
  override func awakeFromNib() {
      super.awakeFromNib()
//    outerView.backgroundColor = .cyan
    outerView.layer.cornerRadius = 15
  }
}
