import SwiftUI
/**
 * Maker
 */
extension LabelGroup {
   /**
    * Custom implementation
    * - Fixme: ⚠️️ add more vertical space, use cursor etc
    */
   /*static*/ func getItem(item: Items) -> RowKind {
      switch item {
      case .otp:
         return LabelType(color: .pink, title: "OTP", action: { Swift.print("action") }, tag: .constant(4))
      case .passkeys:
         return LabelType(color: .green, title: "PassKeys", action: { Swift.print("action") }, tag: .constant(2))
      case .work:
         return LabelType(color: .teal, title: "Work", action: { Swift.print("action") }, tag: .constant(1))
      case .personal:
         return LabelType(color: .purple, title: "Personal", action: { Swift.print("action") }, tag: .constant(9))
      case .custom(let title, let color, let tagCount):
         return LabelType(color: color, title: title, action: { Swift.print("action") }, tag: tagCount)
      }
   }
}
