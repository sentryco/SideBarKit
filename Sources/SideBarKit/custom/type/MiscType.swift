import SwiftUI
/**
 * Normal will be used for prefs for instance
 * - Fixme: ⚠️️ Move to example project?
 * - Description: Represents a miscellaneous type with a title, icon, and action.
 */
struct MiscType: RowKind {
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
