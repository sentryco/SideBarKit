import SwiftUI
/**
 * Content
 */
extension MenuTagView {
   /**
    * Body
    * - Description: Defines the visual structure and behavior of the `MenuTagView` component.
    * - Fixme: ⚠️️⚠️️ This doesn't need to be a button, We could style a Text instance? 👈 Do this later
    * - Fixme: ⚠️️ Use view or capsule or rounded-rect instead of button 👈 yepp easy fix, but maybe wait till after we have compact mode support for menu?
    * - Fixme: ⚠️️ Merge `menuTagStyle` and `menuTagTextStyle`, how? elaborate
    */
   internal var body: some View {
      Button(action: {}, // ⚠️️ We need button for the style to work, for now, maybe ask copilot for different syntax?
             label: {
                titleText
             })
      .menuTagStyle(selected: isSelected) // Applies the menu tag style to the button
      .disabled(true) // Disable interactivity, we just need the graphics
   }
   /**
    * titleText
    * - Description: Provides a view that displays the title of the tag.
    */
   fileprivate var titleText: some View {
      Text(title) // Displays the title of the menu tag
         .menuTagTextStyle(selected: isSelected) // The text part in this style isnt used
   }
}
