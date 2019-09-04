//
//  structure.swift
//  Date_time
//
//  Created by COE-02 on 04/09/19.
//  Copyright © 2019 COE-02. All rights reserved.
//

import UIKit

class structure: NSObject {

}
struct CountryClass {
    var CountryId:Int?
    var CountryName:String?
}
struct StateClass {
    var StateId:Int?
    var StateName:String?
    var RefCountryId:Int?
}
struct CityClass {
    var CityId:Int?
    var CityName:String?
    var RefStateId:Int?
}
