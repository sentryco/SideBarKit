import SwiftUI
/**
 * Label group (tags) (custom)
 * - Fixme: ⚠️️ this needs to also have custom type custom(String) where users can create their own labels
 * - Fixme: ⚠️️ move to example project?
 */
enum LabelGroup: GroupKind {
   static let title: String = "Tags"
   case otp, passkeys, work, personal, custom(title: String, color: Color)
}
extension LabelGroup {
   // Custom implementation
   // get custom labels by parsing credentials (credentials has relations to Label, Label has uuid, color and title, labels is managed purply when they are created, by removing a label, they are not purged. but they dont show up eigther)
   static var allCases: [LabelGroup] {
      let regulars: [LabelGroup] = [.otp, .passkeys, .work, .personal]
      let custom: [LabelGroup] = [("Family", Color.blue), ("Banking", Color.green)].map { .custom(title: $0.0, color: $0.1) }
      return regulars + custom
   }
   // Custom implementation
   static func getItem(item: Self) -> RowKind {
      switch item {
      case .otp: return LabelType(color: .pink, title: "OTP", tag: .constant(0))
      case .passkeys: return LabelType(color: .green, title: "PassKeys", tag: .constant(0))
      case .work: return LabelType(color: .teal, title: "Work", tag: .constant(0))
      case .personal: return LabelType(color: .purple, title: "Personal", tag: .constant(0))
      case .custom(let title, let color): return LabelType(color: color, title: title, tag: .constant(0))
      }
   }
}