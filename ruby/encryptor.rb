# Let's build an encryption and decryption algorithm. The encryption algorithm can shift the letters X numbers to the right. 
# For example, if we pass the letter "a" and the number 4 to the encrypt class method, it would return the letter 
# "e" because it is 4 letters to the right in the alphabet. Furthermore:

# Encryptor.encrypt("er", 3)
# will return: "hu"

# There will also be a method called decrypt that will decrypt the encrypted back to the original string. Good luck!

class Encryptor


	def Encryptor.cipher
		return ('a'..'z').to_a
	end


	def Encryptor.encrypt(letter, num)
		encrypted = []
		# pos = Encryptor.cipher[Encryptor.cipher.index(e)] == 25 ? 0 : Encryptor.cipher[Encryptor.cipher.index(e)] 
		letter.split("").to_a.each { |e| encrypted.push( self.cipher[self.cipher.index(e) + num > 25 ? self.cipher.index(e) + num - 26 :  elf.cipher.index(e) + num ] ) }
		return encrypted.join


	end

	def Encryptor.decrypt(letter, num)
		decrypted = []
		letter.split("").to_a.each { |e|  decrypted.push(self.cipher[self.cipher.index(e) - num < 0 ? self.cipher.index(e) - num :  self.cipher.index(e) - num]) }
		return decrypted.join

	end
end


puts Encryptor.cipher.index('z')

puts Encryptor.cipher.index('z')
puts Encryptor.encrypt('z', 4)
puts Encryptor.decrypt('hu', 3) #er


