//
//  TableViewCellEasyParking.swift
//  easyParking
//
//  Created by Facultad de Contaduría y Administración on 19/04/23.
//

import UIKit

class TableViewCellEasyParking: UITableViewCell {

    @IBOutlet weak var imgauto: UIImageView!
    @IBOutlet weak var lbplacas: UILabel!
    @IBOutlet weak var lbcolor: UILabel!
    @IBOutlet weak var lbmodelo: UILabel!
    @IBOutlet weak var lbnombre: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
