import SwiftUI
/**
 * MenuView for `mac` and `iPad` ("SideBar")
 * - Abstract: This is the main menu view for the sidebar. It is a list of menu items that are displayed in the sidebar.
 * - Description: This view serves as the primary navigation panel, allowing users to access different sections of the application through a sidebar interface.
 * - Important: Model has the action callback
 * - Note: Sections should be minimizable
 * - Note: Use style modifiers as much as possible
 * - Note: The model create groups
 * - Note: Alternative name: 👉👉 `SideBarMenuView` ? 👈👈 Rename to this because, menu can be popover menu and all sorts of other menues, sidebarmenu is more speccific `SideBarView`
 * - Fixme: ⚠️️ add styles 👈
 * - Fixme: ⚠️️ add toggle button to groups 👈
 * - Fixme: ⚠️️ add debug isTest for debgug brackground colors etc
 * - Fixme: ⚠️️ Rename to SideBar ?
 * - Fixme: ⚠️️ Only show sidebar tags for rows that has more than zero, maybe
 * - Fixme: ⚠️️ Remove down state for buttons in macOS and for ipad? `configuration.isPressed`
 * - Fixme: ⚠️️ Simplify all this, probably use VStack embedded in a scroller etc. List is very tricky to style across OSes
 */
struct MenuStack: View {
   /**
    * Index of selected sidebar menu item (Persistant selected index)
    * - Abstract: Persistant selected index
    * - Description: This is toggled from the Button action, and trigered in a callback defind in the model
    * - Important: ⚠️️ The state is located in the caller of this view
    * - Note: When this is changed, the main/detail views change
    * - Note: For more code on selected binding, see device-picker
    * - Note: if animation carries over to presenting main / detail, use: `.animation(nil)` // Disable animation for this Text view
    * - Note: to reach this from parent we can inject a rebinder
    * - Note: We use UUID. because int index is less suitable across groups etc
    * - Note: UUID's for items change on each init etc
    * - Note: can be nil, for instance in compact mode for ipad etc
    * - Fixme: ⚠️️ Make this optional etc or?
    * - Fixme: ⚠️️ If we want to isolate anim on just text, we could, use onChange and wrap withAnim in tht call etc or somet other solution? or is this done now?
    * - Fixme: ⚠️️ UUIDs change when view refreshes. instead use combined col:row index. ask copilot to make a suggested design. maybe use hashable and identifiable etc?
    * - Fixme: ⚠️️ add note about CombinedIndex. Equatable etc?
    * - Fixme: ⚠️️ Maybe make selection: UUID ? (that works in multi-dimensional setup etc)
    */
   @Binding var selectedIndex: CombinedIndex?
   /**
    * - Abstract: Stores the data for the top and the bottom menues
    * - Fixme: ⚠️️ add description
    */
   let groups: GroupKinds
}
/**
 * - Fixme: ⚠️️ add description
 */
var isTest: Bool = false

