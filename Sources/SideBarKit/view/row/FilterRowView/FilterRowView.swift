import SwiftUI
/**
 * - Fixme: ⚠️️ Could we make these types .modifiers? or button styles?
 * - Fixme: ⚠️️ Rename to FilterRowView?
 */
internal struct FilterRowView: View, MenuRowKind {
   /**
    * Selection
    * - Description: The currently selected item in the menu
    */
   internal var selection: Binding<CombinedIndex?>
   /**
    * Index
    * - Description: The index of the row item in the collection
    */
   internal let index: CombinedIndex
   /**
    * Title text
    * - Description: The title text of the row item
    */
   internal let titleText: String
   /**
    * The name of the image to display next to the menu item
    * - Abstract: This property specifies the name of the image displayed 
    *             next to the menu item
    * - Description: Specifies the icon displayed next to the menu item, 
    *                enhancing visual identification
    * - Note: Alternative name: `trailingIconImageName`
    */
   internal let iconName: String
   /**
    * Action
    * - Description: The action to be performed when the row item is selected
    */
   internal let action: EmptyClosure // (Binding or closure)
   /**
    * Tag count
    * - Description: The count of the tag associated with the row item
    * - Note: tagCount hock (group,row) // we do wiring in the implementor. Switch enum for enum etc
    */
   @Binding internal var tagCount: Int
}
/**
 * Init
 */
extension FilterRowView {
   /**
    * - Description: Initializes a new instance of `FilterRowView` 
    *                with the specified filtering type, index, 
    *                and selection binding.
    * - Parameter filterType: The filtering type to be displayed.
    */
   internal init(filterType: FilterRowModel, index: CombinedIndex, selection: Binding<CombinedIndex?>) {
      self.init(
         selection: selection,
         index: index,
         titleText: filterType.title,
         iconName: filterType.icon,
         action: filterType.action,
         tagCount: filterType.$tag
      )
   }
}
