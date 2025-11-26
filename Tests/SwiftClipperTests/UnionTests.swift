
import XCTest
@testable import SwiftClipper

final class UnionTests: XCTestCase {

    func testUnion() {
        let expectedUnion: Path = [
            CGPoint(x: 200, y: -54),
            CGPoint(x: 250, y: -80),
            CGPoint(x: 200, y: -53),
            CGPoint(x: 200, y: 50),
            CGPoint(x: 150, y: 50),
            CGPoint(x: 200, y: 100),
            CGPoint(x: -100, y: 100),
            CGPoint(x: -3, y: 50),
            CGPoint(x: -50, y: 50),
            CGPoint(x: -50.0, y: -150.0),
            CGPoint(x: 200.0, y: -150.0),
        ]
        let unions = roundPaths(path.union(path2))
        XCTAssertEqual(unions.count, 1)
        XCTAssertEqual(unions.first!, expectedUnion)
    }

    func testSimpleUnion() {
        let expectedUnion = [
          CGPoint(x: 20, y: 0),
          CGPoint(x: 20, y: 10),
          CGPoint(x: 30, y: 10),
          CGPoint(x: 30, y: 30),
          CGPoint(x: 10, y: 30),
          CGPoint(x: 10, y: 20),
          CGPoint(x: 0, y: 20),
          CGPoint(x: 0, y: 0),
        ]
        let union = roundPaths(simplePath.union(simplePath2))
        XCTAssertEqual(union.count, 1)
        XCTAssertEqual(union.first!, expectedUnion)
    }

    func testLetterAUnion() {
        let expectedUnions = [
            [
                CGPoint(x: 30, y: 0),
                CGPoint(x: 25, y: 0),
                CGPoint(x: 23, y: -10),
                CGPoint(x: 13, y: -10),
                CGPoint(x: 5, y: 0),
                CGPoint(x: 0, y: 0),
                CGPoint(x: 7, y: -10),
                CGPoint(x: 0, y: -10),
                CGPoint(x: 0, y: -12),
                CGPoint(x: 8, y: -12),
                CGPoint(x: 20, y: -30),
            ],
            [
                CGPoint(x: 14, y: -12),
                CGPoint(x: 22, y: -12),
                CGPoint(x: 20, y: -20),
            ]
        ]
        let unions = roundPaths(letterAPath.union(letterAPath2))

        XCTAssertEqual(unions.count, 2)
        XCTAssertEqual(unions[0], expectedUnions[0])
        XCTAssertEqual(unions[1], expectedUnions[1])
    }
}
