import SwiftUI
/**
 * Label group (tags) (custom)
 * - Fixme: ⚠️️ this needs to also have custom type custom(String) where users can create their own labels
 * - Fixme: ⚠️️ move to example project?
 */
enum LabelGroup: GroupKind {
//   static var index: Int { 2 }
   static let title: String = "Tags"
   case otp, passkeys, work, personal, custom(title: String, color: Color, tagCount: Binding<Int>)
}
/**
 * Implementation
 */
extension LabelGroup {
   /**
    * Custom implementation
    * - Note: Get custom labels by parsing credentials (credentials has relations to Label, Label has uuid, color and title, labels is managed purply when they are created, by removing a label, they are not purged. but they dont show up eigther)
    */
   static var allCases: [LabelGroup] {
      let regulars: [LabelGroup] = [.otp, .passkeys, /*.work, .personal*/]
      let custom: [LabelGroup] = [("Family", Color.indigo, 4), ("Banking", Color.orange, 5)].map { .custom(title: $0.0, color: $0.1, tagCount: .constant($0.2)) }
      return regulars + custom
   }
   /**
    * Custom implementation
    */
   static func getItem(item: Self/*, index: Int*/) -> RowKind {
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
// - Fixme: ⚠️️ add darkmode modifier etc
#Preview {
   ZStack {
      Color.whiteOrBlack
         .edgesIgnoringSafeArea(.all)
      MenuGroupView(groupType: LabelGroup.self, selected: .constant(.init()))
         .padding()
         .background(Color.blackOrWhite)
         .environment(\.colorScheme, .dark)
   }
}

