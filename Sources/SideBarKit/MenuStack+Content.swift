import SwiftUI
/**
 * Content
 */
extension MenuStack {
   /**
    * This is the body of the menu view. It is a list of menu items that are displayed in the sidebar.
    * - Description: This view constructs the main content of the sidebar, organizing it into top and bottom sections within a styled list.
    * - Fixme: ⚠️️ Hide tags from other items that doesn't have it like prefs, I think that's done now
    * - Fixme: ⚠️️ Consider using sideMenu as List style etc? elaborate? or no, custom is king? or use the structure from the dropdown section we have in pass-genview?
    */
   public var body: some View {
      scrollStack
         .background(isTest ? .indigo : .clear) // ⚠️️ Debug
         .accessibilityIdentifier("sideBar")
   }
}
/**
 * Component
 */
extension MenuStack {
   /**
    * scrollStack
    * - Description: This property is used to create a scrollable stack of views, which is essential for displaying the menu items in the sidebar. It ensures that the menu items are scrollable and can be viewed in a list format.
    * - Fixme: ⚠️️ Use better foreach here
    */
   internal var scrollStack: some View {
      ScrollableVStack { // Handles scrolling and vStacking
         content // Embed group-views
      }
   }
   /**
    * Content
    * - Description: This property is used to create a scrollable stack of views, which is essential for displaying the menu items in the sidebar. It ensures that the menu items are scrollable and can be viewed in a list format.
    */
   @ViewBuilder internal var content: some View {
      let list = Array(groups.enumerated())
      ForEach(list, id: \.offset) { (_ i: Int, groupType: any GroupKind/*.Type*/) in
         MenuGroupView( // group view
            selection: $selectedIndex, // combined-index
            index: i, // group index
            groupType: groupType // class ref
         )
      }
   }
}
