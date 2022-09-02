//
//  MainTableViewCell.swift
//  TestTask
//
//  Created by Артур Агеев on 02.09.2022.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var lblMovie: UILabel!
    override func prepareForReuse() {
        super.prepareForReuse()
        self.lblMovie.isHidden = true
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
