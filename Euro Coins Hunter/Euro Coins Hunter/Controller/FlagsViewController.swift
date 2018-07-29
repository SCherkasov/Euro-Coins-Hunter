//
//  FlagsViewController.swift
//  Euro Coins Hunter
//
//  Created by Stanislav Cherkasov on 29.07.2018.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class FlagsViewController: UIViewController {
  
  @IBOutlet var flagCollectionView: UICollectionView!
  
  let flagPicture = Resources.flagPicture()
  let flagName = Resources.flagNameLabel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let nib = UINib(nibName: "FlagsCollectionViewCell", bundle: nil)
    flagCollectionView.register(nib,
                                forCellWithReuseIdentifier:
      "FlagsCollectionViewCell")
    
    setupLayoutToCollectionView()
  }
  
  func setupLayoutToCollectionView() {
    let itemSize = UIScreen.main.bounds.width / 3
    
    let layout = UICollectionViewFlowLayout()
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
    layout.itemSize = CGSize(width: itemSize, height: itemSize)
    
    layout.minimumInteritemSpacing = 0
    layout.minimumLineSpacing = 0
    
    flagCollectionView.collectionViewLayout = layout
  }
}

extension FlagsViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView,
                      numberOfItemsInSection section: Int) -> Int {
    return flagPicture.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt
    indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FlagsCollectionViewCell", for: indexPath) as! FlagsCollectionViewCell
    
    cell.flagImage.image = UIImage(named: flagPicture[indexPath.row] + ".JPEG")
    cell.flagNameLabel.text = flagName[indexPath.row]
    
    return cell
  }
}
