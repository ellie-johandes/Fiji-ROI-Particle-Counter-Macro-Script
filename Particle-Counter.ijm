setOption("ScaleConversions", true);
run("8-bit");
run("Subtract Background...", "rolling=50");
run("Auto Local Threshold", "method=Bernsen radius=15 parameter_1=0 parameter_2=0 white");
run("Watershed");
roiManager("Measure");
count = roiManager("count");
for(i=0; i<count; i++){
	roiManager("Select", i);
	run("Analyze Particles...", "summarize");
}