//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Илья Осотов on 21.12.2021.
//

import UIKit

protocol ToDoCellDelegate: AnyObject {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    weak var delegate: ToDoCellDelegate?
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var isCompleteButtom: UIButton!
   
    @IBAction func buttonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
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
