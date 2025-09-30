//
//  MWPError.swift
//  MobileWalletProtocol
//
//  Created by Jungho Bang on 6/16/22.
//

import Foundation

public enum MWPError: Swift.Error {
    case encodingFailed
    case decodingFailed
    case missingSymmetricKey
    case invalidHandshakeRequest
    case openUrlFailed
    case walletReturnedError(String)
    case walletInstanceNotFound
}

extension MWPError: LocalizedError {
    public var errorDescription: String? {
        return String(reflecting: self)
    }
}
