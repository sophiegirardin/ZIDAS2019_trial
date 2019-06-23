/**
 * Sophie Girardin 
 * 20190623 for ZIDAS 2019
 * v1.0
 */

 //Open HeLA cells sample image from Internet
run("HeLa Cells (1.3M, 48-bit RGB)");
run("Duplicate...", "duplicate");

//Split channels
run("Split Channels");

//Segment DAPI - blue channel using MaxEntropy method
run("Auto Threshold", "method=MaxEntropy white");

//Measure the Area, the mean, the minimum grey value of your segmented image
run("Set Measurements...", "area mean min display redirect=None decimal=4");
run("Analyze Particles...", "display exclude clear include add");

//Close image
run("Close All");
