//
//  UserLogin.swift
//  Dellywood
//
//  Created by Apple on 7/2/18.
//  Copyright © 2018 webcoir. All rights reserved.
//

import UIKit

class UserLogin: NSObject {
    
    struct loginResponse: Decodable
    {
        var message: String?
        var profile_photo_url: String?
        var status: String?
        var user_email: String?
        var user_id: Int?
        var user_mobile_number: String?
        var user_name: String?
        
        
        var loginDic: [String: Any] {
            return [
            "message": message!,
            "profile_photo_url": profile_photo_url!,
            "status": status!,
            "user_email": user_email!,
            "user_id": user_id!,
            "user_mobile_number": user_mobile_number!,
            "user_name": user_name!
            ]
        }

    }
    
    struct loginFailure: Decodable
    {        
        var status: String
        var message: String
        
        var loginDic: [String: Any]{
            return[
            "status": status,
            "message": message,
            ]
        }
        
    }
    
    

}


