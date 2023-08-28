import qrcode#import della libreria per generare i qrcode
url = ""#url del sito 
nomeImmagine = ""#nome dell'immagine che salva
while url == "" or nomeImmagine == "":#richiedo finchè non viene inserito un link
    #richiesta input da console
    url = input("Inserisci l'url da cui ricavare il qrcode: \n")
    nomeImmagine = input("Inserisci il nome con cui vuoi salvare l'immagine\n")
img = qrcode.make(url)#genero il qrcode

img.save(nomeImmagine+".png")#salvo l'immagine