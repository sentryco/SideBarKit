import SwiftUI
/**
 * Normal will be used for prefs for instance
 * - Description: Represents a miscellaneous type with a title, icon, and action.
 * - Fixme: ⚠️️ Move to example project?
 */
public struct MiscRowModel: RowKind {
   /**
    * The title of the miscellaneous type.
    */
   public let title: String
   /**
    * The icon associated with the miscellaneous type.
    */
   let icon: String
   /**
    * The action to be performed when the miscellaneous type is selected.
    */
   public let action: () -> Void
   /**
    * - Parameters:
    *   - title: The title of the miscellaneous type.
    *   - icon: The icon associated with the miscellaneous type.
    *   - action: The action to be performed when the miscellaneous type is selected.
    */
   public init(title: String, icon: String, action: @escaping () -> Void) {
      self.title = title
      self.icon = icon
      self.action = action
   }
}
