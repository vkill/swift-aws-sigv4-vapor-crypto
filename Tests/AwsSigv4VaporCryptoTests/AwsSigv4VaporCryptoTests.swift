import XCTest
@testable import AwsSigv4VaporCrypto

final class AwsSigv4VaporCryptoTests: XCTestCase {
    func testSHA256Digest() {
        let crypto = AwsSigv4VaporCrypto()
        XCTAssertEqual(
            try crypto.sha256Digest(Data("123456".utf8)).hexEncodedString(),
            "8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92"
        )
    }

    func testHMACSHA256Digest() {
        let crypto = AwsSigv4VaporCrypto()
        XCTAssertEqual(
            try crypto.hmacSHA256Digest(Data("key".utf8), Data("123456".utf8)).hexEncodedString(),
            "4df81f55d708ae1720d5f65ef42f3475dc168fa23fde424ac5944f87c309b05f"
        )
    }

    static var allTests = [
        ("testSHA256Digest", testSHA256Digest),
        ("testHMACSHA256Digest", testHMACSHA256Digest),
    ]
}
