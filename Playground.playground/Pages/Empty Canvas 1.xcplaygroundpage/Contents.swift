//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600

/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */
//makes canvas
canvas.translate(to: Point(x: canvas.width / 400,
                           y: canvas.height / 600))

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
//removes step by step screenshots
canvas.highPerformance = true

//background
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x:0,y:0), width: 400, height:600)
//white strip in background to create white line effect
canvas.fillColor = .white
canvas.drawRectangle(at: Point(x:0,y:450), width:400, height: 100)
//black rectangle over white to make white lines
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x:0,y:453), width: 400, height: 93)
//background ends

//creating, and Iterating arrows
//creating loop, and defining xPOS and yPOS

for xPosition in stride(from: 0, to: 400, by: 80) {
    
    for yPosition in stride(from: 0, to: 400, by: 80) {
        
//selection statement for color
        if xPosition == yPosition {
            canvas.fillColor = .white
        } else {
            canvas.fillColor = .purple
        }
        
//making purple arrow
        
    var arrowVertices: [Point] = []
    arrowVertices.append(Point(x: xPosition + 0, y: yPosition + 0))
    arrowVertices.append(Point(x: xPosition + 65, y: yPosition + 0))
    arrowVertices.append(Point(x: xPosition + 65, y: yPosition + 15))
    arrowVertices.append(Point(x: xPosition + 25, y: yPosition + 15))
    arrowVertices.append(Point(x: xPosition + 75, y: yPosition + 60))
    arrowVertices.append(Point(x: xPosition + 65, y: yPosition + 75))
    arrowVertices.append(Point(x: xPosition + 15, y: yPosition + 30))
    arrowVertices.append(Point(x: xPosition + 15, y: yPosition + 70))
    arrowVertices.append(Point(x: xPosition + 0, y: yPosition + 70))
    arrowVertices.append(Point(x: xPosition + 0, y: yPosition + 0))
        
    canvas.drawCustomShape(with: arrowVertices)
        
    }
}


//adds step by step screenshots
canvas.highPerformance = false

//Add and Show Grid
canvas.drawAxes(withScale: true, by: 20, color: .white)
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
