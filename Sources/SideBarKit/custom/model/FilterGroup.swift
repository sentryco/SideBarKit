import Foundation
// custom
// - Fixme: ⚠️️ move to example project?
enum FilterGroup: GroupKind {
   static let title: String = "Type"
   case login, paymentcard, wifi, securenote, other
}
extension FilterGroup {
   // implementation code
   static func getItem(item: Self) -> any RowKind {
      switch item {
      case .login: return FilteringType(icon: "heart", title: "Login", tag: .constant(0))
      case .paymentcard: return FilteringType(icon: "heart", title: "Payment card", tag: .constant(0))
      case .wifi: return FilteringType(icon: "heart", title: "WiFi", tag: .constant(0))
      case .securenote: return FilteringType(icon: "heart", title: "Secure note", tag: .constant(0))
      case .other: return FilteringType(icon: "heart", title: "Other", tag: .constant(0))
      }
   }
}
