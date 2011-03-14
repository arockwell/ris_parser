#!/usr/bin/ruby

require 'rubygems'
require 'treetop'
require 'polyglot'

require 'vivo_pub_import'
require 'pp'

test_data = <<-EOH
TY  - CHAP
ID  - 3092
A1  - Adelson,R. T.
T1  - Wound healing
Y1  - 2008
N1  - p. cm.; Entry: 20080425; Update: 20081111
A2  - Thomas,Regan
T2  - Advanced Therapy in Facial/Plastic Reconstructive Surgery
CY  - B C Decker Inc
SN  - 9781550093759; 1550093754 Vendor Info: Baker and Taylor Baker & Taylor YBP Library Services (BTCP BKTY YANK) 179.00 Status: active
M1  - Book, Section
ER  - 

TY  - CHAP
ID  - 3095
A1  - Adelson,R. T.
T1  - Nasal fracture
Y1  - 2007
SP  - 163
EP  - 163-167
A2  - Roland,P. S.
T2  - Otolaryngology Clinical Case Studies Oral Board Exam Review
PB  - Anadem Publishing, Inc.
CY  - Columbus, OH
M1  - Book, Section
ER  - 

EOH

parser = RisParser.new
result = parser.parse(test_data).eval
pp result

