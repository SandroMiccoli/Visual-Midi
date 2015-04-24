
void controllerChange(int channel, int number, int value, long timestamp, String bus_name) {
  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);
  println("Timestamp:"+timestamp);
  println("Bus name:"+bus_name);
}


void noteOn(int channel, int pitch, int velocity) {
  start=true;
  
  println("Note On:"+channel+" "+pitch+" "+velocity);
  drawSphere(pitch,velocity);
  
  
}

void noteOff(int channel, int pitch, int velocity) {
  
  println("Note Off:"+channel+" "+pitch+" "+velocity);
}
