import send2trash

baconFile = open('bacon.txt', 'a')
baconFile.write('Bacon!')
baconFile.close()
send2trash.send2trash('bacon.txt')
