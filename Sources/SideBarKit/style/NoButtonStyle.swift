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
internal struct NoButtonStyle: ButtonStyle {
   /**
    *  - Fixme: ⚠️️ Seems like this must be here to make public work
    */
   internal init() {}
   /**
    * - Parameter configuration: - Fixme: ⚠️️ add doc
    * - Returns: - Fixme: ⚠️️ add doc
    */
   internal func makeBody(configuration: Self.Configuration) -> some View {
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
