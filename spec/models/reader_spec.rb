
require "spec_helper"

describe Reader do
  let(:reader) { Reader.new}

  
 it "is an ActiveRecord Model" do
   expect(Reader.superclass).to eq(ActiveRecord::Base)
 end

 it "has email" do
   reader.email = "email@email.com"
   expect(reader.email).to eq("email@email.com")
 end

 it "responds to password" do
   reader.password = "pass"
   expect(reader.password).to eq("pass")
 end

 it "responds to password_confirmatio" do
   reader.password_confirmatio = "pass"
   expect(reader.password_confirmatio).to eq("pass")
 end
end
