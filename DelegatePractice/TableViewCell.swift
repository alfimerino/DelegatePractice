//
//  TableViewCell.swift
//  DelegatePractice
//
//  Created by Apple on 11/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static var cellId = String(describing: TableViewCell.self)
    
    private lazy var label: UILabel = {
       let label = UILabel()
        label.adjustsFontSizeToFitWidth = true
        addSubview(label)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        labelConstraints()
    }
    
    func configure(with person: Person) {
        label.text = person.name
    }
    
    func labelConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor),
            label.bottomAnchor.constraint(equalTo: bottomAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            label.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
