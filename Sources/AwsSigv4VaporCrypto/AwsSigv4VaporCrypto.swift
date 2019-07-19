import CryptoKit
import struct Foundation.Data

public struct AwsSigv4VaporCrypto: AwsSigv4Crypto {
    public init() {
    }

    public func sha256Digest(_ value: Data) throws -> Data {
        return try Data(SHA256.hash(.data(value)).bytes())
    }

    public func hmacSHA256Digest(_ key: Data, _ value: Data) throws -> Data {
        return try Data(HMAC.SHA256.authenticate(.data(value), key: .data(key)).bytes())
    }
}
