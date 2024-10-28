import Foundation

protocol RowKind {
   var title: String { get }
   var action: () -> Void { get }
}
typealias RowKinds = [RowKind]
