//
//  ViewController.swift
//  Constraints
//
//  Created by Kaue Ludovico on 13/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "tinky")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addSubviews()
    }
    
    func addSubviews() {
        
        view.addSubview(imageView)
        
        
        addConstraints()
        
    }
    
    func addConstraints() {
        
        
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 20).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 20).isActive = true
        
        imageView.widthAnchor.constraint(equalToConstant: 271).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 271).isActive = true
        
    }
}

