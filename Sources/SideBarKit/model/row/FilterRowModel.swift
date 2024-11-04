import SwiftUI
/**
 * Filter etc, login, payment, securenote, other, wifi
 * - Description: Represents a filtering type with an icon, title, and action.
 * - Fixme: ⚠️️ Move to example project?
 */
public struct FilterRowModel: RowKind {
   /**
    * The icon associated with the filtering type.
    */
   let icon: String
   /**
    * The title of the filtering type.
    */
   public let title: String
   /**
    * The action to be performed when the filtering type is selected.
    */
   public let action: () -> Void
   /**
    * - Note: We can rebind from db etc here
    */
   @Binding var tag: Int
   /**
    * - Parameters:
    *   - icon: The icon associated with the filtering type.
    *   - title: The title of the filtering type.
    *   - action: The action to be performed when the filtering type is selected.
    *   - tag: A binding to the tag of the filtering type.
    */
   public init(icon: String, title: String, action: @escaping () -> Void, tag: Binding<Int>) {
      self.icon = icon
      self.title = title
      self.action = action
      self._tag = tag
   }
}
