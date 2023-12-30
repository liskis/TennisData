import SwiftUI
import Charts

let firstServIn: [LineData] = [
    .init(dateString: "23/12/1", stats: 60, category: "1stServeIn"),
    .init(dateString: "23/12/8", stats: 63, category: "1stServeIn"),
    .init(dateString: "23/12/15", stats: 70, category: "1stServeIn"),
    .init(dateString: "23/12/16", stats: 70, category: "1stServeIn"),
    .init(dateString: "23/12/22", stats: 70, category: "1stServeIn")
]
let secondServeIn: [LineData] = [
    .init(dateString: "23/12/1", stats: 90, category: "2ndServeIn"),
    .init(dateString: "23/12/8", stats: 96, category: "2ndServeIn"),
    .init(dateString: "23/12/15", stats: 89, category: "2ndServeIn"),
    .init(dateString: "23/12/16", stats: 96, category: "2ndServeIn"),
    .init(dateString: "23/12/22", stats: 96, category: "2ndServeIn")
]

struct HomeGraphView: View {
    var body: some View {
        
        Chart {
            ForEach(firstServIn){ dataRow in
                LineMark(
                    x: .value("日付", dataRow.dateString),
                    y: .value("Stats", dataRow.stats)
                )
                .foregroundStyle(by: .value("Category", dataRow.category))
                .lineStyle(StrokeStyle(lineWidth: 5))
                PointMark(
                    x: .value("日付", dataRow.dateString),
                    y: .value("Stats", dataRow.stats)
                )
                .annotation(position: .top, alignment: .trailing, spacing: 0) {
                    Text(String(dataRow.stats) + "%")
                        .foregroundColor(.white)
                        .font(.custom("Verdana",size:10))
                        .bold()
                        .shadow(radius: 10)
                }
                .foregroundStyle(by: .value("Category", dataRow.category))
                .symbol(by: .value("Category", dataRow.category))
                .symbolSize(100)
            }
            ForEach(secondServeIn){ dataRow in
                LineMark(
                    x: .value("日付", dataRow.dateString),
                    y: .value("Stats", dataRow.stats)
                )
                .foregroundStyle(by: .value("Category", dataRow.category))
                .lineStyle(StrokeStyle(lineWidth: 5))
                PointMark(
                    x: .value("日付", dataRow.dateString),
                    y: .value("Stats", dataRow.stats)
                )
                .annotation(position: .top, alignment: .trailing, spacing: 0) {
                    Text(String(dataRow.stats) + "%")
                        .foregroundColor(.white)
                        .font(.custom("Verdana",size:10))
                        .bold()
                        .shadow(radius: 10)
                }
                .foregroundStyle(by: .value("Category", dataRow.category))
                .symbol(by: .value("Category", dataRow.category))
                .symbolSize(100)
            }
            
        }
        .frame(height: 250)
        .chartForegroundStyleScale([
            "1stServeIn": .orange,
            "2ndServeIn": .red
        ])
        .chartSymbolScale([
            "1stServeIn": Circle().strokeBorder(lineWidth: 5),
            "2ndServeIn": Circle().strokeBorder(lineWidth: 5)
        ])
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
        .chartYScale(range: .plotDimension(
            startPadding: 0,
            endPadding: 30
        ))
        .chartLegend(.hidden)
        
        
    }
}
struct LineData: Identifiable {
    var id: String = UUID().uuidString
    var dateString: String
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

