//
//  ProjectDescriptionTVCell.swift
//  PortfolioApp
//
//  Created by Sami Saleh on 9/19/23.
//

import UIKit

class ProjectDescriptionTVCell: UITableViewCell {


    @IBOutlet var textview: UITextView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    static func NibString() -> String {
        return String(describing: self)
    }

    static func IdentifierString() -> String {
        return String(describing: self).replacingOccurrences(of: "TV", with: "")
    }
}
