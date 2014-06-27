#!/usr/bin/python -tt
import re
def cleantxt():
	file_object = open('image-list.txt', 'r')
	f = open('images.txt', 'w')
	data = file_object.readlines()
	for x in range(len(data)):
		if x == 0 or x ==1 or x ==2 or x == (len(data)-1):
			pass
		else:
			f. write(data[x][2:38])
			f.write('\n')
	#print data
cleantxt()
	
