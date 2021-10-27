import Foundation
import Compression


// /Users/ursl/swift/sroot/gzreader/Sources/gzreader/main.swift:23:22: error: 'compression_encode_buffer' is only available in macOS 10.11 or newer

//https://developer.apple.com/documentation/accelerate/compressing_and_decompressing_data_with_buffer_compression
//https://developer.apple.com/documentation/accelerate/compressing_and_decompressing_data_with_input_and_output_filters
let sourceData = """
    Lorem ipsum dolor sit amet consectetur adipiscing elit mi
    nibh ornare proin blandit diam ridiculus, faucibus mus
    dui eu vehicula nam donec dictumst sed vivamus bibendum
    aliquet efficitur. Felis imperdiet sodales dictum morbi
    vivamus augue dis duis aliquet velit ullamcorper porttitor,
    lobortis dapibus hac purus aliquam natoque iaculis blandit
    montes nunc pretium.
  """


var sourceBuffer = Array(sourceData.utf8)

let destinationBuffer = UnsafeMutablePointer<UInt8>.allocate(capacity: sourceData.count)

let algorithm = COMPRESSION_ZLIB

let compressedSize = compression_encode_buffer(destinationBuffer, sourceData.count,
                                               &sourceBuffer, sourceData.count,
                                               nil,
                                               algorithm)
if compressedSize == 0 {
    fatalError("Encoding failed.")
}







// // Hmm:
// // /Users/ursl/swift/sroot/gzreader/Sources/gzreader/main.swift:12:22:
// // error: 'compression_decode_buffer' is only available in macOS 10.11 or newer

// // ----------------------------------------------------------------------
// func decompress(_ data: Data) -> String {
//     let size = 8_000_000
//     let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: size)
//     let result = data.subdata(in: 2 ..< data.count).withUnsafeBytes (
//       {
//           let read = compression_decode_buffer(buffer, size, $0.baseAddress!.bindMemory(to: UInt8.self, capacity: 1),
//                                              data.count - 2, nil, COMPRESSION_ZLIB)
//           return String(decoding: Data(bytes: buffer, count:read), as: UTF8.self)
//       }) as String
//     buffer.deallocate()
//     return result
// }


// let cachefile = "file://Users/ursl/bla"
// let url = URL(fileURLWithPath: cachefile)
// do {
//     let allLines = try String(contentsOf: url)
// } catch {
//     print("could not open \(url)")
// }
