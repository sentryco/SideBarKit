import Foundation
// - Fixme: ⚠️️ maybe use some sort of generic here? check with copilot
protocol GroupKind: CaseIterable {
   /**
    * - Fixme: ⚠️️ add doc
    */
   static var title: String { get }
   /**
    * - Fixme: ⚠️️ add doc
    */
   static func getItem(item: Self) -> any RowKind
}
extension GroupKind {
   /**
    * - Fixme: ⚠️️ add doc
    */
   static var items: [RowKind] {
      Self.allCases.map {
         getItem(item: $0)
      }
   }
}
typealias GroupKinds = [any GroupKind.Type]
