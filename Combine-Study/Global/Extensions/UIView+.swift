//
//  UIView+.swift
//  Combine-Study
//
//  Created by 예삐 on 12/27/24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            self.addSubview($0)
        }
    }
}
