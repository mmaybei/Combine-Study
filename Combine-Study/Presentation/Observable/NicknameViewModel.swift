//
//  NicknameViewModel.swift
//  Combine-Study
//
//  Created by 예삐 on 12/27/24.
//

import Foundation

final class NicknameViewModel {
    var isValid = ObservablePattern<Bool>.init(false)
    
    func checkValid(name: String?) {
        guard let name else { return }
        
        isValid.value = name.count >= 5
    }
}
