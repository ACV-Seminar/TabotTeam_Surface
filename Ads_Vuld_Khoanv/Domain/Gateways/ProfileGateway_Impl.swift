//
//  ProfileGateway_Impl.swift
//  Ads_Vuld_Khoanv
//
//  Created by vuld on 9/5/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
import Firebase;
public class ProfileGateway_Impl : ProfileGateway{
    
    public func load(userID: String, complete: @escaping (Bool, Profile?) -> Void) {
        print("load Profile")
        let myProfileRef = Database.database().reference().child("Profiles").child(userID);
        myProfileRef.observe(.childAdded, with: {(snapshot) in
            let uidInContact = snapshot.key
            //get user
//            let refFriend = Database.database().reference().child("users").child(uidInContact)
//            refFriend.observeSingleEvent(of: .value, with: {(snapshot) in
//                var users = [User]()
//                if let dictionary = snapshot.value as? NSDictionary {
//                    let user = User()
//                    user.id = snapshot.key
//                    user.email = dictionary["email"] as? String
//                    user.name = dictionary["name"] as? String
//                    let profileImageUrl = dictionary["profileImageUrl"] as? String
//                    user.profileImage = profileImageUrl
//                    users.append(user)
//                    DispatchQueue.main.async {
//                        print("email: \(user.email)")
//                        completed(users, true)
//                        return
//                    }
//                }
//            })
        })
        
        
        
    }
    
    public func create(userID: String, complete: @escaping (Bool, Profile?) -> Void) {
        print("add profle")
        var proRef = Database.database().reference().child("Profiles");
        var myProfileRef = proRef.child(userID)
        myProfileRef.updateChildValues(["mobile" : "000"])
        myProfileRef.updateChildValues(["paymentInfo" : "111"])
        myProfileRef.updateChildValues(["money" : 0])
        myProfileRef.observeSingleEvent(of: .value, with: {(snapshot) in
            let myValue = snapshot.value as? NSDictionary;
            let mobile = myValue?["mobile"] as? String;
            let paymentInfo = myValue?["paymentInfo"] as? String;
            let money = myValue?["money"] as? Int;
            var profile = Profile(userid: userID, mobile:mobile, paymentInfo:paymentInfo, money: money);
            complete(true, profile);
        }, withCancel: {(error) in
            complete(false, nil)
            print(error.localizedDescription);
        });
    }
    
    public func update(mobile: String?, email: String?, paymentInfo: String?) {
        
    }
    

}
