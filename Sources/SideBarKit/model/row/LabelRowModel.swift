import SwiftUI
/**
 * Labels etc
 * - Description: Represents a label with a color, title, and action.
 * - Fixme: ⚠️️ move to example project?
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
    * - Fixme: ⚠️️ add doc
    * - Parameters:
    *   - color: - Fixme: ⚠️️ add doc
    *   - title: - Fixme: ⚠️️ add doc
    *   - action: - Fixme: ⚠️️ add doc
    *   - tag: - Fixme: ⚠️️ add doc
    */
   public init(color: Color, title: String, action: @escaping () -> Void, tag: Binding<Int>) {
      self.color = color
      self.title = title
      self.action = action
      self._tag = tag
   }
}
