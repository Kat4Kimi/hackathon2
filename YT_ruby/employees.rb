File.open("filename.txt")
File.open("Deskktop/RB/filename.txt", "r" this is the mode you want to open it R = read) do |file| This stores the file you're opening in a file.

	puts file.read() this will let you access the file. file =  metadata will be pulled up and .read = will display the text within the file.
	puts file.readline() This will print out the first line of the file
	puts file.readlin() This will print out the second line.

	puts file.readchar() will read the charectars 
	puts file.readlines() will let you read all lines in file.

	for line in file.readlines(
		puts line -- this will show you all lines in file.


		Another method to open files:

With this method you need to make sure you close the file. 		
file = File.open("filename.txt, "r")

puts file.read

file.close()
end
 

This is the way you would open a file.
What ever you want to do with the file you would enter it in BEFORE the "end" command.