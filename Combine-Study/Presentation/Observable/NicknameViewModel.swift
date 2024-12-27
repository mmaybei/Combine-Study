//
//  NicknameViewModel.swift
//  Combine-Study
//
//  Created by 예삐 on 12/27/24.
//

import Foundation

final class NicknameViewModel {
    var isValid: ((Bool) ->  Void)?
    
    func checkValid(name: String?) {
        guard let name else { return }
        
        isValid?(name.count >= 5)
    }
}
