import CoreGraphics

// A rectangle intersecting a triangle-like polygon that has an extra point which causes a very thin offshoot
let path = [
    CGPoint(x: -100, y: 100),
    CGPoint(x: 200, y: 100),
    CGPoint(x: 100, y: 0),
    CGPoint(x: 250, y: -80)
]
let path2 = [
    CGPoint(x: -50, y: 50),
    CGPoint(x: 200, y: 50),
    CGPoint(x: 200, y: -150),
    CGPoint(x: -50, y: -150)
]

// Two intersecting squares
let simplePath = [CGPoint(x: 0, y: 0), CGPoint(x: 20, y: 0), CGPoint(x: 20, y: 20), CGPoint(x: 0, y: 20)]
let simplePath2 = [CGPoint(x: 10, y: 10), CGPoint(x: 30, y: 10), CGPoint(x: 30, y: 30), CGPoint(x: 10, y: 30)]


// Together, these shapes make a shape similar to a capital "A", but with a crossbar that starts to the left of the arch, 
// and ends in the middle of the arch's right side.
let letterAPath = [
    CGPoint(x: 0, y: 0),
    CGPoint(x: 20, y: -30),
    CGPoint(x: 30, y: 0),
    CGPoint(x: 25, y: 0),
    CGPoint(x: 20, y: -20),
    CGPoint(x: 5, y: 0),
]
let letterAPath2 = [
    CGPoint(x: 0, y: -10),
    CGPoint(x: 25, y: -10),
    CGPoint(x: 25, y: -12),
    CGPoint(x: 0, y: -12),
]


func roundPaths(_ paths: [[CGPoint]]) -> [[CGPoint]] {
  return paths.map { path in
    return path.map { point in
      return CGPoint(x: round(point.x), y: round(point.y))
    }
  }
}
