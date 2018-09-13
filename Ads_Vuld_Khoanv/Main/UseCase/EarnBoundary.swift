//
//  EarnBoundary.swift
//  Ads_Vuld_Khoanv
//
//  Created by Vu Le duy on 9/13/18.
//  Copyright © 2018 vuld. All rights reserved.
//

import Foundation
public protocol EarnBoundary{
    func installApp(complete:@escaping (Bool)->Void)
    func videoReward(complete:@escaping (Bool) -> Void)
    func fullAds(complete:@escaping (Bool) ->Void)
}
