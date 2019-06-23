/**
 * Sophie Girardin 
 * 20190623 for ZIDAS 2019
 * v1.0
 */
run("HeLa Cells (1.3M, 48-bit RGB)");
run("Duplicate...", "duplicate");
run("Split Channels");
run("Auto Threshold", "method=MaxEntropy white");
run("Set Measurements...", "area mean min display redirect=None decimal=4");
run("Analyze Particles...", "display exclude clear include add");
run("Close All");
