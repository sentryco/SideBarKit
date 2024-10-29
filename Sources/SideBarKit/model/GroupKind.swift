import Foundation
/**
 * - Fixme: ⚠️️ maybe use some sort of generic here? check with copilot
 * - Fixme: ⚠️️ add description
 */
protocol GroupKind: CaseIterable {
   /*static var index: Int { get }*/
   /**
    * - Fixme: ⚠️️ add doc
    */
   static var title: String { get }
   /**
    * - Fixme: ⚠️️ add doc
    */
   static func getItem(item: Self/*, index: Int*/) -> any RowKind
}
extension GroupKind {
   /**
    * - Fixme: ⚠️️ add doc
    */
   static var items: [RowKind] {
      Self.allCases.enumerated().map {
         getItem(item: $0.element/*, index: $0.offset*/)
      }
   }
}
typealias GroupKinds = [any GroupKind.Type]
