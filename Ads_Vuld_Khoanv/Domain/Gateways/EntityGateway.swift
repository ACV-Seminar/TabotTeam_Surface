//
//  EntityGateway.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 8/30/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public protocol EntityGateway{
    func  save(T:Entity) -> ()
    func get<T>(idEntity:String) ->  T where T:Entity
}
