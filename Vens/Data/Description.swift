//
//  Description.swift
//  Vens
//
//  Created by Ivan Pascual Palacios on 09/04/2020.
//  Copyright © 2020 Covid. All rights reserved.
//

import Foundation
import RealmSwift

class Description: Object {
    
    @objc dynamic  var id: Int = 0
    @objc dynamic  var lat: Float = 0.0
    @objc dynamic  var long: Float = 0.0
    @objc dynamic  var name: String = ""
    @objc dynamic  var type: String = ""
    @objc dynamic  var phone: String?
    @objc dynamic  var mobilePhone: String?
    @objc dynamic  var adress: String?
    @objc dynamic  var schedule: String?
    @objc dynamic  var web: String?
    @objc dynamic  var mail: String?
    @objc dynamic  var favourite: Bool = false
    @objc dynamic  var acceptOrders: Bool = false
    @objc dynamic  var delivery: Bool = false

    
}
