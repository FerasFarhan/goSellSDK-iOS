//
//  CurrencySelectionViewControllerDelegate.swift
//  goSellSDK
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

import protocol TapAdditionsKit.ClassProtocol

internal protocol CurrencySelectionViewControllerDelegate: ClassProtocol {
    
    func currencySelectionViewControllerDidFinish(with currency: AmountedCurrency, changed: Bool)
}
