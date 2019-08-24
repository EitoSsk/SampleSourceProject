//
//  SampleAPIModel.swift
//  SampleSourceProject
//
//  Created by 佐々木 栄人 on 2019/08/24.
//  Copyright © 2019 beams001. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

typealias FailCallback = (_ error: Error, _ messageId: String?, _ errorType: String?, _ errorCode: String?, _ api: String?) -> Void

struct FailModel {
    let error: Error
    let messageId: String?
    let errorType: String?
    let errorCode: String?
    let api: String?
}

protocol SampleAPIModelProtocol {
    func httpRequest(success: @escaping (_ data: JSON) -> Void,
                     fail: @escaping FailCallback)
}

final class SampleAPIModel: SampleAPIModelProtocol {

    func httpRequest(success: @escaping (_ data: JSON) -> Void, fail: @escaping FailCallback) {
        // nop
    }
}
