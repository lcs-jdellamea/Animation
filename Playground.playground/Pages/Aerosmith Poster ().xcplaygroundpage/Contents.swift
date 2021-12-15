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
canvas.highPerformance = true

canvas.drawShapesWithFill = false

        //drawing arrows at the top
canvas.lineColor = .black
    //top arrow

//middle line #1
canvas.drawLine(from: Point(x:350,y:575), to: Point(x:75,y:575))
//arrow teather #1
canvas.drawLine(from: Point(x:320,y:575), to: Point(x:345,y:595))
canvas.drawLine(from: Point(x:340,y:595), to: Point(x:375,y:595))
canvas.drawLine(from: Point(x:370,y:595), to: Point(x:350,y:575))

    //bottom arrow
//middle line #2
canvas.drawLine(from: Point(x:50,y:450), to: Point(x:325,y:450))
//arrow teather #2
canvas.drawLine(from: Point(x:80,y:450), to: Point(x:60,y:430))
canvas.drawLine(from: Point(x:60,y:430), to: Point(x:30,y:430))
canvas.drawLine(from: Point(x:30,y:430), to: Point(x:50,y:450))
canvas.drawLine(from: Point(x:50,y:450), to: Point(x:30,y:470))
canvas.drawLine(from: Point(x:30,y:470), to: Point(x:60,y:470))
canvas.drawLine(from: Point(x:60,y:470), to: Point(x:80,y:450))
//arrowhead #2
canvas.drawLine(from: Point(x:325,y:450), to: Point(x:325,y:470))
canvas.drawLine(from: Point(x:325,y:470), to: Point(x:350,y:450))
canvas.drawLine(from: Point(x:350,y:450), to: Point(x:325,y:430))
canvas.drawLine(from: Point(x:325,y:430), to: Point(x:325,y:450))
            //finished drawing top arrows

            //drawing "smith" arrow
    //arrow body
canvas.drawLine(from: Point(x:240,y:320), to: Point(x:130,y:187))
            //drawing anvil
        //drawing anvil body
canvas.drawLine(from: Point(x:130,y:187), to: Point(x:167,y:148))
canvas.drawLine(from: Point(x:167,y:148), to: Point(x:165,y:145))
//drawing anvil tip
canvas.drawCurve(from: Point(x:165,y:145), to: Point(x:180,y:90), control1: Point(x:190,y:117), control2: Point(x:175,y:80), showControlPoints: false, lineWidth: 3, capStyle: .butt)
canvas.drawCurve(from: Point(x:180,y:90), to: Point(x:120,y:100), control1: Point(x:155,y:80), control2: Point(x:127,y:90), showControlPoints: false, lineWidth: 3, capStyle: .butt)
// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

canvas.highPerformance = false

