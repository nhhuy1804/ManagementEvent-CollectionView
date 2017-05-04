//
//  HeaderSectionCollectionReusableView.swift
//  ManagementEvent-CollectionView
//
//  Created by MrDummy on 5/3/17.
//  Copyright © 2017 Huy. All rights reserved.
//

import UIKit

class HeaderSectionCollectionReusableView: UICollectionReusableView {
        
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var headerImageView: UIImageView!
    
    var eventDates: EventLine!{
        didSet{
            headerLabel.text = eventDates.dates
            headerImageView.image = eventDates.dateImages
        }
    }
}
