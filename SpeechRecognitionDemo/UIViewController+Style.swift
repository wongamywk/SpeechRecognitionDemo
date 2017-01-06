//
//  UIViewController+Style.swift
//  SpeechRecognitionDemo
//
//  Created by Patrick Balestra on 1/6/17.
//  Copyright © 2017 Patrick Balestra. All rights reserved.
//

import UIKit

extension ViewController {

    func applyStyle() {
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0, green: 0.8034699559, blue: 0.789139688, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black
    }

    func setUI(status: SpeechStatus) {
        switch status {
        case .ready:
            microphoneButton.setImage(#imageLiteral(resourceName: "available"), for: .normal)
        case .recognizing:
            microphoneButton.setImage(#imageLiteral(resourceName: "stop"), for: .normal)
        case .unavailable:
            microphoneButton.setImage(#imageLiteral(resourceName: "unavailable"), for: .normal)
        }
    }
}