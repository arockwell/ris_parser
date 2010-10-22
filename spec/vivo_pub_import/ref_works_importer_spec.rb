require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module VivoPubImport
  describe RefworksImporter do
    it "should parse ris data" do
      data = <<-EOH
TY  - CHAP
ID  - 1000
A1  - Author,P. A.
T1  - Test Paper 1
Y1  - 2010
N1  - p. cm.; Entry: 20100401; Update: 20101011
A2  - Secondary,Author
T2  - Advanced RIS Parsing
CY  - Gainesville
SN  - ISBN
M1  - Book, Section
ER  - 

TY  - CHAP
ID  - 3095
A1  - Author,P. A.
T1  - Test Paper 2
Y1  - 2010
SP  - 163
EP  - 163-167
A2  - Secondary,A. S.
T2  - Publication Data Analyis
PB  - MSL Publishing
CY  - Gainesville, OH
M1  - Book, Section
ER  - 

      EOH
      records = RefworksImporter.parse_ris(data)
      records.size.should == 2
    end
  end
end
