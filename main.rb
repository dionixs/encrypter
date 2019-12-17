require 'digest'

# методы шифрования
def encrypt_to_md5(phrase)
  puts Digest::MD5.hexdigest(phrase)
end

def encrypt_to_sha1(phrase)
  puts Digest::SHA1.hexdigest(phrase)
end

puts "Введите слово или фразу для шифрования:"
str = STDIN.gets.chomp
puts

puts "Каким способом зашифровать:\n1. MD5\n2. SHA1"
way_encrypt = STDIN.gets.to_i
puts

if way_encrypt == 1
  encrypt_to_md5(str)
else
  encrypt_to_sha1(str)
end