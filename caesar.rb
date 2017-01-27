# Project 1 - Caesar Cipher
# From The Odin Project
# http://www.theodinproject.com

puts 'Insert a string: '
text = gets.chomp

puts 'Insert the shift factor: '
shift = gets.to_i % 26

alphabet = ('a'..'z').to_a
shift_alphabet = alphabet[shift..-1].join + alphabet[0..shift].join

text = text.tr(alphabet.join, shift_alphabet)
text = text.tr(alphabet.join.upcase, shift_alphabet.upcase)

puts text

