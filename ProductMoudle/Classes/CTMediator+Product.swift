//
//  CTMediator+Product.swift
//  ProductMoudle
//
//  Created by peixu on 2023/4/10.
//

import Foundation
import CTMediator

extension CTMediator {
    
    @objc public func Product_ViewControllerWithUserId(_ userId:String,callback:@escaping (String) -> Void) -> UIViewController? {
        let params = [
            "callBack":callback,
            "userId":userId,
            kCTMediatorParamsKeySwiftTargetModuleName:"Product_swift"
        ] as [String : Any]

        if let viewController = self.performTarget("Product", action: "viewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        
        return nil
    }
    
    @objc public func A_showSwift(callback:@escaping (String) -> Void) -> UIViewController? {
        let params = [
            "callback":callback,
            kCTMediatorParamsKeySwiftTargetModuleName:"A_swift"
            ] as [AnyHashable : Any]
        if let viewController = self.performTarget("A", action: "Extension_ViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}
