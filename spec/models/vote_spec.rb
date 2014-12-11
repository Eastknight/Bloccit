decribe Vote do 
  describe "validations" do 
    describe "value validation" do 
      it "only allows -1 or 1 as values" do 
        before do 
          v1 = Vote.new(value: 1)
          v2 = Vote.new(value: -1)
          v3 = Vote.new(value: 2)
        end

        describe '1' do 
          it "should be a valid value." do 
            expect (v1.valid?).to eq(true) 
          end
        end

        decribe '-1' do 
          it "should be a valid value." do
            expect (v2.valid?).to eq(true)
          end
        end

        decribe '2' do
          it "should be an invalid value." do
            expect (v3.valid?).to eq(false)
          end
        end

      end
    end
  end
end