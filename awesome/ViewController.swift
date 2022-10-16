//
//  ViewController.swift
//  awesome
//
//  Created by nariyoshi.takada on 2022/10/16.
//

import UIKit

class ViewController: UIViewController {
    
    let colors = Colors()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpGradation()
        
        let contentView = UIView()
        let cvLayer = contentView.layer
        
        contentView.frame.size = CGSize(width: view.frame.size.width, height: 340)
        contentView.center = CGPoint(x: view.center.x, y: view.center.y)
        contentView.backgroundColor = .white
        cvLayer.cornerRadius = 30
        cvLayer.shadowOffset = CGSize(width: 2, height: 2)
        cvLayer.shadowOpacity = 0.5
        view.addSubview(contentView)
    }
    
    func setUpGradation() {
        let gLayer = CAGradientLayer()
        // let view = view.frame.size
        gLayer.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height / 2)
        gLayer.colors = [colors.blue.cgColor, colors.green.cgColor] // UIColorを.cgColorに型変換している。
        gLayer.startPoint = CGPoint.init(x: 0, y: 0)
        gLayer.endPoint = CGPoint.init(x: 1, y: 1)
        view.layer.insertSublayer(gLayer, at: 0)
    }

}
