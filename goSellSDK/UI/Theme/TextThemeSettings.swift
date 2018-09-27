//
//  TextThemeSettings.swift
//  goSellSDK
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

import class UIKit.NSParagraphStyle.NSParagraphStyle
import class UIKit.UIColor.UIColor
import class UIKit.UIFont.UIFont

internal struct TextThemeSettings {
    
    // MARK: - Internal -
    // MARK: Properties
    
    internal let font: UIFont
    
    internal let color: UIColor
    
    internal let paragraphStyle: LocalizedParagraphStyle
	
    internal var asStringAttributes: [NSAttributedString.Key: Any] {
        
        return [
            
            .foregroundColor: self.color,
            .font: self.font,
            .paragraphStyle: self.paragraphStyle
        ]
    }
    
    // MARK: Methods
    
    internal init(_ font: UIFont, _ color: UIColor, _ paragraphStyle: LocalizedParagraphStyle) {
        
        self.font = font
        self.color = color
        self.paragraphStyle = paragraphStyle
    }
}
