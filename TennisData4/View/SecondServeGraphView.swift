import SwiftUI
import Charts

struct SecondServeGraphview: View {
    
    var body: some View {
        var body: some View {
            Chart {
                ForEach(FirstServeGraphView.lineData) { data in
                    AreaMark(
                        x: .value("日付", data.day),
                        y: .value("Stats", data.stats)
                    )
                    .foregroundStyle(by: .value("Category", data.category))
                    .symbol(by: .value("Category", data.category))
                    .opacity(0.5)
                    LineMark(
                        x: .value("日付", data.day),
                        y: .value("Stats", data.stats)
                    )
                    .annotation(position: .overlay, alignment: .trailing, spacing: 8) {
                        Text(String(data.stats))
                            .foregroundColor(.white)
                            .font(.custom("Verdana",size:12))
                    }
                    .foregroundStyle(by: .value("Category", data.category))
                    .symbol(by: .value("Category", data.category))
                    .symbolSize(100)
                    .lineStyle(StrokeStyle(lineWidth: 3))
                }
            }
            .frame(height: 250)
            .chartForegroundStyleScale([
                "2ndServeIn": .orange
            ])
            .chartSymbolScale([
                "2ndServeIn": Square().strokeBorder(lineWidth: 10)
            ])
            .chartXAxis(.hidden)
            .chartYAxis(.hidden)
            .chartYScale(range: .plotDimension(
                startPadding: 50,
                endPadding: 100
            ))
            .chartLegend(.visible)
        }
    }
}
struct LineData: Identifiable {
    var id: String = UUID().uuidString
    var day: String
    var stats: Int
    var category: String
}
struct Square: ChartSymbolShape, InsettableShape {
    let inset: CGFloat

    init(inset: CGFloat = 0) {
        self.inset = inset
    }

    func path(in rect: CGRect) -> Path {
        let cornerRadius: CGFloat = 1
        let minDimension = min(rect.width, rect.height)
        return Path(
            roundedRect: .init(x: rect.midX - minDimension / 2, y: rect.midY - minDimension / 2, width: minDimension, height: minDimension),
            cornerRadius: cornerRadius
        )
    }

    func inset(by amount: CGFloat) -> Square {
        Square(inset: inset + amount)
    }

    var perceptualUnitRect: CGRect {
        // The width of the unit rectangle (square). Adjust this to
        // size the diamond symbol so it perceptually matches with
        // the circle.
        let scaleAdjustment: CGFloat = 0.75
        return CGRect(x: 0.5 - scaleAdjustment / 2, y: 0.5 - scaleAdjustment / 2, width: scaleAdjustment, height: scaleAdjustment)
    }
}
#Preview {
    ContentView()
}


