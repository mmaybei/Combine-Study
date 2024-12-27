//
//  NicknameView.swift
//  Combine-Study
//
//  Created by 예삐 on 12/27/24.
//

import UIKit

import SnapKit
import Then

final class NicknameView: UIView {
    private let titleLabel = UILabel().then {
        $0.text = "닉네임을 설정해주세요."
        $0.textColor = .black
        $0.font = UIFont(name: "Pretendard-SemiBold", size: 20)
    }
    
    let nicknameTextField = UITextField().then {
        $0.placeholder = "닉네임을 입력해주세요."
        $0.textColor = .black
        $0.font = UIFont(name: "Pretendard-Medium", size: 16)
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.gray2.cgColor
        $0.layer.cornerRadius = 8
        $0.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        $0.leftViewMode = .always
    }
    
    let nextButton = UIButton().then {
        $0.setTitle("다음", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = UIFont(name: "Pretendard-SemiBold", size: 16)
        $0.backgroundColor = .gray2
        $0.layer.cornerRadius = 12
        $0.isEnabled = false
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        backgroundColor = .white
        addSubviews(titleLabel, nicknameTextField, nextButton)
    }
    
    private func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(114)
            $0.leading.equalToSuperview().inset(20)
        }
        
        nicknameTextField.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(48)
        }
        
        nextButton.snp.makeConstraints {
            $0.bottom.equalToSuperview().inset(64)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(64)
        }
    }
}
