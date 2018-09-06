//
//  DomainEntity.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 9/6/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public class DomainEntity{
    public static var currentUser:User = User(id: "", email: "");
    public static var currentProfile:Profile = Profile(userid: "", mobile: "", paymentInfo: "", money: 0);
    
    public static func onLoginedUser(user:User){
        currentUser = user;
        currentProfile.load(userID: user.getID());
    }
    
    public static func onRegisteredUser(user: User){
        currentUser = user;
        currentProfile.create(userID: user.getID());
    }
    
}
