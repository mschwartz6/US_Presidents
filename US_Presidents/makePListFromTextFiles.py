# -*- coding: utf-8 -*-
#script to make your plist from text files
pListFile = "USP.plist"

header = """
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version=“1.0”>\n
"""

closePlist = "</plist>"
dicti = "<dict>\n"
closeDict = "</dict>\n"

key = "\t<key>"
closeKey = "</key>\n"

array = "\t<array>\n"
closeArray = "\t</array>\n"

string = "\t\t<string>"
closeString = "</string>\n"
# Text files to cat into plist

amountterms = "amountterms.txt"
birthdays = "birthdays.txt"
birthplace = "birthplace.txt"
imgpath = "imgpath.txt"
parties = "parties.txt"
placedied = "placedied.txt"
presnames = "presnames.txt"
previousoccupation = "previousoccupation.txt"
yeardied = "yeardied.txt"
yeartookoffice = "yeartookoffice.txt"

amountTermsList = []
birthdaysList = []
birthplaceList = []
imgpathList = []
partiesList = []
placediedList = []
presnamesList = []
previousoccupationList = []
yeardiedList = []
yeartookofficeList = []

with open(pListFile,'a') as plist:
	plist.write(header)
	plist.write(dicti)

	plist.write(key + "amountofterms" + closeKey)
	plist.write(array)
	with open(amountterms,'r') as file :
		infile = file.read()
		amountTermsList = infile.splitlines()
		for terms in amountTermsList:
			plist.write(string + terms + closeString)
	plist.write(closeArray)
	file.close()

	plist.write(key + "birthdays" + closeKey)
	plist.write(array)
	with open(birthdays,'r') as file:
		infile = file.read()
		birthdaysList = infile.splitlines()
		for days in birthdaysList:
			plist.write(string + days + closeString)
	plist.write(closeArray)
	file.close()

	plist.write(key + "birthplace" + closeKey)
	plist.write(array)
	with open(birthplace,'r') as file:
		infile = file.read()
		birthplaceList = infile.splitlines()
		for place in birthplaceList:
			plist.write(string + place + closeString)
	plist.write(closeArray)
	file.close()

	plist.write(key + "imgpath" + closeKey)
	plist.write(array)
	with open(imgpath,'r') as file:
		infile = file.read()
		imgpathList = infile.splitlines()
		for img in imgpathList:
			plist.write(string + img + closeString)
	plist.write(closeArray)
	file.close()

	plist.write(key + "parties" + closeKey)
	plist.write(array)
	with open(parties,'r') as file:
		infile = file.read()
		partiesList = infile.splitlines()
		for party in partiesList:
			plist.write(string + party + closeString)
	plist.write(closeArray)
	file.close()

	plist.write(key + "placedied" + closeKey)
	plist.write(array)
	with open(placedied,'r') as file:
		infile = file.read()
		placediedList = infile.splitlines()
		for died in placediedList:
			plist.write(string + died + closeString)
	plist.write(closeArray)
	file.close()

	plist.write(key + "presnames" + closeKey)
	plist.write(array)
	with open(presnames,'r') as file:
		infile = file.read()
		presnamesList = infile.splitlines()
		for pres in presnamesList:
			plist.write(string + pres + closeString)
	plist.write(closeArray)
	file.close()

	plist.write(key + "previousoccupation" + closeKey)
	plist.write(array)
	with open(previousoccupation,'r') as file:
		infile = file.read()
		previousoccupationList = infile.splitlines()
		for prev in previousoccupationList:
			plist.write(string + prev + closeString)
	plist.write(closeArray)
	file.close()

	plist.write(key + "yeardied" + closeKey)
	plist.write(array)
	with open(yeardied,'r') as file:
		infile = file.read()
		yeardiedList = infile.splitlines()
		for died in yeardiedList:
			plist.write(string + died + closeString)
	plist.write(closeArray)
	file.close()

	plist.write(key + "yeartookoffice" + closeKey)
	plist.write(array)
	with open(yeartookoffice,'r') as file:
		infile = file.read()
		yeartookofficeList = infile.splitlines()
		for year in yeartookofficeList:
			plist.write(string + year + closeString)
	plist.write(closeArray)
	file.close()

	plist.write(closeDict)
    plist.write(closePlist)
plist.close()
#p = open(pListFile,'r');
#pr = p.read()
#print pr
#p.close()
