require_relative '../slugifier'

RSpec.describe "slugifier function"  do
	it 'should return lowercase always' do
	    big_letters = "Prueba Mayusculas"
	    result = slugifier(big_letters)
        expect(/[A-Z]/ =~ result).to be_nil
	end
	it 'should return no accents' do
	    acents = "á é í ó ú ñ a e i o u"
	    result = slugifier(acents)
        expect(/á|é|í|ó|ú|ñ/ =~ result).to be_nil
	end
	it 'should return - instead of "white-spaces"' do
	    acents = "prueba espacios"
	    result = slugifier(acents)
        expect(/\s/ =~ result).to be_nil
	end
	it 'should return vocals as well as consonants' do
	    strung = "a e i o u x z y"
	    result = slugifier(strung)
        expect(/[^\w\s-]/ =~ result).to be_nil
	end
	it 'should strip all non-alphanumeric' do
	    acents = "prueba @lpha #mericos 1"
	    result = slugifier(acents)
        expect(/[^\w\s-]/ =~ result).to equal("prueba-lpha-mericos-1")
	end
	

end

	