//
//  UserGateway.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 8/30/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public  protocol UserGateway:EntityGateway{
    func updatePassword(password : String, complete: @escaping(Bool)->Void)
    func Login(email: String , password:String, complete: @escaping (Bool,User?)->Void)
    func Logout(complete: @escaping (Bool)-> Void)
    func Regiter(email:String, password: String, complete: @escaping (Bool, User?) -> Void)
}
