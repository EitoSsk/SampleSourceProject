//
//  DIContainer.swift
//  SampleSourceProject
//
//  Created by 佐々木 栄人 on 2019/08/24.
//  Copyright © 2019 beams001. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

// https://dev.classmethod.jp/smartphone/swinject-dependency-injection/

extension SwinjectStoryboard {

    class func setup() {
        
        // SampleModelProtocol
        defaultContainer.register(SampleModelProtocol.self) { _ in
            SampleModelImpl()
        }
        
        // SampleAPIProtocol
        defaultContainer.register(SampleAPIModelProtocol.self) { _ in
            SampleAPIModel()
        }
        
        defaultContainer.register(SamplePresenterProtocol.self) { r in
            SamplePresenter(sampleAPIModel: r.resolve(SampleAPIModelProtocol.self)!)
        }
    }
}
