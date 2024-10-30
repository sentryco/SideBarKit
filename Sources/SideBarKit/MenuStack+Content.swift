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
   var body: some View {
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
    * - Fixme: ⚠️️ use better foreach here
    */
   var scrollStack: some View {
      ScrollableVStack {
         content
      }
   }
   /**
    * Content
    */
   @ViewBuilder var content: some View {
      ForEach(Array(groups.enumerated()), id: \.offset) { (_ i: Int, groupType: any GroupKind.Type) in
         MenuGroupView(
            selection: $selectedIndex,
            index: i,
            groupType: groupType
         )
      }
   }
}
