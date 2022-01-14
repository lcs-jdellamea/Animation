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

canvas.drawShapesWithFill = true

        //background

for xPosition in stride(from: 0, through: 400, by: 400) {
    
    for yPosition in stride(from: 0, through: 600, by: 150) {
        
        if xPosition == yPosition {
            canvas.fillColor = .purple
        } else {
            canvas.fillColor = .black
        }
        
      var rectangleVertices: [Point] = []
      rectangleVertices.append(Point(x: xPosition + 0,
                                     y: yPosition + 0))  // A
      rectangleVertices.append(Point(x: xPosition + 0,
                                     y: yPosition + 150))  // B
      rectangleVertices.append(Point(x: xPosition + 400,
                                     y: yPosition + 70))  // C
      rectangleVertices.append(Point(x: xPosition + 400,
                                     y: yPosition + -150))   // D
      canvas.drawCustomShape(with: rectangleVertices)
            
  }
  
}

        //text
canvas.textColor = .white
canvas.drawText(message: "Aerosmith", at: Point(x: 120,y: 495), size: 30, kerning: 1)
canvas.drawText(message: "London LND, GB", at: Point(x: 80,y: 555), size: 15, kerning: 1)
canvas.drawText(message: "JUN 22 2022", at: Point(x: 220,y: 450), size: 15, kerning: 1)

      //two top arrows
    //top arrow

canvas.drawShapesWithFill = false

canvas.lineColor = .purple

canvas.drawLine(from: Point(x:350,y:575), to: Point(x:75,y:575))
canvas.drawLine(from: Point(x:320,y:575), to: Point(x:345,y:595))
canvas.drawLine(from: Point(x:345,y:595), to: Point(x:367,y:595))
canvas.drawLine(from: Point(x:370,y:595), to: Point(x:350,y:575))
canvas.drawLine(from: Point(x:350,y:575), to: Point(x:370,y:555))
canvas.drawLine(from: Point(x:370,y:555), to: Point(x:345,y:555))
canvas.drawLine(from: Point(x:345,y:555), to: Point(x:320,y:575))
canvas.drawLine(from: Point(x:75,y:575), to: Point(x:75,y:595))
canvas.drawLine(from: Point(x:75,y:575), to: Point(x:75,y:555))
canvas.drawLine(from: Point(x:75,y:555), to: Point(x:50,y:575))
canvas.drawLine(from: Point(x:75,y:595), to: Point(x:50,y:575))

    //bottom arrow

canvas.lineColor = .yellow

canvas.drawLine(from: Point(x:50,y:450), to: Point(x:325,y:450))
canvas.drawLine(from: Point(x:80,y:450), to: Point(x:60,y:430))
canvas.drawLine(from: Point(x:60,y:430), to: Point(x:30,y:430))
canvas.drawLine(from: Point(x:30,y:430), to: Point(x:50,y:450))
canvas.drawLine(from: Point(x:50,y:450), to: Point(x:30,y:470))
canvas.drawLine(from: Point(x:30,y:470), to: Point(x:60,y:470))
canvas.drawLine(from: Point(x:60,y:470), to: Point(x:80,y:450))
canvas.drawLine(from: Point(x:325,y:450), to: Point(x:325,y:470))
canvas.drawLine(from: Point(x:325,y:470), to: Point(x:350,y:450))
canvas.drawLine(from: Point(x:350,y:450), to: Point(x:325,y:430))
canvas.drawLine(from: Point(x:325,y:430), to: Point(x:325,y:450))

            //drawing "smith" arrow

canvas.lineColor = .orange

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
canvas.drawLine(from: Point(x:253,y:303), to: Point(x:249,y:319))
canvas.drawLine(from: Point(x:256,y:306), to: Point(x:252,y:322))
canvas.drawLine(from: Point(x:260,y:310), to: Point(x:256,y:326))
canvas.drawLine(from: Point(x:264,y:315), to: Point(x:260,y:330))
canvas.drawLine(from: Point(x:260,y:304), to: Point(x:265,y:304))
canvas.drawLine(from: Point(x:264,y:308), to: Point(x:269,y:308))
canvas.drawLine(from: Point(x:268,y:312), to: Point(x:273,y:312))
canvas.drawLine(from: Point(x:272,y:316), to: Point(x:277,y:316))
canvas.drawLine(from: Point(x:135,y:175), to: Point(x:135,y:153))
canvas.drawLine(from: Point(x:135,y:153), to: Point(x:150,y:160))
canvas.drawLine(from: Point(x:140,y:173), to: Point(x:140,y:160))
canvas.drawLine(from: Point(x:140,y:160), to: Point(x:147,y:164))

            //drawing anvil

canvas.lineColor = .blue

        //drawing anvil body
canvas.drawLine(from: Point(x:160,y:158), to: Point(x:167,y:148))
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
canvas.drawCurve(from: Point(x:180,y:90), to: Point(x:120,y:70), control1: Point(x:160,y:65), control2: Point(x:140,y:80), showControlPoints: false, lineWidth: 3, capStyle: .butt)

//drawing hammer

canvas.lineColor = .red

canvas.drawLine(from: Point(x:40,y:260), to: Point(x:100,y:240))
canvas.drawLine(from: Point(x:100,y:240), to: Point(x:95,y:210))
canvas.drawLine(from: Point(x:95,y:210), to: Point(x:120,y:203))
canvas.drawLine(from: Point(x:40,y:260), to: Point(x:45,y:275))
canvas.drawLine(from: Point(x:45,y:275), to: Point(x:105,y:255))
canvas.drawLine(from: Point(x:105,y:255), to: Point(x:113,y:285))
canvas.drawLine(from: Point(x:113,y:285), to: Point(x:138,y:278))
canvas.drawCurve(from: Point(x:120,y:203), to: Point(x:138,y:278), control1: Point(x:140,y:260), control2: Point(x:140,y:220), showControlPoints: false, lineWidth: 3, capStyle: .butt)

canvas.lineColor = .green

canvas.drawLine(from: Point(x:130,y:300), to: Point(x:125, y:335))
canvas.drawLine(from: Point(x:145,y:305), to: Point(x:145,y:345))
canvas.drawLine(from: Point(x:160,y:300), to: Point(x:165,y:335))


// Show a grid

canvas.drawAxes(withScale: true, by: 50, color: .white)

canvas.highPerformance = false

