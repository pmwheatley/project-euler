//
//  get.swift
//  ProjectEuler
//
//  Created by convict7421 on 15/12/2015.
//  Copyright © 2015 convict7421. All rights reserved.
//

import Foundation

extension SequenceType {

    func get(n: Int) -> Generator.Element {

        return self.take(n).last!

    }
    
}