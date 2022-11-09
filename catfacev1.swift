import SwiftUI

struct Triangle: Shape { // Create a custom shape. This is a triangle.
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Triangle()  // Creates ear 1
                .stroke(lineWidth: 15)
                .frame(width: 50, height: 50)
                .offset(x: 38, y: -100)
                .rotationEffect(.degrees(30))
            
            Triangle() // Creates ear 2
                .stroke(lineWidth: 15)
                .frame(width: 50, height: 50)
                .offset(x: -38, y: -100)
                .rotationEffect(.degrees(-30))
            
            Triangle()  // Creates ear 1
                .fill(.orange)
                .frame(width: 50, height: 50)
                .offset(x: 38, y: -100)
                .rotationEffect(.degrees(30))
            
            Triangle() // Creates ear 2
                .fill(.orange)
                .frame(width: 50, height: 50)
                .offset(x: -38, y: -100)
                .rotationEffect(.degrees(-30))
            
            Ellipse() // Creates face
                .strokeBorder(.black, lineWidth: 2)
                .background(Ellipse().fill(.white))
                .frame(width: 200, height: 170)
            
            ZStack{ // eyes
                
                Circle()
                    .fill(.orange)
                    .frame(width: 50, height: 60)
                    .offset(x: +38, y: 0)
                
                Circle()
                    .fill(.orange)
                    .frame(width: 50, height: 60)
                    .offset(x: -38, y: 0)
                
                Circle()
                    .frame(width: 40, height: 50)
                    .offset(x: -38, y: 0)
                
                Circle()
                    .frame(width: 40, height: 50)
                    .offset(x: +38, y: 0)
                
                Circle()
                    .fill(.black)
                    .frame(width: 15, height: 50)
                    .offset(x: -28, y: 0)
                
                Circle()
                    .fill(.black)
                    .frame(width: 15, height: 50)
                    .offset(x: +28, y: 0)
            }
            
            ZStack{ // Creates whiskers.
                Rectangle()
                    .stroke(lineWidth: 1)
                    .fill(.black)
                    .frame(width: 50, height: 1)
                    .offset(x: +90, y: 10)
                    .rotationEffect(.degrees(15))
                
                Rectangle()
                    .stroke(lineWidth: 1)
                    .fill(.black)
                    .frame(width: 50, height: 1)
                    .offset(x: +90, y: 10)
                    .rotationEffect(.degrees(25))
                
                Rectangle()
                    .stroke(lineWidth: 1)
                    .fill(.black)
                    .frame(width: 50, height: 1)
                    .offset(x: -90, y: 10)
                    .rotationEffect(.degrees(-15))
                
                Rectangle()
                    .stroke(lineWidth: 1)
                    .fill(.black)
                    .frame(width: 50, height: 1)
                    .offset(x: -90, y: 10)
                    .rotationEffect(.degrees(-25))
            }
            
            Triangle() // nose
                .fill(.black) // Can't have strock and fill at the same time
                .frame(width: 15, height: 15)
                .offset(x: 0, y: -30)
                .rotationEffect(.degrees(-180))
            
            Text("3") // mouth
                .foregroundColor(.black)
                .font(.title)
                .rotationEffect(.degrees(90))
                .offset(x: 0, y: 50)
            
        }
    }
}
