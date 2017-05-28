/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit

public func RGB(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) -> UIColor {
  return RGBA(red, green, blue, 255)
}

public func RGBA(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor {
  return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha/255)
}

extension UIColor {

  public convenience init?(rgbaString: String) {
    var components = rgbaString.components(separatedBy: ",")

    if components.count == 3 {
      components.append("1.0")
    } else if components.count != 4 {
      return nil
    }

    guard let redComponent = Float(components[0]),
      let greenComponent = Float(components[1]),
      let blueComponent = Float(components[2]),
      let alphaComponent = Float(components[3]) else {
        return nil
    }

    let red = CGFloat(redComponent / 255.0)
    let green = CGFloat(greenComponent / 255.0)
    let blue = CGFloat(blueComponent / 255.0)
    let alpha = CGFloat(alphaComponent / 255.0)

    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
}
