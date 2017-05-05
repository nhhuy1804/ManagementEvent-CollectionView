//
//  Event.swift
//  ManagementEvent-CollectionView
//
//  Created by MrDummy on 5/3/17.
//  Copyright © 2017 Huy. All rights reserved.
//

import Foundation
import UIKit

class Event
{
    var title: String
    var description: String
    var eventImage: UIImage
    
    init(title: String, description: String, eventImage: UIImage)
    {
        self.title = title
        self.description = description
        self.eventImage = eventImage
    }
}
