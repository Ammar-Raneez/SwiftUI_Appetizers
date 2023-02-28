//
//  String+Ext.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-28.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailFormat = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
