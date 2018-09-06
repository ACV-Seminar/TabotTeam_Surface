//
//  User.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 8/30/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public class User:Entity{
    public static var CurrentUser:User?;
    private var id : String = "";
    private var email : String = "";
    private lazy var profile:Profile? = nil;
    init(id:String?, email: String?){
        self.id = id!;
        self.email = email!;
        profile = Profile(userid: "", mobile: "", paymentInfo: "", money: 0)
    }
    
    public func set(id:String, email:String){
        self.id = id;
        self.email = email;
    }
    public func getID()->String{
        return self.id;
    }
    
    public func getEmail()->String{
        return self.email;
    }
}

