import read_binary

print read_binary.__doc__

filename = 'testfile'

n= read_binary.find_number_entries(filename)
data= read_binary.read_binary(filename,n)

print 'Python Reads ',n, ' entries'
print data