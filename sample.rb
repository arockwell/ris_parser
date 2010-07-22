#!/usr/bin/ruby

require 'rubygems'
require 'treetop'
require 'polyglot'
require 'ris'
require 'pp'

blarg = "AR  - blarg\nAR  - foo\nER  - \nAR  - test\nAR  - quux\nER  - \n"
parser = RisParser.new

a = parser.parse(blarg).eval
records = []
a.each do |record|
  entry = {}
  record.each do |key_value|
    if key_value[0] == 'AR'
      if entry[key_value[0]] == nil
        entry[key_value[0]] = [key_value[1]]
      else
        entry[key_value[0]].push(key_value[1])
      end
    end
  end
  records << entry
end

pp records

