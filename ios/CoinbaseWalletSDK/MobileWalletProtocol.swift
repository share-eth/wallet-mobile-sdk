//
//  MobileWalletProtocol.swift
//  MobileWalletProtocol
//
//  Created by Jungho Bang on 9/12/22.
//

import Foundation

public enum MobileWalletProtocol {
    // CFBundleShortVersionString doesn't exist if the SDK is built as a static library.
    static private(set) var version = "1.1.0"
    
    // Doesn't make sense to use this until it's officially supported by wallets.
    //    static private(set) var version = "2.0.0"
    
    #if CROSS_PLATFORM
    static public func appendVersionTag(_ tag: String) {
        self.version += "/\(tag)"
    }
    #endif
}
