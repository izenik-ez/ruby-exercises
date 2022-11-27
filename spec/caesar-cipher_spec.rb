# coding: utf-8
require 'spec_helper'
require_relative "../caesar_cipher"

# rspec spec/caesar-cipher_spec.rb --format documentation

# ascii_code_hash = {
#   lowercase: {lower: 97, upper: 122},
#   uppercase: {lower: 65, upper: 90}
# }

RSpec.describe "Caesar Cipher" do
  # before do
  #   @ascii_code_hash = get_ascii_code
  # end
  #let(:ascii_code_hash) { get_ascii_code}
  # context "Returns the same ascii code" do
  #   it "when is in the limits for LOWCASE" do
  #     expect(safe_shift 97, ascii_code_hash[:lowercase]).to eq 97
  #   end
  #   it "when is in the limits for UPCASE" do
  #     expect(safe_shift 65, ascii_code_hash[:uppercase]).to eq 65
  #   end
  # end
  # context "Returns the correct character after shift" do
  #   it "when is close to upper limit for LOWCASE" do
  #     expect(safe_shift 125, ascii_code_hash[:lowercase]).to eq 99
  #   end
  #   it "when is close to upper limit for UPCASE" do
  #     expect(safe_shift 95, ascii_code_hash[:uppercase]).to eq 69
  #   end
  # end
  context "Correct shift" do
    it "When is inside limits for LOWERCASE" do
      expect(encode_char "a",5).to eq "f"
    end

    it "When is at the limits for LOWERCASE" do
      expect(encode_char "z", 5).to eq "e"
    end

    it "When is inside limits for UPCASE" do
      expect(encode_char "A", 5).to eq "F"
    end

  end
  context "Correct encoding" do
    it "with char" do
      expect(caesar_cipher "a", 5).to eq "f"
    end
    it "with string" do
      expect(caesar_cipher "Xab ier",4).to eq "Bef miv"
    end
    context "Correct decoding" do
      it "with string" do
        expect(caesar_cipher "Bef miv",-4).to eq "Xab ier"
      end
    end

  end
end
