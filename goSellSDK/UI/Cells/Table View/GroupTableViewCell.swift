//
//  GroupTableViewCell.swift
//  goSellSDK
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

import struct CoreGraphics.CGBase.CGFloat
import class UIKit.UILabel.UILabel
import class UIKit.UITableViewCell.UITableViewCell

internal class GroupTableViewCell: BaseTableViewCell {
    
    // MARK: - Internal -
    // MARK: Properties
    
    internal weak var model: GroupTableViewCellModel?
    
    // MARK: - Private -
    // MARK: Properties
    
    @IBOutlet private weak var titleLabel: UILabel?
}

// MARK: - LoadingWithModelCell
extension GroupTableViewCell: LoadingWithModelCell {
    
    internal func updateContent(animated: Bool) {
		
		self.titleLabel?.setLocalizedText(self.model?.key)
    }
}
