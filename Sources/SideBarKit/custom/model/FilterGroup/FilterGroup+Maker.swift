import SwiftUI
/**
 * Maker
 */
extension FilterGroup {
   /**
    * implementation code
    * - Description: This function returns a `RowKind` instance based on the provided `Items` enum case.
    * - Fixme: ⚠️️ add more vertical space, use cursor etc
    * - Parameter item: - Fixme: ⚠️️ add doc
    * - Returns: - Fixme: ⚠️️ add doc
    */
   func getItem(item: Items) -> any RowKind {
      switch item {
      case .login:
         return FilteringType(
            icon: "heart",
            title: "Login",
            action: { Swift.print("action") },
            tag: .constant(14)
         )
      case .paymentcard:
         return FilteringType(
            icon: "star",
            title: "Payment card",
            action: { Swift.print("action") },
            tag: .constant(3)
         )
      case .wifi:
         return FilteringType(
            icon: "dollarsign",
            title: "WiFi",
            action: { Swift.print("action") },
            tag: .constant(5)
         )
      case .securenote:
         return FilteringType(
            icon: "lock",
            title: "Secure note",
            action: { Swift.print("action") },
            tag: .constant(44)
         )
      case .other:
         return FilteringType(
            icon: "key",
            title: "Other",
            action: { Swift.print("action") },
            tag: .constant(9)
         )
      }
   }
}