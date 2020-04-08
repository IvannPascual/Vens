//
//  StringExtension.swift
//  Vens
//
//  Created by Aina Cuxart on 08/04/2020.
//  Copyright © 2020 Covid. All rights reserved.
//

import Foundation


extension String {
    init(localizedStringWithKey key: String) {
        self = NSLocalizedString(key, comment: "")
    }
}
