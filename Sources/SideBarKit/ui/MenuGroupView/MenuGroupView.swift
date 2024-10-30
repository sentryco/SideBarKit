import SwiftUI
/**
 * - Abstract: Boilerplate view for the group models
 * - Description: A view that displays a group of items with a toggle for visibility.
 * - Note: Previews are in implementation groups
 */
internal struct MenuGroupView: View, MenuGroupKind {
   /**
    * Selection binding
    */
   @Binding internal var selection: CombinedIndex?
   /**
    * Group index
    * - Description: The index of the group in the collection.
    */
   internal let index: Int
   /**
    * Ref to the group model
    * - Description: The type of the group model.
    */
   internal let groupType: any GroupKind // any GroupKind.Type
   /**
    * Toggle visibility
    * - Description: A boolean binding that controls the visibility of the group.
    */
   @State internal var isOn: Bool = false
}
