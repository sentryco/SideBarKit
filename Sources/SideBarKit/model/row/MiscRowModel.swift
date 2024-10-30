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
    * - Fixme: ⚠️️ add doc
    * - Parameters:
    *   - title: - Fixme: ⚠️️ add doc
    *   - icon: - Fixme: ⚠️️ add doc
    *   - action: - Fixme: ⚠️️ add doc
    */
   public init(title: String, icon: String, action: @escaping () -> Void) {
      self.title = title
      self.icon = icon
      self.action = action
   }
}
