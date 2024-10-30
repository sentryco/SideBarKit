import SwiftUI
/**
 * - Abstract: Boilerplate view for the group models
 * - Description: A view that displays a group of items with a toggle for visibility.
 * - Note: Previews are in implementation groups
 */
struct MenuGroupView: View, MenuGroupKind {
   /**
    * Selection binding
    */
   @Binding var selection: CombinedIndex?
   /**
    * Group index
    * - Description: The index of the group in the collection.
    */
   let index: Int
   /**
    * Ref to the group model
    * - Description: The type of the group model.
    */
   let groupType: any GroupKind // any GroupKind.Type
   /**
    * Toggle visibility
    * - Description: A boolean binding that controls the visibility of the group.
    */
   @State var isOn: Bool = false
}
