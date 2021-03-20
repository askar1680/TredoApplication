
import SwiftUI

public struct FeedsView: View {
    
    public init() {}
    
    @State private var searchText = ""
    
    var feeds: [Feed] = [
        .init(id: 0, title: "First Header", description: "First"),
        .init(id: 0, title: "Second Header", description: "Second"),
        .init(id: 0, title: "Third Header", description: "Third"),
        .init(id: 0, title: "Last Header", description: "Last")
    ]
    
    public var body: some View {
        NavigationView {
            List {
                TextField("Type your search",text: $searchText)
                ForEach(feeds.filter { $0.title.hasPrefix(searchText) || searchText == "" }) { feed in
                    HStack {
                        Image("").frame(width: 80, height: 80).background(Color.gray).cornerRadius(4)
                        VStack(alignment: .leading, spacing: 6) {
                            Text(feed.title)
                            Text(feed.description)
                        }
                    }
                }
            }
        }.navigationBarTitle(Text("Feeds"))
    }
}

struct Feed: Identifiable {
    let id: Int
    let title: String
    let description: String
}
