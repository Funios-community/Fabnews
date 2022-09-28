//
//  CommentViewCell.swift
//  Fabnews
//
//  Created by PutriCH on 18/09/22.
//

import UIKit

class CommentViewCell: UITableViewCell {

    @IBOutlet weak var lbName: UILabel!
    
    @IBOutlet weak var lbComment: UILabel!
    
    @IBOutlet weak var lbDate: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setData(data: CommentModel) {
        lbName.text = data.name
        lbComment.text = data.comment
        lbDate.text = data.date
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
