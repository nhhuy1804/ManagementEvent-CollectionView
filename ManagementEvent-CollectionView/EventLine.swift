//
//  EventLine.swift
//  ManagementEvent-CollectionView
//
//  Created by MrDummy on 5/3/17.
//  Copyright © 2017 Huy. All rights reserved.
//

import Foundation
import UIKit

class EventLine
{
    var dates: String
    var events: [Event]
    var dateImages: UIImage
    
    init(dateOfWeek: String, includeEvents: [Event], dateImage: UIImage)
    {
        dates = dateOfWeek
        events = includeEvents
        dateImages = dateImage
    }
    
    class func eventLines() -> [EventLine]
    {
        return [self.sun(), self.mon(), self.tue(), self.wed(), self.thu(), self.fri(), self.sat()]
    }
    
    
    //  Thứ 2
    private class func mon() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "Tiêu đề 1", description: "Mô tả 1", eventImage: #imageLiteral(resourceName: "one")))
        events.append(Event(title: "Tiêu đề 2", description: "Mô tả 2", eventImage: #imageLiteral(resourceName: "two") ))
        events.append(Event(title: "Tiêu đề 3", description: "Mô tả 3", eventImage: #imageLiteral(resourceName: "three")))
        events.append(Event(title: "Tiêu đề 4", description: "Mô tả 4", eventImage: #imageLiteral(resourceName: "four")))
        events.append(Event(title: "Tiêu đề 5", description: "Mô tả 5", eventImage: #imageLiteral(resourceName: "five")))
        
        return EventLine(dateOfWeek: "Thứ 2", includeEvents: events, dateImage: #imageLiteral(resourceName: "monday"))
    }
    
    //  Thứ 3
    private class func tue() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "Tiêu đề 1", description: "Mô tả 1", eventImage: #imageLiteral(resourceName: "one")))
        events.append(Event(title: "Tiêu đề 2", description: "Mô tả 2", eventImage: #imageLiteral(resourceName: "two") ))
        events.append(Event(title: "Tiêu đề 3", description: "Mô tả 3", eventImage: #imageLiteral(resourceName: "three")))
        events.append(Event(title: "Tiêu đề 4", description: "Mô tả 4", eventImage: #imageLiteral(resourceName: "four")))
        events.append(Event(title: "Tiêu đề 5", description: "Mô tả 5", eventImage: #imageLiteral(resourceName: "five")))
        
        return EventLine(dateOfWeek: "Thứ 3", includeEvents: events, dateImage: #imageLiteral(resourceName: "tuesday"))
    }
    
    //  Thứ 4
    private class func wed() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "Tiêu đề 1", description: "Mô tả 1", eventImage: #imageLiteral(resourceName: "one")))
        events.append(Event(title: "Tiêu đề 2", description: "Mô tả 2", eventImage: #imageLiteral(resourceName: "two") ))
        events.append(Event(title: "Tiêu đề 3", description: "Mô tả 3", eventImage: #imageLiteral(resourceName: "three")))
        events.append(Event(title: "Tiêu đề 4", description: "Mô tả 4", eventImage: #imageLiteral(resourceName: "four")))
        events.append(Event(title: "Tiêu đề 5", description: "Mô tả 5", eventImage: #imageLiteral(resourceName: "five")))
        
        return EventLine(dateOfWeek: "Thứ 4", includeEvents: events, dateImage: #imageLiteral(resourceName: "wednesday"))
    }
    
    //  Thứ 5
    private class func thu() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "Tiêu đề 1", description: "Mô tả 1", eventImage: #imageLiteral(resourceName: "one")))
        events.append(Event(title: "Tiêu đề 2", description: "Mô tả 2", eventImage: #imageLiteral(resourceName: "two") ))
        events.append(Event(title: "Tiêu đề 3", description: "Mô tả 3", eventImage: #imageLiteral(resourceName: "three")))
        events.append(Event(title: "Tiêu đề 4", description: "Mô tả 4", eventImage: #imageLiteral(resourceName: "four")))
        events.append(Event(title: "Tiêu đề 5", description: "Mô tả 5", eventImage: #imageLiteral(resourceName: "five")))
        
        return EventLine(dateOfWeek: "Thứ 5", includeEvents: events, dateImage: #imageLiteral(resourceName: "thursday"))
    }
    
    //  thứ 6
    private class func fri() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "Tiêu đề 1", description: "Mô tả 1", eventImage: #imageLiteral(resourceName: "one")))
        events.append(Event(title: "Tiêu đề 2", description: "Mô tả 2", eventImage: #imageLiteral(resourceName: "two") ))
        events.append(Event(title: "Tiêu đề 3", description: "Mô tả 3", eventImage: #imageLiteral(resourceName: "three")))
        events.append(Event(title: "Tiêu đề 4", description: "Mô tả 4", eventImage: #imageLiteral(resourceName: "four")))
        events.append(Event(title: "Tiêu đề 5", description: "Mô tả 5", eventImage: #imageLiteral(resourceName: "five")))
        
        return EventLine(dateOfWeek: "Thứ 6", includeEvents: events, dateImage: #imageLiteral(resourceName: "friday"))
    }
    
    //  Thứ 7
    private class func sat() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "Tiêu đề 1", description: "Mô tả 1", eventImage: #imageLiteral(resourceName: "one")))
        events.append(Event(title: "Tiêu đề 2", description: "Mô tả 2", eventImage: #imageLiteral(resourceName: "two") ))
        events.append(Event(title: "Tiêu đề 3", description: "Mô tả 3", eventImage: #imageLiteral(resourceName: "three")))
        events.append(Event(title: "Tiêu đề 4", description: "Mô tả 4", eventImage: #imageLiteral(resourceName: "four")))
        events.append(Event(title: "Tiêu đề 5", description: "Mô tả 5", eventImage: #imageLiteral(resourceName: "five")))
        
        return EventLine(dateOfWeek: "Thứ 7", includeEvents: events, dateImage: #imageLiteral(resourceName: "saturday"))
    }
    
    //  Chủ nhật
    private class func sun() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "Tiêu đề 1", description: "Mô tả 1", eventImage: #imageLiteral(resourceName: "one")))
        events.append(Event(title: "Tiêu đề 2", description: "Mô tả 2", eventImage: #imageLiteral(resourceName: "two") ))
        events.append(Event(title: "Tiêu đề 3", description: "Mô tả 3", eventImage: #imageLiteral(resourceName: "three")))
        events.append(Event(title: "Tiêu đề 4", description: "Mô tả 4", eventImage: #imageLiteral(resourceName: "four")))
        events.append(Event(title: "Tiêu đề 5", description: "Mô tả 5", eventImage: #imageLiteral(resourceName: "five")))
        
        return EventLine(dateOfWeek: "Chủ Nhật", includeEvents: events, dateImage: #imageLiteral(resourceName: "sunday"))
    }
}

