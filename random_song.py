import random,os,sys

songs_path = 'C:\\data\\books oae\\apex library' # folder in which your songs are there

folder=os.listdir(songs_path)
file=random.choice(folder)
ext3=['.mp3']
print('First random pick: '+file)
os.chdir(songs_path)


while file[-4:] not in ext3 :
    print('Not an MP3 file  : '+file)
    file=random.choice(folder)
else:
    os.startfile(file)
    print('Song name: '+file)

sys.exit()
