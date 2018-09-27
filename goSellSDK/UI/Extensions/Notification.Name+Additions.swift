//
//  Notification.Name+Additions.swift
//  goSellSDK
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

internal extension Notification.Name {
	
	internal static let sdkLanguageChanged			= Notification.Name("TapSDKLanguageChangedNotification")
	internal static let sdkLayoutDirectionChanged	= Notification.Name("TapSDKLayoutDirectionChangedNotification")
    internal static let paymentOptionsModelsUpdated = Notification.Name("TapPaymentOptionsUpdatedNotification")
    internal static let payButtonStateChanged       = Notification.Name("TapPayButtonStateChangedNotification")
}
