//
//  SharedTabView.swift
//  NavigationControllerSandbox
//
//  Created by Jatin Kindra1 on 05/05/24.
//

import UIKit

class SharedTabView: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
  @IBOutlet weak var collectionView: UICollectionView!
  
  static let shared = SharedTabView()
  
  private override init(frame: CGRect) {
    super.init(frame: CGRect(x: 0, y: 0, width: .max, height: 100))
    backgroundColor = .brown
    commonInit()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }
  
  private func commonInit() {
    // Setup collection view
            let layout = UICollectionViewFlowLayout()
            let collectionView = UICollectionView(frame: bounds, collectionViewLayout: layout)
            collectionView.dataSource = self
            collectionView.delegate = self
            addSubview(collectionView)
            self.collectionView = collectionView
    collectionView.backgroundColor = .brown
            
            // Register cell
            let shipmentItemNib = UINib(nibName: "TabsCapsulesCollectionViewCell", bundle: nil)
            collectionView.register(shipmentItemNib, forCellWithReuseIdentifier: "TabsCapsulesCollectionViewCell")
  }
  
  override func awakeFromNib() {
      super.awakeFromNib()
      configure()
  }
    
  func configure() {
    guard let collectionView = self.collectionView else {
        fatalError("collectionView is nil")
    }
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 3
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TabsCapsulesCollectionViewCell", for: indexPath) as! TabsCapsulesCollectionViewCell
      return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      // Return the size for each item
      return CGSize(width: 100, height: 70) // Adjust width and height as needed
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    if let cell = collectionView.cellForItem(at: indexPath) {
        // Change the background color of the selected cell
        cell.contentView.backgroundColor = UIColor.blue // or any other color
    }
  }
}
