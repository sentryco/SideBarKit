#if DEBUG// Debug-specific code or comments can be added here
import SwiftUI

struct TopGroup: GroupKind {
   let title: String = "Categories"
   typealias EnumType = Items
   enum Items: String, CaseIterable {
      case one = "Personal", two = "Work", three = "Hobby"
   }
   func getItem(item: Items) -> any RowKind {
      FilterRowModel(
         icon: "heart", // - Fixme: ⚠️️ randomize this
         title: String(describing: item.rawValue),
         action: { Swift.print("action") },
         tag: .constant(5) // - Fixme: ⚠️️ randomize this
      )
   }
}
struct MiddleGroup: GroupKind {
   typealias EnumType = Items
   let title: String = "Miscellaneous"
   @Binding var isPrefsPresented: Bool
   enum Items: String, CaseIterable {
      case fourth = "Collections", fifth = "Favourites", sixth = "Deleted", seventh = "Settings"
   }
   func getItem(item: Items) -> any RowKind {
      switch item {
      case .seventh:
         MiscRowModel(
            title: String(describing: item.rawValue),
            icon: "star"
         ) // - Fixme: ⚠️️ randomize this
            {
               Swift.print("action")
               isPrefsPresented = true
            }
      default:
         FilterRowModel(
            icon: "star",
            title: String(describing: item.rawValue),
            action: { Swift.print("action") },
            tag: .constant(29)
         )
      }
   }
}
struct BottomGroup: GroupKind {
   typealias EnumType = Items
   let title: String = "Tags"
   enum Items: CaseIterable {
      case vacation, custom(title: String, color: Color, tagCount: Binding<Int>)
      static var allCases: [Items] {
         let regulars: [Items] = [.vacation]
         let custom: [Items] = [("Special one", Color.indigo, 4), ("Special two", Color.orange, 5)].map { .custom(title: $0.0, color: $0.1, tagCount: .constant($0.2)) }
         return regulars + custom
      }
   }
   func getItem(item: Items) -> RowKind {
      switch item {
      case .custom(let title, let color, let tagCount):
         LabelRowModel(
            color: color,
            title: title,
            action: { Swift.print("action") },
            tag: tagCount
         )
      default:
         LabelRowModel(
            color: .pink,
            title: "Vacation" /*String.init(describing: item)*/,
            action: { Swift.print("action") },
            tag: .constant(4)
         )
      }
   }
}
#endif
