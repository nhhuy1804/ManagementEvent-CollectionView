//
//  EventCollectionViewCell.swift
//  ManagementEvent-CollectionView
//
//  Created by MrDummy on 5/3/17.
//  Copyright © 2017 Huy. All rights reserved.
//

import UIKit

class EventCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var eventImageView: UIImageView!
    
    func configCell(event: Event){
        eventLabel.text = event.title
        eventImageView.image = event.eventImage
    }
}
