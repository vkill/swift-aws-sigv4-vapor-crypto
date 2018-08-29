import AwsSigv4
import Crypto

public struct AwsSigv4VaporCrypto: AwsSigv4Crypto {
    public init() {
    }

    public func sha256Digest(_ value: Data) throws -> Data {
        return try SHA256.hash(value)
    }

    public func hmacSHA256Digest(_ key: Data, _ value: Data) throws -> Data {
        return try HMAC.SHA256.authenticate(value, key: key)
    }
}
