//
//  ProfileGateway.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 9/5/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public protocol ProfileGateway{
    func load(userID: String, complete: @escaping (Bool, Profile?)->Void)
    func create(userID:String, complete: @escaping (Bool, Profile?)->Void)
    func update(mobile:String?, email:String?, paymentInfo:String?)
}
