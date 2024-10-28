import Foundation
// - Fixme: ⚠️️ maybe use some sort of generic here? check with copilot
protocol GroupKind: CaseIterable {
   static var title: String { get }
   static func getItem(item: Self) -> any RowKind
}
extension GroupKind {
   static var items: [RowKind] {
      Self.allCases.map {
         getItem(item: $0)
      }
   }
}
typealias GroupKinds = [any GroupKind.Type]
