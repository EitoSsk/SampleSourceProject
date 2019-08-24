//
//  SamplePresenter.swift
//  SampleSourceProject
//
//  Created by 佐々木 栄人 on 2019/08/24.
//  Copyright © 2019 beams001. All rights reserved.
//

import Foundation
import SwiftyJSON

struct SampleDataModel {
    let id: String
    let name: String
    
    init(_ model: JSON) {
        id = model["id"].stringValue
        name = model["name"].stringValue
    }
    #if DEVELOP
    init() {
        self.id = ""
        self.name = ""
    }
    #endif
}

final class SamplePresenter: SamplePresenterProtocol {
    
    var sampleAPIModel: SampleAPIModelProtocol
    
    init(sampleAPIModel: SampleAPIModelProtocol) {
        self.sampleAPIModel = sampleAPIModel
    }
    
    private func getSampleData() {
        sampleAPIModel.httpRequest(success: { result in
            let sampleDataModel = SampleDataModel.init(result)
            print(sampleDataModel)
        }, fail: { error, messageId, errorType, errorCode, api in
            
        })
    }
}
