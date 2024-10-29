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
    * - Fixme: ⚠️️ UUIDs change when view refreshes. instead use combined col:row index. ask copilot to make a suggested design. maybe use hashable and identifiable etc?
    */
   @State var selected: UUID?
   let groups: GroupKinds
   // - Fixme: ⚠️️ Maybe make selection: UUID ? (that works in multi-dimensional setup etc)
}
var isTest: Bool = false
// 🏀
// - Fixme: ⚠️️ try col, row. ask copilot. col, row is decoupled from needing to be stored etc.
// - Fixme: ⚠️️ add notes regarding using uuid, and how it would hange the design, and that we want to be as stateless as possible?
