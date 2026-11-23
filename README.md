# Lab 5 – Edge Detection and Segmentation

## Objective

The objective of this experiment was to study edge detection and image segmentation using MATLAB. I tested Sobel, Prewitt, Canny and Laplacian of Gaussian (LoG) operators. I also used Otsu thresholding to separate image regions.

## 1. Sobel and Prewitt

Sobel and Prewitt detect edges by calculating image intensity changes. They identify boundaries where pixel values change quickly.

## 2. Canny Edge Detection

Canny uses multiple processing steps to detect edges. It produces thin and clear edges and reduces unwanted noise.

## 3. Laplacian of Gaussian

LoG first smooths the image and then detects edges using zero-crossings. It can identify boundaries in different directions.

## 4. Otsu Thresholding

Otsu automatically selects a threshold based on the image histogram. The threshold converts the grayscale image into a binary image with foreground and background regions.

## 5. Connected Region Labelling

I used `bwlabel()` to identify connected regions in the binary image. The `label2rgb()` function displays the regions using different colours.

## 6. Reflections

### Which operator gives the thinnest, cleanest edges?

Canny generally produces thin and clear edges because it uses smoothing, gradient calculation, non-maximum suppression and hysteresis thresholding.

### Why does Canny outperform simple gradient filters?

Canny uses several processing steps to reduce noise and remove weak or unnecessary edges. Sobel and Prewitt mainly detect intensity changes using gradients.

### How does Otsu relate to histogram-based thresholding?

Otsu analyses the grayscale histogram and selects a threshold that separates two intensity groups. It reduces the need to choose a threshold manually.

## Conclusion

This experiment showed how different operators detect image edges and how Otsu thresholding separates image regions. Canny provided a clear edge map, while Otsu created a binary segmentation.

## AI Usage

**Tool used:** ChatGPT

**How I used it:** I used ChatGPT to understand MATLAB edge detection and segmentation functions and to help prepare the MATLAB code.

**What I verified or changed:** I ran the MATLAB script and checked the generated figures and command window results.
