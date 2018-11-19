//
//  EventCitiesServices.swift
//  Dellywood
//
//  Created by Apple on 7/9/18.
//  Copyright © 2018 webcoir. All rights reserved.
//

import UIKit
import Alamofire

class EventCitiesServices: NSObject {
    
    class func getEventAuditionVenues(_ Parameter : NSDictionary , completionHandler:@escaping (_ result:NSDictionary)->())
    {
        DispatchQueue.global(qos: DispatchQoS.QoSClass.userInitiated).async {
            
            Alamofire.request(ApiFiles.getEventAuditionVenuesOfEvent, method: .post, parameters: Parameter as? Parameters).responseJSON { response in
                
                
                switch response.result {
                case .success:
                    
                    //print("Validation Successful")
                    if let result = response.result.value {
                        
                        DispatchQueue.main.async {
                            
                            let result1 = result as! NSDictionary
                            //print(result1)
                            let status = result1.value(forKey: "status") as! String
                            //print(status)
                            if status == "success"{
                                
                                let EventRes = try! JSONDecoder().decode(Venue_Data.self, from: response.data!)
                                //print(EventRes)
                                let resultDic = EventRes.VenueDic
                                //print(resultDic)
                                
                                completionHandler(resultDic as NSDictionary)
                                
                            }else{
                                let LoginResponse = try! JSONDecoder().decode(loginFailure.self, from: response.data!)
                                //print(LoginResponse)
                                let resultDic = LoginResponse.loginDic
                                
                                completionHandler(resultDic as NSDictionary)
                                
                            }
                            
                        }
                    }
                case .failure(let error):
                    
                    if error._code == -1004 {
                        var result = [String: String]()
                        result["status"] = "1004"
                        result["message"] = "server connection failed"
                        completionHandler(result as NSDictionary)
                        
                        //print("no connection found")
                    }
                    if error._code == -1001 {
                        var result = [String: String]()
                        result["status"] = "1001"
                        result["message"] = "server connection time out"
                        completionHandler(result as NSDictionary)
                        
                        //print("Time out")
                    }
                    if error._code == -1005 {
                        var result = [String: String]()
                        result["status"] = "1005"
                        result["message"] = "The network connection was lost"
                        completionHandler(result as NSDictionary)
                        
                        //print("Time out")
                    }
                    
                    if error._code == -1009 {
                        var result = [String: String]()
                        result["status"] = "1009"
                        result["message"] = "Network Not Found"
                        completionHandler(result as NSDictionary)
                        
                        //print("Time out")
                    }
                    //print("\n\nAuth request failed with error:\n \(error)")
                    // completionHandler([String: String]() as NSDictionary)
                    
                }
                
                
            }
        }
    }
    
    
    
}
