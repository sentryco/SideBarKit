import SwiftUI
/**
 * NoButtonStyle
 * - Description: This style prevents the button from visually 
 *                responding to interactions, maintaining a 
 *                consistent look.
 * - Note: Needed to avoid down-state changing apperance of text and to avoid multi trigger action bug when buttons are used in a list etc
 * - Note: ref: https://stackoverflow.com/a/76575022/5389500
 * - Fixme: ⚠️️ find a better name, check copilot?
 * - Fixme: ⚠️️ add preview 👈
 * - Fixme: ⚠️️ this might be achivable by doing .animation(nil, value: configuration.isPressed) // Disable animation during button's pressed state
 */
fileprivate struct NoButtonStyle: ButtonStyle {
   /**
    *  - Fixme: ⚠️️ Seems like this must be here to make public work
    */
//   fileprivate init() {}
   /**
    * - Parameter configuration: The configuration of the button, containing its label and state.
    * - Returns: A view that represents the body of a button.
    */
   fileprivate func makeBody(configuration: Self.Configuration) -> some View {
      configuration.label
   }
}
/**
 * Convenient
 */
extension Button {
   /**
    * Provides a button style that does not change appearance when pressed.
    * - Description: This style prevents the button from visually 
    *                responding to interactions, maintaining a 
    *                consistent look.
    */
   internal var noButtonStyle: some View {
      let style = NoButtonStyle()
      return self.buttonStyle(style)
   }
}
