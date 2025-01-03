import SwiftUI
/**
 * Labels etc
 * - Description: Represents a label with a color, title, and action.
 * - Fixme: ⚠️️ Move to example project?
 * - Fixme: ⚠️️ can vars be internal or?
 */
public struct LabelRowModel: RowKind {
   /**
    * The color of the label.
    */
   let color: Color
   /**
    * The title of the label.
    */
   public let title: String
   /**
    * The action to be performed when the label is selected.
    */
   public let action: () -> Void
   /**
    * The tag associated with the label.
    * - Note: we can rebind from db etc here
    */
   @Binding var tag: Int
   /**
    * - Parameters:
    *   - color: The color of the label.
    *   - title: The title of the label.
    *   - action: The action to be performed when the label is selected.
    *   - tag: A binding to the tag of the label.
    */
   public init(color: Color, title: String, action: @escaping () -> Void, tag: Binding<Int>) {
      self.color = color
      self.title = title
      self.action = action
      self._tag = tag
   }
}
