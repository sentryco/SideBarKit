import SwiftUI
/**
 * Normal will be used for prefs for instance
 * - Description: Represents a miscellaneous type with a title, icon, and action.
 * - Fixme: ⚠️️ Move to example project?
 */
struct MiscRowModel: RowKind {
   /**
    * The title of the miscellaneous type.
    */
   let title: String
   /**
    * The icon associated with the miscellaneous type.
    */
   let icon: String
   /**
    * The action to be performed when the miscellaneous type is selected.
    */
   let action: EmptyClosure
}
