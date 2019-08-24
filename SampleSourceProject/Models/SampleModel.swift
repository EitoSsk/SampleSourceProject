//
//  SampleModel.swift
//  SampleSourceProject
//
//  Created by 佐々木 栄人 on 2019/08/24.
//  Copyright © 2019 beams001. All rights reserved.
//

import Foundation
import RealmSwift

// https://qiita.com/leegun/items/70414223b2339b6052ee

class SampleModel: Object {
    dynamic var id = 0
    dynamic var name = ""
}

protocol SampleModelProtocol {
    func initialize()
    func select(id: Int) throws
    func insert() throws
    func update(id: Int) throws -> Bool
    func delete(id: Int) throws -> Bool
}

final class SampleModelImpl: SampleModelProtocol {
    
    internal func initialize() {
        // nop
    }
    
    internal  func select(id: Int) throws {
        // nop
    }
    
    internal func insert() throws {
        // nop
    }
    
    internal func update(id: Int) throws -> Bool {
        // nop
        return false
    }
    
    internal func delete(id: Int) throws -> Bool {
        // nop
        return false
    }
}
