import SwiftUI
/**
 * - Fixme: ⚠️️ add styles 👈
 * - Fixme: ⚠️️ add toggle button to groups 👈
 * - Fixme: ⚠️️ add debug isTest for debgug brackground colors etc
 * - Note: The model create groups
 */
struct MenuStack: View {
   /**
    * - Note: to reach this from parent we can inject a rebinder
    * - Note: We use UUID. because int index is less suitable across groups etc
    * - Note: UUID's for items change on each init etc
    */
   @State var selected: UUID?
   let groups: GroupKinds
   // - Fixme: ⚠️️ Maybe make selection: UUID ? (that works in multi-dimensional setup etc)
}
var isTest: Bool = false
