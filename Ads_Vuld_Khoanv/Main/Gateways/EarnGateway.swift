//
//  EarnGateway.swift
//  Ads_Vuld_Khoanv
//
//  Created by Vu Le duy on 9/13/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public protocol EarnGateway {
    func onInstallApp(complete: @escaping (Bool)->Void);
    func onVideoReward(complete: @escaping (Bool)->Void);
    func onFullAds(complete:@escaping (Bool)->Void);
}
