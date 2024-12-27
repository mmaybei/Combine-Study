//
//  ViewController.swift
//  Combine-Study
//
//  Created by 예삐 on 12/26/24.
//

import UIKit

final class NicknameViewController: UIViewController {
    
    private let rootView = NicknameView()
    
    private let viewModel = NicknameViewModel()
    
    override func loadView() {
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTarget()
        bindViewModel()
    }
    
    private func setTarget() {
        rootView.nicknameTextField.addTarget(
            self,
            action: #selector(textFieldDidChange),
            for: .editingChanged
        )
    }
    
    private func bindViewModel() {
        viewModel.isValid = { [weak self] isValid in
            self?.rootView.nextButton.isEnabled = isValid ? true: false
            self?.rootView.nextButton.backgroundColor = isValid ? .mainPurple : .gray2
        }
    }
    
    @objc
    private func textFieldDidChange() {
        viewModel.checkValid(name: rootView.nicknameTextField.text)
    }
}
