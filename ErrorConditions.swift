//
//  ErrorConditions.swift
//  ISP Mate Client
//
//  Created by vishal singh on 21/08/18.
//  Copyright © 2018 Deep. All rights reserved.
//

import UIKit

class ErrorConditions: NSObject {
    
    static func errorCondition(error : Error) -> NSDictionary{
        var result = [String: String]()

        
        switch error._code {
        case -1:
            result["status"] = "-1"
            result["response"] = "Unknown error"
            return(result as NSDictionary)
        case -995:
            result["status"] = "995"
            result["response"] = "Background session requires shared container"
            return(result as NSDictionary)
        case -996:
            result["status"] = "996"
            result["response"] = "Background session in use by another process"
            return(result as NSDictionary)
        case -997:
            result["status"] = "997"
            result["response"] = "Background session was disconnected"
            return(result as NSDictionary)
        case -999:
            result["status"] = "999"
            result["response"] = "Cancelled"
            return(result as NSDictionary)
        case -1000:
            result["status"] = "1000"
            result["response"] = "Bad URL"
            return(result as NSDictionary)
        case -1001:
            result["status"] = "1001"
            result["response"] = "server connection time out"
            return(result as NSDictionary)
        case -1002:
            result["status"] = "1002"
            result["response"] = "Unsupported URL"
            return(result as NSDictionary)
        case -1003:
            result["status"] = "1003"
            result["response"] = "Can not find host"
            return(result as NSDictionary)
        case -1004:
            result["status"] = "1004"
            result["response"] = "server connection failed"
            return(result as NSDictionary)
        case -1005:
            result["status"] = "1005"
            result["response"] = "The network connection was lost"
            return(result as NSDictionary)
        case -1006:
            result["status"] = "1006"
            result["response"] = "Lookup failed"
            return(result as NSDictionary)
        case -1007:
            result["status"] = "1007"
            result["response"] = "HTTP too many redirects"
            return(result as NSDictionary)
        case -1008:
            result["status"] = "1008"
            result["response"] = "Resource unavailable"
            return(result as NSDictionary)
        case -1009:
            result["status"] = "1009"
            result["response"] = "The Internet connection appears to be offline."
            return(result as NSDictionary)
        case -1010:
            result["status"] = "1010"
            result["response"] = "Redirect to non existent location."
            return(result as NSDictionary)
        case -1011:
            result["status"] = "1011"
            result["response"] = "Bad server response."
            return(result as NSDictionary)
        case -1012:
            result["status"] = "1012"
            result["response"] = "User cancelled authentication."
            return(result as NSDictionary)
        case -1013:
            result["status"] = "1013"
            result["response"] = "User authentication required."
            return(result as NSDictionary)
        case -1014:
            result["status"] = "1014"
            result["response"] = "Zero byte resource."
            return(result as NSDictionary)
        case -1015:
            result["status"] = "1015"
            result["response"] = "Can not decode raw data."
            return(result as NSDictionary)
        case -1016:
            result["status"] = "1016"
            result["response"] = "Can not decode content data."
            return(result as NSDictionary)
        case -1017:
            result["status"] = "1017"
            result["response"] = "Can not parse response."
            return(result as NSDictionary)
        case -1018:
            result["status"] = "1018"
            result["response"] = "International roaming off."
            return(result as NSDictionary)
        case -1019:
            result["status"] = "1019"
            result["response"] = "Call is active."
            return(result as NSDictionary)
        case -1020:
            result["status"] = "1020"
            result["response"] = "Data not allowed."
            return(result as NSDictionary)
        case -1021:
            result["status"] = "1021"
            result["response"] = "Can not parse response."
            return(result as NSDictionary)
        case -1022:
            result["status"] = "1022"
            result["response"] = "App Transport security requires secure connection."
            return(result as NSDictionary)
            
        case -1100:
            result["status"] = "1100"
            result["response"] = "File does not exist."
            return(result as NSDictionary)
        case -1101:
            result["status"] = "1101"
            result["response"] = "File is directory."
            return(result as NSDictionary)
        case -1102:
            result["status"] = "1102"
            result["response"] = "No permission to read file."
            return(result as NSDictionary)
        case -1103:
            result["status"] = "1103"
            result["response"] = "Data length exceeds maximum."
            return(result as NSDictionary)
            
        case -1200:
            result["status"] = "1200"
            result["response"] = "Secure connection failed."
            return(result as NSDictionary)
        case -1201:
            result["status"] = "1201"
            result["response"] = "Server certificate has bad date."
            return(result as NSDictionary)
        case -1202:
            result["status"] = "1202"
            result["response"] = "Server certificate untrusted."
            return(result as NSDictionary)
        case -1203:
            result["status"] = "1203"
            result["response"] = "Server certificate has unknown root."
            return(result as NSDictionary)
        case -1204:
            result["status"] = "1204"
            result["response"] = "Server certificate not yet valid."
            return(result as NSDictionary)
        case -1205:
            result["status"] = "1205"
            result["response"] = "Client certificate rejected."
            return(result as NSDictionary)
        case -1206:
            result["status"] = "1206"
            result["response"] = "Client certificate required."
            return(result as NSDictionary)
        case -2000:
            result["status"] = "2000"
            result["response"] = "Can not load from network."
            return(result as NSDictionary)
            
        case -3000:
            result["status"] = "3000"
            result["response"] = "Can not create file."
            return(result as NSDictionary)
        case -3001:
            result["status"] = "3001"
            result["response"] = "Can not open file."
            return(result as NSDictionary)
        case -3002:
            result["status"] = "3002"
            result["response"] = "Can not close file."
            return(result as NSDictionary)
        case -3003:
            result["status"] = "3003"
            result["response"] = "Can not write to file."
            return(result as NSDictionary)
        case -3004:
            result["status"] = "3004"
            result["response"] = "Can not remove file."
            return(result as NSDictionary)
        case -3005:
            result["status"] = "3005"
            result["response"] = "Can not move file."
            return(result as NSDictionary)
        case -3006:
            result["status"] = "3006"
            result["response"] = "Download decoding failed mid stream."
            return(result as NSDictionary)
        case -3007:
            result["status"] = "3007"
            result["response"] = "Download decoding failed to complete."
            return(result as NSDictionary)
        
       
        default:
            result["status"] = "0000"
            result["response"] = "Unknown error."
            return(result as NSDictionary)
        }
    }

}
enum NSURLError: Int {
    case unknown = -1
    case cancelled = -999
    case badURL = -1000
    case timedOut = -1001
    case unsupportedURL = -1002
    case cannotFindHost = -1003
    case cannotConnectToHost = -1004
    case connectionLost = -1005
    case lookupFailed = -1006
    case HTTPTooManyRedirects = -1007
    case resourceUnavailable = -1008
    case notConnectedToInternet = -1009
    case redirectToNonExistentLocation = -1010
    case badServerResponse = -1011
    case userCancelledAuthentication = -1012
    case userAuthenticationRequired = -1013
    case zeroByteResource = -1014
    case cannotDecodeRawData = -1015
    case cannotDecodeContentData = -1016
    case cannotParseResponse = -1017
    //case NSURLErrorAppTransportSecurityRequiresSecureConnection NS_ENUM_AVAILABLE(10_11, 9_0) = -1022
    case fileDoesNotExist = -1100
    case fileIsDirectory = -1101
    case noPermissionsToReadFile = -1102
    //case NSURLErrorDataLengthExceedsMaximum NS_ENUM_AVAILABLE(10_5, 2_0) =   -1103
    
