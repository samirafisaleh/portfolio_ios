//
//  TextListTVCell.swift
//  PortfolioApp
//
//  Created by Sami Saleh on 9/20/23.
//

import UIKit

class TextListTVCell: UITableViewCell {

    @IBOutlet var message_label: UILabel!


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
