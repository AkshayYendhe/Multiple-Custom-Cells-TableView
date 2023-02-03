//
//  ImageTableViewCell.swift
//  Multiple Custom Cells TableView
//
//  Created by Akshay Yendhe on 13/01/23.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    
    @IBOutlet var myImageView: UIImageView!
    static let identifier = "ImageTableViewCell"
    
    static func nib()->UINib{
        return UINib(nibName: "ImageTableViewCell", bundle: nil)
    }
    
    public func configureImageView(with imageName : String){
        myImageView.image = UIImage(named: imageName)
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
