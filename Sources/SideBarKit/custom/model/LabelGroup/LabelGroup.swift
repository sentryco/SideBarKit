import SwiftUI
/**
 * Label group (tags) (custom)
 * - Fixme: ⚠️️ this needs to also have custom type custom(String) where users can create their own labels
 * - Fixme: ⚠️️ move to example project?
 */
struct LabelGroup: GroupKind {

   /*static*/ let title: String = "Tags"
}
extension LabelGroup {
   typealias EnumType = Items
   enum Items: CaseIterable {
      case otp, passkeys, work, personal, custom(title: String, color: Color, tagCount: Binding<Int>)
      /**
       * Custom implementation
       * - Note: Get custom labels by parsing credentials (credentials has relations to Label, Label has uuid, color and title, labels is managed purply when they are created, by removing a label, they are not purged. but they dont show up eigther)
       */
      static var allCases: [Items] {
         let regulars: [Items] = [.otp, .passkeys, /*.work, .personal*/]
         let custom: [Items] = [("Family", Color.indigo, 4), ("Banking", Color.orange, 5)].map { .custom(title: $0.0, color: $0.1, tagCount: .constant($0.2)) }
         return regulars + custom
      }
   }
}
