class LottoController < ApplicationController
    def index
        
    end
    def mouse
        
        input_name =  params[:input]
        
        est_hash = []
        est_hash2 = []
        testhash = {"abc" => "abcabc", "qwe" => "qweqwe"}
        
        test_hash = testhash.to_a.sample(1).to_h
        test_hash.each do |x,y| 
        est_hash << y 
        est_hash2 << x
        end
        
        
        if input_name == est_hash2[0]
            answer = '정답입니다'
        else
            answer = '오답입니다'
        end 
    
        @result = input_name
        @answer = answer
        @result_test_hash2 = est_hash2
        @result_test_hash = est_hash
      
    end
    def keyboard
        @result_test_hash = est_hash
    end
end

