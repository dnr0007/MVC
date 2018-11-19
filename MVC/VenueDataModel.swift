//
//  File.swift
//  Dellywood
//
//  Created by Apple on 7/9/18.
//  Copyright © 2018 webcoir. All rights reserved.
//

import Foundation

struct Venue_Data: Codable{
    
    var message: String
    var status: String
    var event_venues: [EventVenue]
    
    var VenueDic: [String: Any] {
        return [
            "message": message,
            "status": status,
            "event_venues": event_venues
        ]
    }
}
