import SwiftUI
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
      case .login: return FilteringType(icon: "heart", title: "Login", action: { Swift.print("action") }, tag: .constant(14))
      case .paymentcard: return FilteringType(icon: "heart", title: "Payment card", action: { Swift.print("action") }, tag: .constant(3))
      case .wifi: return FilteringType(icon: "heart", title: "WiFi", action: { Swift.print("action") }, tag: .constant(5))
      case .securenote: return FilteringType(icon: "heart", title: "Secure note", action: { Swift.print("action") }, tag: .constant(44))
      case .other: return FilteringType(icon: "heart", title: "Other", action: { Swift.print("action") }, tag: .constant(9))
      }
   }
}
// - Fixme: ⚠️️ add group preview etc
#Preview {
   ZStack {
      Color.whiteOrBlack
         .edgesIgnoringSafeArea(.all)
      MenuGroupView(groupType: FilterGroup.self)
         .padding()
         .background(Color.blackOrWhite)
         .environment(\.colorScheme, .dark)
   }
}

