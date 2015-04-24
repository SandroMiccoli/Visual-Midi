import java.util.Hashtable;
import themidibus.*; //Import the library
import javax.sound.midi.MidiMessage;

MidiBus myBus; // The MidiBus
StandardMidiListener myListener;
MidiMessage myMsg;
float globalX=0.0;
float globalY=0.0;
boolean start = false;

Hashtable <Integer, myShape> shapes;

void setup() {
  size(800, 800);
  background(111);

  MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.

  myBus = new MidiBus(this, 2, -1);

}

void draw() {
  background(222);
  //myListener.midiMessage(myMsg,400);
  if (start) {
    globalX+=1;
    if (globalX+100>width) {
      globalX=0;
      globalY+=50;
    }
  }
}
