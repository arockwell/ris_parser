#!/usr/bin/ruby

require 'rubygems'
require 'treetop'
require 'polyglot'
require 'ris'

blarg = "AR  - blarg\nAR  - foo\n"
parser = RisParser.new

puts parser.parse(blarg).eval
