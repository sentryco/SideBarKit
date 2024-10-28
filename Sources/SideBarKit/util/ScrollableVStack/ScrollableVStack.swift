import SwiftUI
/**
 * - Abstract: Generic ScrollableVStack view that accepts any content. This way, you can provide custom content to the stack while keeping the scrolling functionality encapsulated in one place.
 * - Description: Generic ScrollableVStack: This view takes a @ViewBuilder content parameter, allowing any kind of content to be passed in as the VStack items.
 * - Note: Customizable spacing: The spacing parameter allows for customization of the spacing between items within the VStack.
 * - Note: Example Usage: ScrollableVStackExample shows how you can use this component by providing a ForEach with dynamically generated content.
 * - Note: Now, you can use ScrollableVStack wherever you need a scrollable VStack by simply providing the stack’s content.
 * - Note: Performance: For very large lists, you might want to consider using LazyVStack instead of VStack for better performance.
 * - Fixme: ⚠️️ move to interfacelib, potentially move to OSS etc
 */
struct ScrollableVStack<Content: View>: View {
   let spacing: CGFloat
   let showsIndicators: Bool
   let padding: EdgeInsets?
   let content: () -> Content
   /**
    * - Parameters:
    *   - spacing: - Fixme: ⚠️️ add doc
    *   - showsIndicators: - Fixme: ⚠️️ add doc
    *   - padding: - Fixme: ⚠️️ add doc
    *   - content: - Fixme: ⚠️️ add doc
    */
   init(spacing: CGFloat = 16, showsIndicators: Bool = false, padding: EdgeInsets? = nil, @ViewBuilder content: @escaping () -> Content) {
      self.spacing = spacing
      self.showsIndicators = showsIndicators
      self.padding = padding
      self.content = content
   }
   var body: some View {
      ScrollView(
         .vertical, // - Fixme: ⚠️️ doc this line
         showsIndicators: showsIndicators // - Fixme: ⚠️️ doc this line
      ) {
         VStack(spacing: spacing) {
            content() // Inject content here
         }
         .padding(padding ?? EdgeInsets())
      }
   }
}
/**
 * Preview
 */
#Preview {
   ScrollableVStack {
      ForEach(1...50, id: \.self) { index in
         Text("Item \(index)")
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue.opacity(0.2))
            .cornerRadius(8)
      }
   }
}
