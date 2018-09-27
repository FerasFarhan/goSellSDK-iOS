//
//  UIEdgeInsets+Additions.swift
//  goSellSDK
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

import struct	UIKit.UIGeometry.UIEdgeInsets

internal extension UIEdgeInsets {
	
	// MARK: - Internal -
	// MARK: Properties
	
	internal var localized: UIEdgeInsets {
		
		switch LocalizationProvider.shared.layoutDirection {
			
		case .leftToRight: return self
		case .rightToLeft: return self.mirrored
			
		}
	}
}
