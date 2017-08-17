// RUN: not %scale-test --begin 2 --end 4 --step 1 --select incrementScopeCounter %s
// REQUIRES: OS=macosx
// REQUIRES: asserts

struct V3 {
  init(_ x: Int, _ y: Int, _ z: Int) {
    self.x = Float(x)
    self.y = Float(y)
    self.z = Float(z)
  }

  init(_ x: Float, _ y: Float, _ z: Float) {
    self.x = x
    self.y = y
    self.z = z
  }

  init(_ x: Double, _ y: Double, _ z: Double) {
    self.x = Float(x)
    self.y = Float(y)
    self.z = Float(z)
  }

  var x: Float
  var y: Float
  var z: Float
}

let a = [
%for i in range(1, N):
  V3(0, 0, 0),
%end
]
