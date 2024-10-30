import SwiftUI
/**
 * - Abstract: Generic ScrollableVStack view that accepts any content. 
 *             This way, you can provide custom content to the stack while 
 *             keeping the scrolling functionality encapsulated in one place.
 * - Description: Generic ScrollableVStack: This view takes a @ViewBuilder 
 *               content parameter, allowing any kind of content to be passed 
 *               in as the VStack items.
 * - Note: Customizable spacing: The spacing parameter allows for customization 
 *         of the spacing between items within the VStack.
 * - Note: Example Usage: ScrollableVStackExample shows how you can use this 
 *         component by providing a ForEach with dynamically generated content.
 * - Note: Now, you can use ScrollableVStack wherever you need a scrollable 
 *         VStack by simply providing the stack’s content.
 * - Note: Performance: For very large lists, you might want to consider using 
 *         LazyVStack instead of VStack for better performance.
 * - Fixme: ⚠️️ move to interfacelib, potentially move to OSS etc
 */
internal struct ScrollableVStack<Content: View>: View {
   /**
    * spacing
    * - Description: The spacing between the items in the VStack.
    */
   internal let spacing: CGFloat
   /**
    * showsIndicators
    * - Description: A boolean value indicating whether to show the scroll indicators.
    */
   internal let showsIndicators: Bool
   /**
    * padding
    * - Description: The padding around the VStack.
    */
   internal let padding: EdgeInsets?
   /**
    * content
    * - Description: The content of the VStack.
    */
   internal let content: () -> Content
   /**
    * - Parameters:
    *   - spacing: The spacing between the items in the VStack.
    *   - showsIndicators: A boolean value indicating whether to show the scroll indicators.
    *   - padding: The padding around the VStack.
    *   - content: The content of the VStack.
    */
   internal init(spacing: CGFloat = 16, showsIndicators: Bool = false, padding: EdgeInsets? = nil, @ViewBuilder content: @escaping () -> Content) {
      self.spacing = spacing
      self.showsIndicators = showsIndicators
      self.padding = padding
      self.content = content
   }
}
