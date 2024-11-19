import SwiftUI
/**
 * MenuView for `mac` and `iPad` ("SideBar")
 * - Abstract: This is the main menu view for the sidebar. It is a list of menu items that are displayed in the sidebar.
 * - Description: This view serves as the primary navigation panel, allowing 
 *                users to access different sections of the application 
 *                through a sidebar interface.
 * - Important: ⚠️️ Model has the action callback
 * - Note: We embed stack in a vscroll because List is very tricky to style across OSes
 * - Note: Sections should be minimizable
 * - Note: Use style modifiers as much as possible
 * - Note: The model create groups
 * - Note: Alternative name: 👉👉 `SideBarMenuView` ? 👈👈 Rename to this because, menu can be popover menu and all sorts of other menues, sidebarmenu is more speccific `SideBarView`
 * - Fixme: ⚠️️ Rename to SideBar? or SideBarView? Check with copilot etc
 * - Fixme: ⚠️️ Only show sidebar tags for rows that has more than zero, maybe?
 * - Fixme: ⚠️️ Remove down state for buttons in macOS and for iPad? `configuration.isPressed`
 */
public struct MenuStack: View {
   /**
    * Index of selected sidebar menu item (Persistant selected index)
    * - Abstract: Persistant selected index
    * - Description: This is toggled from the Button action, and trigered 
    *               in a callback defind in the model
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
    * - Fixme: ⚠️️ UUID's change when view refreshes. instead use combined col:row index. ask copilot to make a suggested design. maybe use hashable and identifiable etc?
    * - Fixme: ⚠️️ add note about CombinedIndex. Equatable etc?
    * - Fixme: ⚠️️ Maybe make selection: UUID ? (that works in multi-dimensional setup etc)
    */
   @Binding internal var selectedIndex: CombinedIndex?
   /**
    * - Abstract: Stores the data for the top and the bottom menues
    * - Description: This property holds the data for the menu groups, 
    *                which are used to organize and display the menu
    *                items in the sidebar. It defines the structure and
    *                content of the top and bottom sections of the menu.
    */
   internal let groups: GroupKinds
   /**
    * - Abstract: Stores the sizing configuration for the sidebar menu
    * - Description: This property holds the sizing configuration for the 
    *                sidebar menu, which defines the dimensions and layout
    *                of the menu items. It is used to ensure consistent
    *                sizing across different sections of the menu.
    */
   internal static var sizing = SideBarSizing.defaultSizing
   /**
    * - Description: Initializes a new instance of the MenuStack view with the provided selected index, groups, and optional sizing configuration.
    * - Parameters:
    *   - selectedIndex: A binding to the index of the selected sidebar menu item.
    *   - groups: The data for the top and bottom menu groups.
    *   - sizing: The sizing configuration for the sidebar menu. Defaults to `SideBarSizing.defaultSizing`.
    */
   public init(selectedIndex: Binding<CombinedIndex?>, groups: GroupKinds, sizing: SideBarSizing = SideBarSizing.defaultSizing) {
      self._selectedIndex = selectedIndex
      self.groups = groups
      Self.sizing = sizing
   }
}
/**
 * - Description: This property is used to determine if the menu is in 
 *                test mode. It is set to true when the menu is in test
 *                mode, which is used for debugging and visualizing the
 *                menu structure.
 */
let isTest: Bool = false
