//
//  CodedTableViewCell.swift
//  Multiple Custom Cells TableView
//
//  Created by Akshay Yendhe on 13/01/23.
//

import UIKit

class CodedTableViewCell: UITableViewCell {

    static let identifier = "CodedTableViewCell"
    
    private let myLabel : UILabel = {
        let  label = UILabel()
        return label
    }()
    
    private let myImageView : UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    public func configureImageView(){
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
        
        myLabel.text = "It works!"
        myLabel.textAlignment = .center
        myImageView.image = UIImage(named: "image2")
        myImageView.contentMode = .scaleAspectFill
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = CGRect(x: 5, y: 5, width: 100, height: 100)
        myLabel.frame = CGRect(x: 105, y: 5, width: contentView.frame.size.width-105, height: 100)
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = 50.0
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
