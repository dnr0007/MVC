//
//  EventVenue.swift
//  Dellywood
//
//  Created by Apple on 7/9/18.
//  Copyright © 2018 webcoir. All rights reserved.
//

import Foundation

struct EventVenue:Codable {
    
    var id:Int?
    var date:String?
    var event_id:String?
    var start:String?
    var end:String?
    var status:String?
    var contact_name:String?
    var contact_number:String?
    var coordinator_id:String?
    var google_location_url:String?
    var lattitude:String?
    var longitude:String?
    var address_line_1:String?
    var pincode:String?
    var city_id:String?
    var state_id:String?
    var country_id:String?
    var created_at:String?
    var deleted_at:String?
    var updated_at:String?
    var old_audition_id:String?
    var target:String?
    var formatted_address:String?
    var formatted_time:String?
    var city:CityVal?
    var country:CountryVal?
    var state:StateVal?
    
    var EventsDics: [String: Any] {
        return [
        "id":id!,
        "date":date!,
        "event_id":event_id!,
        "start":start!,
        "end":end!,
        "status":status!,
        "contact_name":contact_name!,
        "contact_number":contact_number!,
        "coordinator_id":coordinator_id!,
        "google_location_url":google_location_url!,
        "lattitude":lattitude!,
        "longitude":longitude!,
        "address_line_1":address_line_1!,
        "pincode":pincode!,
        "city_id":city_id!,
        "state_id":city_id!,
        "country_id":country_id!,
        "created_at":created_at!,
        "deleted_at":deleted_at!,
        "updated_at":updated_at!,
        "old_audition_id":old_audition_id!,
        "target":target!,
        "formatted_address":formatted_address!,
        "formatted_time":formatted_time!,
        "city":city!,
        "country":country!,
        "state":state!
        ]
    }
    
}

struct CityVal:Codable {
    var id:Int?
    var name:String?
    
    var CityDic:[String: Any]{
        return[
            
            "id": id!,
            "name":name!
            
        ]
        
    }
    
}

struct StateVal:Codable {
    var id:Int?
    var name:String?
    
    var StateDic:[String: Any]{
        return[
            
            "id": id!,
            "name":name!
            
        ]
        
    }
    
}

struct CountryVal:Codable {
    var id:Int?
    var name:String?
    
    var CountryDic:[String: Any]{
        return[
            
            "id": id!,
            "name":name!
            
        ]
        
    }
    
}
