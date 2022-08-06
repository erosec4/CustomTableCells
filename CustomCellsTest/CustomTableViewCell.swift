//
//  CustomTableViewCell.swift
//  CustomCellsTest
//
//  Created by Emma Carpenetti on 7/25/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    static let identifier = "CustomTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    
   /* public func configure(with title: String, imageName: String) {
        cellLabel.text = title
    } */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
