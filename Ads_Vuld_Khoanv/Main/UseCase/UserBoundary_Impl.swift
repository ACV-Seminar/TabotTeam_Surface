//
//  UserBoundary_Impl.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 9/5/18.
//  Copyright © 2018 vuld. All rights reserved.
//
import Foundation
public class UserBoundary_Impl : UserBoundary{
    init() {
        DomainEntity.currentUser = User();
    }
    public func login(email: String, password: String, complete :@escaping (Bool)->Void) {
        DomainEntity.currentUser?.login(email: email, password: password, complete: complete)
    }
    public func logout(complete: @escaping (Bool)->Void) {
        DomainEntity.currentUser?.logout(complete: complete)
    }
    
    public func register(email: String, password: String, complete: @escaping (Bool)-> Void) {
        DomainEntity.currentUser?.logout(complete: complete)
    }
}
