import SwiftUI
/**
 * - Fixme: ⚠️️ Add doc from legacy
 */
struct FilterRowView: View, MenuRowKind {
   /**
    * - Fixme: ⚠️️ add description
    */
   let titleText: String
   /**
    * The name of the image to display next to the menu item.
    * - Abstract: This property specifies the name of the image displayed next to the menu item.
    * - Description: Specifies the icon displayed next to the menu item, enhancing visual identification.
    * - Note: Alternative name: `trailingIconImageName`
    */
   let iconName: String
   /**
    * - Fixme: ⚠️️ add description
    */
   let action: () -> Void // (Binding or closure)
   // tagCount hock (group,row) // we do wiring in the implementor. switch enum for enum etc
   @Binding var tagCount: Int
   /**
    * - Fixme: ⚠️️ add description
    */
   let isSelected: Bool
}
/**
 * Init
 */
extension FilterRowView {
   /**
    * - Parameter filterType: - Fixme: ⚠️️ add doc
    */
   init(filterType: FilteringType, isSelected: Bool) {
      self.init(
         titleText: filterType.title,
         iconName: filterType.icon,
         action: filterType.action,
         tagCount: filterType.$tag, 
         isSelected: isSelected
      )
   }
}
