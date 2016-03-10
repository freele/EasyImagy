public protocol UInt8Type {}
extension UInt8: UInt8Type {}

public protocol IntType {}
extension Int: IntType {}

public protocol FloatType {}
extension Float: FloatType {}

public protocol DoubleType {}
extension Double: DoubleType {}

extension Image where Pixel: RGBAType { // map
    public func map(transform: RGBA -> RGBA) -> Image<RGBA> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }

    public func map(transform: RGBA -> UInt8) -> Image<UInt8> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }

    public func map(transform: RGBA -> Int) -> Image<Int> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }

    public func map(transform: RGBA -> Float) -> Image<Float> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }

    public func map(transform: RGBA -> Double) -> Image<Double> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: UInt8Type { // map
    public func map(transform: UInt8 -> UInt8) -> Image<UInt8> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: UInt8 -> Int) -> Image<Int> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: UInt8 -> Float) -> Image<Float> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: UInt8 -> Double) -> Image<Double> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: IntType { // map
    public func map(transform: Int -> Int) -> Image<Int> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: Int -> Float) -> Image<Float> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: Int -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: FloatType { // map
    public func map(transform: Float -> Float) -> Image<Float> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: Float -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: DoubleType { // map
    public func map(transform: Double -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Double> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: RGBAType { // map with indices
    public func map(transform: (x: Int, y: Int, pixel: RGBA) -> RGBA) -> Image<RGBA> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: RGBA) -> UInt8) -> Image<UInt8> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: RGBA) -> Int) -> Image<Int> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: RGBA) -> Float) -> Image<Float> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: RGBA) -> Double) -> Image<Double> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: UInt8Type { // map with indices
    public func map(transform: (x: Int, y: Int, pixel: UInt8) -> UInt8) -> Image<UInt8> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: UInt8) -> Int) -> Image<Int> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: UInt8) -> Float) -> Image<Float> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: UInt8) -> Double) -> Image<Double> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: IntType { // map with indices
    public func map(transform: (x: Int, y: Int, pixel: Int) -> Int) -> Image<Int> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: Int) -> Float) -> Image<Float> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: Int) -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: FloatType { // map with indices
    public func map(transform: (x: Int, y: Int, pixel: Float) -> Float) -> Image<Float> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._map(transform)
    }
    
    public func map(transform: (x: Int, y: Int, pixel: Float) -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: DoubleType { // map with indices
    public func map(transform: (x: Int, y: Int, pixel: Double) -> Double) -> Image<Double> {
        guard let zelf = self as? Image<Double> else { fatalError() }
        return zelf._map(transform)
    }
}

extension Image where Pixel: RGBAType { // Convolution
    public func convoluted(filter: Image<Int>) -> Image<RGBA> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
    
    public func convoluted(filter: Image<Float>) -> Image<RGBA> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
    
    public func convoluted(filter: Image<Double>) -> Image<RGBA> {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
}

extension Image where Pixel: UInt8Type { // Convolution
    public func convoluted(filter: Image<Int>) -> Image<UInt8> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
    
    public func convoluted(filter: Image<Float>) -> Image<UInt8> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }

    public func convoluted(filter: Image<Double>) -> Image<UInt8> {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
}

extension Image where Pixel: IntType { // Convolution
    public func convoluted(filter: Image<Int>) -> Image<Int> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
    
    public func convoluted(filter: Image<Float>) -> Image<Int> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
    
    public func convoluted(filter: Image<Double>) -> Image<Int> {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
}

extension Image where Pixel: FloatType { // Convolution
    public func convoluted(filter: Image<Int>) -> Image<Float> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }

    public func convoluted(filter: Image<Float>) -> Image<Float> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }

    public func convoluted(filter: Image<Double>) -> Image<Float> {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
}

extension Image where Pixel: DoubleType { // Convolution
    public func convoluted(filter: Image<Int>) -> Image<Double> {
        guard let zelf = self as? Image<Double> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }

    public func convoluted(filter: Image<Float>) -> Image<Double> {
        guard let zelf = self as? Image<Double> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }

    public func convoluted(filter: Image<Double>) -> Image<Double> {
        guard let zelf = self as? Image<Double> else { fatalError() }
        return zelf._convoluted(filter, mean: mean)
    }
}

extension Image where Pixel: RGBAType { // Interpolation
    public subscript(x: Float, y: Float) -> RGBA {
        guard let zelf = self as? Image<RGBA> else { fatalError() }
        return interpolate(zelf, x: x, y: y)
    }
}

extension Image where Pixel: UInt8Type { // Interpolation
    public subscript(x: Float, y: Float) -> UInt8 {
        guard let zelf = self as? Image<UInt8> else { fatalError() }
        return interpolate(zelf, x: x, y: y)
    }
}
extension Image where Pixel: IntType { // Interpolation
    public subscript(x: Float, y: Float) -> Int {
        guard let zelf = self as? Image<Int> else { fatalError() }
        return interpolate(zelf, x: x, y: y)
    }
}
extension Image where Pixel: FloatType { // Interpolation
    public subscript(x: Float, y: Float) -> Float {
        guard let zelf = self as? Image<Float> else { fatalError() }
        return interpolate(zelf, x: x, y: y)
    }
}
extension Image where Pixel: DoubleType { // Interpolation
    public subscript(x: Float, y: Float) -> Double {
        guard let zelf = self as? Image<Double> else { fatalError() }
        return interpolate(zelf, x: x, y: y)
    }
}

private func interpolate<P: PixelType>(image: Image<P>, x: Float, y: Float) -> P {
    let width = image.width
    let height = image.height
    
    var x0 = Int(floor(x))
    var y0 = Int(floor(y))
    var x1 = x0 + 1
    var y1 = y0 + 1
    
    if x1 <= 0 {
        x0 = 0
        
        if x1 < 0 {
            x1 = 0
        }
    } else if x0 >= width - 1 {
        if x0 >= width {
            x0 = width - 1
        }
        
        x1 = width - 1
    }
    
    if y1 <= 0 {
        y0 = 0
        
        if y1 < 0 {
            y1 = 0
        }
    } else if y0 >= height - 1 {
        if y0 >= height {
            y0 = height - 1
        }
        
        y1 = height - 1
    }
    
    let v00 = image.pixels[image._pixelIndex(x: x0, y: y0)]
    let v01 = image.pixels[image._pixelIndex(x: x1, y: y0)]
    let v10 = image.pixels[image._pixelIndex(x: x0, y: y1)]
    let v11 = image.pixels[image._pixelIndex(x: x1, y: y1)]
    
    let wx = x - Float(x0)
    let wy = y - Float(y0)
    let w00 = (1.0 - wx) * (1.0 - wy)
    let w01 = wx * (1.0 - wy)
    let w10 = (1.0 - wx) * wy
    let w11 = wx * wy
    
    return P(summableF: P.mulF(v00.summableF, w00) + P.mulF(v01.summableF, w01) + P.mulF(v10.summableF, w10) + P.mulF(v11.summableF, w11))

}

private func mean<P: PixelType>(weightedPixels: [(weight: Int, value: P)]) -> P {
    var weightSum = 0
    var sum = P.summableIZero
    for (weight, pixel) in weightedPixels {
        sum = sum + P.mulI(pixel.summableI, weight)
        weightSum += weight
    }
    
    guard weightSum > 0 else { fatalError() }
    
    return P(summableI: P.divI(sum, weightSum))
}

private func mean<P: PixelType>(weightedPixels: [(weight: Float, value: P)]) -> P {
    var weightSum: Float = 0
    var sum = P.summableFZero
    for (weight, pixel) in weightedPixels {
        sum = sum + P.mulF(pixel.summableF, weight)
        weightSum += weight
    }
    
    guard weightSum > 0 else { fatalError() }
    
    return P(summableF: P.divF(sum, weightSum))
}

private func mean<P: PixelType>(weightedPixels: [(weight: Double, value: P)]) -> P {
    var weightSum: Double = 0
    var sum = P.summableDZero
    for (weight, pixel) in weightedPixels {
        sum = sum + P.mulD(pixel.summableD, weight)
        weightSum += weight
    }
    
    guard weightSum > 0 else { fatalError() }
    
    return P(summableD: P.divD(sum, weightSum))
}

private protocol NumericType {
    func +(lhs: Self, rhs: Self) -> Self
}
extension Int: NumericType {}
extension Float: NumericType {}
extension Double: NumericType {}

private struct GenericRGBA<T: NumericType>: NumericType {
    var red: T
    var green: T
    var blue: T
    var alpha: T
}

private func +<T: NumericType>(lhs: GenericRGBA<T>, rhs: GenericRGBA<T>) -> GenericRGBA<T> {
    return GenericRGBA<T>(red: lhs.red + rhs.red, green: lhs.green + rhs.green, blue: lhs.blue + rhs.blue, alpha: lhs.alpha + rhs.alpha)
}

private protocol PixelType {
    typealias SummableI: NumericType
    typealias SummableF: NumericType
    typealias SummableD: NumericType
    
    init(summableI: SummableI)
    init(summableF: SummableF)
    init(summableD: SummableD)
    
    var summableI: SummableI { get }
    var summableF: SummableF { get }
    var summableD: SummableD { get }
    
    static var summableIZero: SummableI { get }
    static var summableFZero: SummableF { get }
    static var summableDZero: SummableD { get }
    
    static func mulI(lhs: SummableI, _ rhs: Int) -> SummableI
    static func mulF(lhs: SummableF, _ rhs: Float) -> SummableF
    static func mulD(lhs: SummableD, _ rhs: Double) -> SummableD
    
    static func divI(lhs: SummableI, _ rhs: Int) -> SummableI
    static func divF(lhs: SummableF, _ rhs: Float) -> SummableF
    static func divD(lhs: SummableD, _ rhs: Double) -> SummableD
}

extension RGBA: PixelType {
    private typealias SummableI = GenericRGBA<Int>
    private typealias SummableF = GenericRGBA<Float>
    private typealias SummableD = GenericRGBA<Double>

    private init(summableI: GenericRGBA<Int>) {
        self.init(red: summableI.red, green: summableI.green, blue: summableI.blue, alpha: summableI.alpha)
    }
    
    private init(summableF: GenericRGBA<Float>) {
        self.init(red: UInt8(summableF.red), green: UInt8(summableF.green), blue: UInt8(summableF.blue), alpha: UInt8(summableF.alpha))
    }
    
    private init(summableD: GenericRGBA<Double>) {
        self.init(red: UInt8(summableD.red), green: UInt8(summableD.green), blue: UInt8(summableD.blue), alpha: UInt8(summableD.alpha))
    }
    
    private var summableI: GenericRGBA<Int> {
        return GenericRGBA<Int>(red: redInt, green: greenInt, blue: blueInt, alpha: alphaInt)
    }
    
    private var summableF: GenericRGBA<Float> {
        return GenericRGBA<Float>(red: Float(red), green: Float(green), blue: Float(blue), alpha: Float(alpha))
    }
    
    private var summableD: GenericRGBA<Double> {
        return GenericRGBA<Double>(red: Double(red), green: Double(green), blue: Double(blue), alpha: Double(alpha))
    }
    
    private static var summableIZero: GenericRGBA<Int> {
        return GenericRGBA<Int>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    private static var summableFZero: GenericRGBA<Float> {
        return GenericRGBA<Float>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    private static var summableDZero: GenericRGBA<Double> {
        return GenericRGBA<Double>(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    private static func mulI(lhs: SummableI, _ rhs: Int) -> SummableI {
        return GenericRGBA<Int>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs)
    }
    
    private static func mulF(lhs: SummableF, _ rhs: Float) -> SummableF {
        return GenericRGBA<Float>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs)
    }

    private static func mulD(lhs: SummableD, _ rhs: Double) -> SummableD {
        return GenericRGBA<Double>(red: lhs.red * rhs, green: lhs.green * rhs, blue: lhs.blue * rhs, alpha: lhs.alpha * rhs)
    }
    
    private static func divI(lhs: SummableI, _ rhs: Int) -> SummableI {
        return GenericRGBA<Int>(red: lhs.red / rhs, green: lhs.green / rhs, blue: lhs.blue / rhs, alpha: lhs.alpha / rhs)
    }
    
    private static func divF(lhs: SummableF, _ rhs: Float) -> SummableF {
        return GenericRGBA<Float>(red: lhs.red / rhs, green: lhs.green / rhs, blue: lhs.blue / rhs, alpha: lhs.alpha / rhs)
    }
    
    private static func divD(lhs: SummableD, _ rhs: Double) -> SummableD {
        return GenericRGBA<Double>(red: lhs.red / rhs, green: lhs.green / rhs, blue: lhs.blue / rhs, alpha: lhs.alpha / rhs)
    }
}

extension UInt8: PixelType {
    typealias SummableI = Int
    typealias SummableF = Float
    typealias SummableD = Double
    
    private init(summableI: Int) {
        self = UInt8(summableI)
    }
    
    private init(summableF: Float) {
        self = UInt8(summableF)
    }
    
    private init(summableD: Double) {
        self = UInt8(summableD)
    }
    
    private var summableI: Int {
        return Int(self)
    }
    
    private var summableF: Float {
        return Float(self)
    }
    
    private var summableD: Double {
        return Double(self)
    }
    
    private static var summableIZero: Int {
        return 0
        
    }
    
    private static var summableFZero: Float {
        return 0
        
    }
    
    private static var summableDZero: Double {
        return 0
        
    }
    
    private static func mulI(lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    private static func mulF(lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    private static func mulD(lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
    
    private static func divI(lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    private static func divF(lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    private static func divD(lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension Int: PixelType {
    typealias SummableI = Int
    typealias SummableF = Float
    typealias SummableD = Double
    
    private init(summableI: Int) {
        self = summableI
    }
    
    private init(summableF: Float) {
        self = Int(summableF)
    }
    
    private init(summableD: Double) {
        self = Int(summableD)
    }
    
    private var summableI: Int {
        return self
    }
    
    private var summableF: Float {
        return Float(self)
    }
    
    private var summableD: Double {
        return Double(self)
    }
    
    private static var summableIZero: Int {
        return 0
        
    }
    
    private static var summableFZero: Float {
        return 0
        
    }
    
    private static var summableDZero: Double {
        return 0
        
    }
    
    private static func mulI(lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    private static func mulF(lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    private static func mulD(lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
    
    private static func divI(lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * rhs
    }
    
    private static func divF(lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    private static func divD(lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension Float: PixelType {
    typealias SummableI = Float
    typealias SummableF = Float
    typealias SummableD = Double
    
    private init(summableI: Float) {
        self = summableI
    }
    
    private init(summableF: Float) {
        self = summableF
    }
    
    private init(summableD: Double) {
        self = Float(summableD)
    }
    
    private var summableI: Float {
        return self
    }
    
    private var summableF: Float {
        return self
    }
    
    private var summableD: Double {
        return Double(self)
    }
    
    private static var summableIZero: Float {
        return 0
        
    }
    
    private static var summableFZero: Float {
        return 0
        
    }
    
    private static var summableDZero: Double {
        return 0
        
    }
    
    private static func mulI(lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Float(rhs)
    }
    
    private static func mulF(lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    private static func mulD(lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
    
    private static func divI(lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Float(rhs)
    }
    
    private static func divF(lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * rhs
    }
    
    private static func divD(lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}

extension Double: PixelType {
    typealias SummableI = Double
    typealias SummableF = Double
    typealias SummableD = Double
    
    private init(summableI: Double) {
        self = summableI
    }
    
    private init(summableF: Double) {
        self = summableF
    }
    
    private init(summableD: Double) {
        self = summableD
    }
    
    private var summableI: Double {
        return self
    }
    
    private var summableF: Double {
        return self
    }
    
    private var summableD: Double {
        return self
    }
    
    private static var summableIZero: Double {
        return 0
        
    }
    
    private static var summableFZero: Double {
        return 0
        
    }
    
    private static var summableDZero: Double {
        return 0
        
    }
    
    private static func mulI(lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Double(rhs)
    }
    
    private static func mulF(lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * Double(rhs)
    }
    
    private static func mulD(lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
    
    private static func divI(lhs: SummableI, _ rhs: Int) -> SummableI {
        return lhs * Double(rhs)
    }
    
    private static func divF(lhs: SummableF, _ rhs: Float) -> SummableF {
        return lhs * Double(rhs)
    }
    
    private static func divD(lhs: SummableD, _ rhs: Double) -> SummableD {
        return lhs * rhs
    }
}
