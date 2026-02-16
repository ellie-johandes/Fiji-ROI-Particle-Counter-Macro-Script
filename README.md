# Fiji-ROI-Particle-Counter-Macro-Script
A Fiji macro script for thresholding and counting particles within defined regions of interest (ROIs). It also measures the area and perimeter of each ROI.  

# Currently only works on one file at a time. If there is a high density of particles, the final count may be lower than 

To use:
  1) Download macro script
  2) Open image in FIJI. Define regions of interest (ROIs) on image, adding each one to the ROI manager tool. If        you have previously saved ROIs, you can open them in ROI manager instead.
  3) If desired, set image scale (the default units will be in pixels)
  4) In FIJI, select Plugins -> Macros -> Run, then choose Particle-Counter.ijm
  5) The script will perform the following actions:
     
       -convert image to 8-bit

       -subtract background

       -threshold the entire image using an auto local threshold with the Bernsen method. Local thresholding helps         to visualize dimmer particles. If another method is desired, replace Bernsen with threshold of choice.
     
       -add watershed filter to separate particles which have merged due to thresholding.

       -measure the area and perimeter of each ROI. Units reflect the image scale (pixels,cm, microns, etc.)

       -iterate through each ROI and count the number of pixels. Will also give the following information: total           area, average particle size, %area of the ROI covered, and perimeter.

   6) Output will be in two seperate files, one for the area and perimeter of the ROI(s) and one for the particle       count. These outputs must then be saved manually by the user


       
