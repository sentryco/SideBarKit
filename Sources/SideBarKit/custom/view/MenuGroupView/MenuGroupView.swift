import SwiftUI
/**
 * - Abstract: Boilerplate view for the group models
 * - Note: Previews are in implementation groups
 */
struct MenuGroupView: View, MenuGroupKind {
   /**
    * Selection binding
    */
   @Binding var selection: CombinedIndex?
   /**
    * Group index
    * - Fixme: ⚠️️ add description
    */
   let index: Int
   /**
    * Ref to the group model
    * - Fixme: ⚠️️ add doc
    */
   let groupType: any GroupKind // any GroupKind.Type
   /**
    * Toggle visibility
    * - Fixme: ⚠️️ add doc
    */
   @State var isOn: Bool = false
}
