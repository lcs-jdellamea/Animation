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
canvas.drawLine(from: Point(x:345,y:595), to: Point(x:367,y:595))
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
    //arrow
canvas.drawLine(from: Point(x:260,y:300), to: Point(x:150,y:167))
canvas.drawLine(from: Point(x:150,y:167), to: Point(x:157,y:160))
canvas.drawLine(from: Point(x:157,y:157), to: Point(x:130,y:145))
canvas.drawLine(from: Point(x:130,y:145), to: Point(x:130,y:155))
canvas.drawCurve(from: Point(x:130,y:155), to: Point(x:130,y:168), control1: Point(x:125,y:160), control2: Point(x:125,y:164), showControlPoints: false, lineWidth: 3, capStyle: .butt)
canvas.drawLine(from: Point(x:130,y:168), to: Point(x:131,y:185))
canvas.drawLine(from: Point(x:131,y:185), to: Point(x:143,y:175))
canvas.drawLine(from: Point(x:145,y:175), to: Point(x:248,y:300))
canvas.drawLine(from: Point(x:248,y:300), to: Point(x:245,y:315))
canvas.drawLine(from: Point(x:245,y:315), to: Point(x:260,y:335))
canvas.drawLine(from: Point(x:260,y:335), to: Point(x:265,y:320))
canvas.drawLine(from: Point(x:265,y:320), to: Point(x:280,y:320))
canvas.drawLine(from: Point(x:280,y:320), to: Point(x:265,y:300))
canvas.drawLine(from: Point(x:265,y:300), to: Point(x:260,y:300))
    //looping arrow lines
canvas.drawLine(from: Point(x:253,y:303), to: Point(x:249,y:319))
canvas.drawLine(from: Point(x:256,y:306), to: Point(x:252,y:322))
canvas.drawLine(from: Point(x:260,y:310), to: Point(x:256,y:326))
canvas.drawLine(from: Point(x:264,y:315), to: Point(x:260,y:330))
canvas.drawLine(from: Point(x:260,y:304), to: Point(x:265,y:304))
canvas.drawLine(from: Point(x:264,y:308), to: Point(x:269,y:308))
canvas.drawLine(from: Point(x:268,y:312), to: Point(x:273,y:312))
canvas.drawLine(from: Point(x:272,y:316), to: Point(x:277,y:316))
            //drawing anvil
        //drawing anvil body
canvas.drawLine(from: Point(x:157,y:160), to: Point(x:167,y:148))
canvas.drawLine(from: Point(x:167,y:148), to: Point(x:165,y:145))
canvas.drawLine(from: Point(x:120,y:100), to: Point(x:118,y:97))
canvas.drawLine(from: Point(x:118,y:97), to: Point(x:80,y:135))
canvas.drawLine(from: Point(x:80,y:135), to: Point(x:127,y:188))
canvas.drawLine(from: Point(x:80,y:135), to: Point(x:79,y:125))
canvas.drawCurve(from: Point(x:80,y:125), to: Point(x:80,y:80), control1: Point(x:95,y:110), control2: Point(x:95,y:90))
canvas.drawLine(from: Point(x:85,y:90), to: Point(x:60,y:110))
canvas.drawLine(from: Point(x:60,y:110), to: Point(x:40,y:90))
canvas.drawLine(from: Point(x:40,y:90), to: Point(x:125,y:10))
canvas.drawLine(from: Point(x:125,y:10), to: Point(x:140,y:30))
canvas.drawLine(from: Point(x:120,y:70), to: Point(x:105,y:50))
canvas.drawLine(from: Point(x:113,y:58), to: Point(x:140,y:30))

//drawing anvil tip
canvas.drawCurve(from: Point(x:165,y:145), to: Point(x:180,y:90), control1: Point(x:190,y:117), control2: Point(x:175,y:80), showControlPoints: false, lineWidth: 3, capStyle: .butt)
canvas.drawCurve(from: Point(x:180,y:90), to: Point(x:120,y:100), control1: Point(x:155,y:80), control2: Point(x:127,y:90), showControlPoints: false, lineWidth: 3, capStyle: .butt)
canvas.drawCurve(from: Point(x:180,y:90), to: Point(x:120,y:70), control1: Point(x:160,y:65), control2: Point(x:140,y:80))

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

canvas.highPerformance = false

