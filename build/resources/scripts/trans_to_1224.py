#!/usr/bin/python3

from PIL import Image
import numpy as np
import sys
import time
import os

"""
	This script accepts a source folder containing
	PNG images with 3840x2400 size and resize each 
	of the image to 1280x2400(RGB).

	It does it in the same directory, with same file
	name since that directory came from an sliced file
	and it can always be replaced with a new one.

"""


def TransTo1224(SourcePngFileName, DestPngFileName):
	
	# Trans png file from 3840x2400 to 1280X2400(RGB)

	imgSrc = Image.open(SourcePngFileName)
	dataSrc = np.array(imgSrc)
	dataDest = dataSrc.reshape(2400,1280,3)
	imgDest = Image.fromarray(dataDest, 'RGB')
	imgDest.save(DestPngFileName)

	#print("[DEBUG]", "Source:", SourcePngFileName, dataSrc.shape)
	#print("[DEBUG]", "Destination:", DestPngFileName, dataDest.shape)


if __name__ == "__main__":

	if len(sys.argv) != 2:
		print("[DEBUG]", "Missing argument, need souce dir.")
		print("[DEBUG]", "python3 trans_to_1224.py", "/dir/source")

		sys.exit(1)

	source_dir = sys.argv[1]

	print("[DEBUG]", "Source dir: ", source_dir)

	if not os.path.exists(source_dir):
		print("[DEBUG]", "Directory is invalid.")


	source_png_name_list = os.listdir(source_dir)
	source_png_name_list = [os.path.join(source_dir,i) for i in source_png_name_list if i.endswith(".png")]
	source_png_name_list.sort()

	print("[DEBUG]", "Source .png file names:", source_png_name_list)

	# Use the function to resize each image.
	# Source path of image is the same as destination path.
	# Same filename.
	for img_path in source_png_name_list:
		TransTo1224(img_path, img_path)

