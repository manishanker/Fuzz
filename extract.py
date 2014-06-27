#!/usr/bin/python -tt
"""Python script to capture the sequence length"""
def scan():
	i = 0
	f = open("seq", "r")
	f1 = open("fuzzload", "w")
	for line in f:
		if i <=109:
			if line[0] == "G":
				i+=1
				f1.write(line[5:-11])
				f1.write("\n")
scan()
