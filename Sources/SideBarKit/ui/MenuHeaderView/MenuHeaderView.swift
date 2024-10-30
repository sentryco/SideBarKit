import SwiftUI
/**
 * MenuItemHeader /w drop down button
 * - Abstract: Header for each "menu-group"
 * - Description: This component serves as the header for each menu group in the application, featuring a dropdown button to expand or collapse the respective menu section.
 * - Important: ⚠️️ The logic is in DropDownRow
 * - Fixme: ⚠️️ make this a menuTextStyle instead of a struct?  elaborate please
 * - Fixme: ⚠️️ add some sort of subtle stroke around icon? rounded rect or circle etc?
 */
internal typealias MenuHeaderView = DropDownRow
/**
 * Hide and show sections in the menu view
 */
extension MenuHeaderView {
   /**
    * Init
    * - Description: Initializes a new instance of `MenuHeaderView` with the specified text and isOn binding.
    * - Anstract: Used for descripton title header above menu cells etc
    * - Parameters:
    *   - text: The text to be displayed as the header.
    *   - isOn: A binding to a boolean value indicating whether the dropdown is currently expanded (true) or collapsed (false), which determines the direction of the arrow icon.
    */
   internal init(text: String, isOn: Binding<Bool>) {
      self.init( // Initializes a new instance of MenuHeaderView
         title: text, // Initializes the title of the header with the provided text
         isOn: isOn, // Initializes the isOn state of the header with the provided binding
         textStyle: MenuHeaderView.textStyle // Applies the static textStyle defined for MenuHeaderView
      )
   }
}

