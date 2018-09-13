//
//  Profile.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 8/30/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public class Profile: Entity{
    private var userid : String?;
    private var mobile: String?;
    private var paymentInfo: String?
    private var money : Int?;
    public init(userid:String?, mobile:String?, paymentInfo:String?, money:Int?){
        self.userid = userid;
        self.mobile = mobile;
        self.paymentInfo = paymentInfo;
    }
   
    public func update(mobile: String?, paymentInfo:String) -> Void{
        self.mobile = mobile;
        self.paymentInfo = paymentInfo
    }
    
    public func load(userID:String){
        DependencyResolver.getProfileGateway().load(userID: userID, complete: {(isSuccess, profile) in
            if(isSuccess){
                self.userid = profile?.userid;
                self.mobile = profile?.mobile;
                self.money = profile?.money;
                self.paymentInfo = profile?.paymentInfo;
            }
            
        });
    }
    
    public func create(userID:String){
        print("add profle - 2")

        DependencyResolver.getProfileGateway().create(userID: userID, complete:{ (isSuccess, profile) in
            if(isSuccess){
                print("add profle -3")

                self.userid = profile?.userid;
                self.mobile = profile?.mobile;
                self.money = profile?.money;
                self.paymentInfo = profile? .paymentInfo;
            }
        });
    }
    public func clear(){
        self.userid = nil;
        self.mobile = nil;
        self.paymentInfo = nil;
        self.money = 0;
    }
}
