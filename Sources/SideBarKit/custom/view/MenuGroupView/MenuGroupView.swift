import SwiftUI
/**
 * - Abstract: Boilerplate view for the group models
 * - Note: Previews are in implementation groups
 */
struct MenuGroupView: View, MenuGroupKind {
   /**
    * - Fixme: ⚠️️ add doc
    */
   let groupType: any GroupKind.Type
   /**
    * - Fixme: ⚠️️ add doc
    */
   @State var isOn: Bool = false
   /**
    * Selection binding
    */
   @Binding var selected: UUID?
}
