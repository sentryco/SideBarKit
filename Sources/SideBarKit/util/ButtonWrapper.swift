import SwiftUI
import HybridColor
/**
 * View modifier
 * - Description: A view modifier that wraps a button, ensuring consistent styling and behavior across platforms.
 */
fileprivate struct ButtonWrapper: ViewModifier {
   let action: EmptyClosure
}
/**
 * Content
 */
extension ButtonWrapper {
   /**
    * Body
    * - Description: The body of the ButtonWrapper.
    */
   @ViewBuilder
   fileprivate func body(content: Content) -> some View {
      Button(action: {
         withAnimation(.easeInOut(duration: 0.2)) { // EaseInOut with 0.2 creates Tigther anim than default, which is a bit too slow
            action() // This calls the action that is defined in the model
         }
      }, label: {
         content
            .contentShape(Rectangle()) // ⚠️️ key to making the entire button tappable / pressable, or else only the text fill is tappable etc
      })
      .noButtonStyle // This avoids down state changing apperance of text etc, it seems also to works as a fix for the multiple action firing at once issue that was solved with a .plain buttonstyle. but plain has the downstate, so thats why we use this custom style
      // ⚠️️ New, macOS needed space between
      .background(isTest ? .green : .clear) // ⚠️️ debug
      #if os(macOS)
      .buttonStyle(.plain) // ⚠️️ Needed to not inherit default button-style in macOS
      #endif
   }
}
/**
 * Convenient
 */
extension View {
   /**
    * Convenient
    * - Description: Conveniently wraps a button with a given action closure.
    */
   @warn_unqualified_access // ref: https://www.hackingwithswift.com/quick-start/swiftui/how-to-make-swiftui-modifiers-safer-to-use-with-warn-unqualified-access
   internal func buttonWrapper(action: @escaping EmptyClosure) -> some View {
      let modifier = ButtonWrapper(action: action)
      return self.modifier(modifier)
   }
}
/**
 * Preview
 */
#Preview(traits: .fixedLayout(width: 200, height: 200)) {
   PreviewContainer {
      EmptyView()
         .buttonWrapper { Swift.print("action") }
      // .padding(0) // .frame(width: 44, height: 44)
         .padding(.vertical)
         .frame(maxWidth: .infinity)
         .background(Color.blackOrWhite)
         #if os(macOS)
         .padding(.horizontal)
         #endif
   }
}
