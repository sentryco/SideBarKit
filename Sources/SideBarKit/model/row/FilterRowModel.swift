import SwiftUI
/**
 * Filter etc, login, payment, securenote, other, wifi
 * - Description: Represents a filtering type with an icon, title, and action.
 * - Fixme: ⚠️️ Move to example project?
 */
struct FilterRowModel: RowKind {
   /**
    * The icon associated with the filtering type.
    */
   let icon: String
   /**
    * The title of the filtering type.
    */
   let title: String
   /**
    * The action to be performed when the filtering type is selected.
    */
   let action: EmptyClosure
   /**
    * - Note: We can rebind from db etc here
    */
   @Binding var tag: Int
}
