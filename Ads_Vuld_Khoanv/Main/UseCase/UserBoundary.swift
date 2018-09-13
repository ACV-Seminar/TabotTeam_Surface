//
//  UserBoundary.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 8/30/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public protocol UserBoundary{
    func login(email:String, password:String, complete: @escaping (Bool)->Void)
    func logout(complete : @escaping (Bool)->Void)
    func register(email:String, password:String, complete: @escaping (Bool) -> Void)
}
