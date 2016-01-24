
This repository contains:

* PDF files on fruit and vegetables that are available on the OECD.org website for download (search for fruit and vegetables there) - or see [this page](http://www.oecd.org/tad/code/oecdfruitandvegetablesstandardsbrochures.htm) - all these files are certainly &copy; OECD which is hereby acknowledged.
* a couple of `bash` scripts:
 * `extract.sh`: extracts images from the PDF files using `pdfimages` (note that the one in this repository is for 64-bit Mac OSX)
 * `cleanup.sh`: removes superfluous, non-fruity/vegetably images (alpha layers, navigation button images, logos, ...) using `imagemagick`; converts `ppm` images to `jpeg` images; removes `ppm` images
 * `square.sh`: creates square images based on each image's smallest dimension

So, what is this useful for? Mmmh, I don't know yet. Better learn `bash` and `imagemagick`? Prove that it's easily possible to extract images from PDF files? Well, I do know, and the repository name may give an indication ... suspense!
