import SwiftUI
/**
 * Labels etc
 * - Description: Represents a label with a color, title, and action.
 * - Fixme: ⚠️️ move to example project?
 */
struct LabelRowModel: RowKind {
   /**
    * The color of the label.
    */
   let color: Color
   /**
    * The title of the label.
    */
   let title: String
   /**
    * The action to be performed when the label is selected.
    */
   let action: EmptyClosure
   /**
    * The tag associated with the label.
    * - Note: we can rebind from db etc here
    */
   @Binding var tag: Int
}
