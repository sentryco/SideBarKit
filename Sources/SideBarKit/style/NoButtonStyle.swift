import SwiftUI
/**
 * - Needed to avoid down-state changing apperance of text and to avoid multi trigger action bug when buttons are used in a list etc
 * - Note: ref: https://stackoverflow.com/a/76575022/5389500
 * - Fixme: ⚠️️ find a better name, check copilot?
 * - Fixme: ⚠️️ add preview 👈
 * - Fixme: ⚠️️ this might be achivable by doing .animation(nil, value: configuration.isPressed) // Disable animation during button's pressed state
 */
public struct NoButtonStyle: ButtonStyle {
   public init() {} // - Fixme: ⚠️️ seems like this must be here to make public work
   public func makeBody(configuration: Self.Configuration) -> some View {
      configuration.label
   }
}
extension Button {
   /**
    * Provides a button style that does not change appearance when pressed.
    * This style prevents the button from visually responding to interactions, maintaining a consistent look.
    */
   public var noButtonStyle: some View {
      let style = NoButtonStyle()
      return self.buttonStyle(style)
   }
}