    // SSL errors
    case secureConnectionFailed = -1200
    case serverCertificateHasBadDate = -1201
    case serverCertificateUntrusted = -1202
    case serverCertificateHasUnknownRoot = -1203
    case serverCertificateNotYetValid = -1204
    case clientCertificateRejected = -1205
    case clientCertificateRequired = -1206
    case cannotLoadFromNetwork = -2000
    
    // Download and file I/O errors
    case cannotCreateFile = -3000
    case cannotOpenFile = -3001
    case cannotCloseFile = -3002
    case cannotWriteToFile = -3003
    case cannotRemoveFile = -3004
    case cannotMoveFile = -3005
    case downloadDecodingFailedMidStream = -3006
    case downloadDecodingFailedToComplete = -3007
    
    /*
     case NSURLErrorInternationalRoamingOff NS_ENUM_AVAILABLE(10_7, 3_0) =         -1018
     case NSURLErrorCallIsActive NS_ENUM_AVAILABLE(10_7, 3_0) =                    -1019
     case NSURLErrorDataNotAllowed NS_ENUM_AVAILABLE(10_7, 3_0) =                  -1020
     case NSURLErrorRequestBodyStreamExhausted NS_ENUM_AVAILABLE(10_7, 3_0) =      -1021
     
     case NSURLErrorBackgroundSessionRequiresSharedContainer NS_ENUM_AVAILABLE(10_10, 8_0) = -995
     case NSURLErrorBackgroundSessionInUseByAnotherProcess NS_ENUM_AVAILABLE(10_10, 8_0) = -996
     case NSURLErrorBackgroundSessionWasDisconnected NS_ENUM_AVAILABLE(10_10, 8_0)= -997
     */
}
