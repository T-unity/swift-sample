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
        setUpContent()
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

    func setUpContent() {
        let contentView = UIView()
        let cvLayer = contentView.layer
        
        contentView.frame.size = CGSize(width: view.frame.size.width, height: 340)
        contentView.center = CGPoint(x: view.center.x, y: view.center.y)
        contentView.backgroundColor = .white
        cvLayer.cornerRadius = 30
        cvLayer.shadowOffset = CGSize(width: 2, height: 2)
        cvLayer.shadowOpacity = 0.5
        
        contentView.layer.opacity = 0.8
        view.addSubview(contentView)
        
        view.backgroundColor = .systemGray6
        
        let labelfont = UIFont.systemFont(ofSize: 15, weight: .heavy)
        let size = CGSize(width: 150, height: 50)
        let color = colors.bluePurple
        let leftX = view.frame.size.width * 0.33
        let rightX = view.frame.size.width * 0.80
        
        setUpLabel("item 1", size: size, centerX: leftX, y: 20, font: labelfont, color: color, contentView)
        setUpLabel("item 2", size: size, centerX: rightX, y: 20, font: labelfont, color: color, contentView)
    }
    
    func setUpLabel(_ text: String, size: CGSize, centerX: CGFloat, y: CGFloat, font: UIFont, color: UIColor, _ parentView: UIView) {
        let label = UILabel()
        
        label.text = text
        label.frame.size = size
        label.center.x = centerX
        label.frame.origin.y = y
        label.font = font
        label.textColor = color
        parentView.addSubview(label)
    }
}
