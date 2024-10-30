import SwiftUI
/**
 * Custom
 * - Fixme: ⚠️️ move to example project? (probably not)
 * - Fixme: ⚠️️ move into seperate files etc 👈
 */
enum FilterGroup: GroupKind {
   static let title: String = "Type"
   case login, paymentcard, wifi, securenote, other
}
/**
 * Maker
 */
extension FilterGroup {
   /**
    * implementation code
    */
   static func getItem(item: Self) -> any RowKind {
      switch item {
      case .login:
         return FilteringType(icon: "heart", title: "Login", action: { Swift.print("action");  }, tag: .constant(14))
      case .paymentcard:
         return FilteringType(icon: "star", title: "Payment card", action: { Swift.print("action") }, tag: .constant(3))
      case .wifi: 
         return FilteringType(icon: "dollarsign", title: "WiFi", action: { Swift.print("action") }, tag: .constant(5))
      case .securenote: 
         return FilteringType(icon: "lock", title: "Secure note", action: { Swift.print("action") }, tag: .constant(44))
      case .other: 
         return FilteringType(icon: "key", title: "Other", action: { Swift.print("action") }, tag: .constant(9))
      }
   }
}
/**
 * - Fixme: ⚠️️ Add group preview etc
 */
#Preview {
   struct DebugContainer: View {
      @State var selected: UUID? = nil
      @State var selectedIndex: CombinedIndex? = .init(row: 0, column: 0)
      var body: some View {
         MenuGroupView(
            selection: $selectedIndex,
            index: 0,
            groupType: FilterGroup.self//,
//            selected: $selected
         )
            .background(Color.blackOrWhite)
            .environment(\.colorScheme, .dark)
            .onChange(of: selected) { _, _ in
               Swift.print("selected:  \(String(describing: selected))")
            }
      }
   }
   return ZStack {
      Color.whiteOrBlack
         .edgesIgnoringSafeArea(.all)
      DebugContainer()
         .padding()
         .background(Color.blackOrWhite)
         .environment(\.colorScheme, .dark)
   }
}

