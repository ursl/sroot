import Foundation
import Compression


// Hmm:
// /Users/ursl/swift/sroot/gzreader/Sources/gzreader/main.swift:12:22:
// error: 'compression_decode_buffer' is only available in macOS 10.11 or newer

// ----------------------------------------------------------------------
func decompress(_ data: Data) -> String {
    let size = 8_000_000
    let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: size)
    let result = data.subdata(in: 2 ..< data.count).withUnsafeBytes (
      {
          let read = compression_decode_buffer(buffer, size, $0.baseAddress!.bindMemory(to: UInt8.self, capacity: 1),
                                             data.count - 2, nil, COMPRESSION_ZLIB)
          return String(decoding: Data(bytes: buffer, count:read), as: UTF8.self)
      }) as String
    buffer.deallocate()
    return result
}


let cachefile = "file://Users/ursl/bla"
let url = URL(fileURLWithPath: cachefile)
do {
    let allLines = try String(contentsOf: url)
} catch {
    print("could not open \(url)")
}
