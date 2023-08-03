//
//  ViewController.swift
//  Example
//
// The MIT License (MIT)

// Copyright (c) 2020 Vinh Nguyen

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

import UIKit
import NVActivityIndicatorView
import NVActivityIndicatorViewExtended

class ViewController: UIViewController {

    private let presentingIndicatorTypes = {
        return NVActivityIndicatorType.allCases.filter { $0 != .blank }
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let container = UIView()
        container.backgroundColor = .brown
        container.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(container)
        container.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        container.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        container.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.60).isActive = true
        container.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80).isActive = true
        
        let activityIndicatorView = NVActivityIndicatorView(type: .ballScaleMultiple, color: .gray)
        activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(activityIndicatorView)
        activityIndicatorView.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        activityIndicatorView.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        
        activityIndicatorView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        activityIndicatorView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        activityIndicatorView.startAnimating()
        
    }

//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        let safeArea = view.safeAreaLayoutGuide.layoutFrame
//
//        var cols = 4
//        var rows = Int(ceil(Double(presentingIndicatorTypes.count) / 4.0))
//        if safeArea.width > safeArea.height {
//            //Landscape
//            cols = Int(ceil(Double(presentingIndicatorTypes.count) / 4.0))
//            rows = 4
//        }
//        let cellWidth = Int(safeArea.width / CGFloat(cols))
//        let cellHeight = Int(safeArea.height / CGFloat(rows))
//
//        self.view.subviews.forEach {
//            $0.removeFromSuperview()
//        }
//
//        for (index, indicatorType) in presentingIndicatorTypes.enumerated() {
//            if index == 18 {
//                let x = index % cols * cellWidth + Int(safeArea.origin.x)
//                let y = index / cols * cellHeight + Int(safeArea.origin.y)
//                let frame = CGRect(x: x, y: y, width: cellWidth, height: cellHeight)
//                let activityIndicatorView = NVActivityIndicatorView(type: indicatorType)
//                activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
//                self.view.addSubview(activityIndicatorView)
//                activityIndicatorView.padding = 20
//                activityIndicatorView.startAnimating()
//            }
//        }
//    }

}
