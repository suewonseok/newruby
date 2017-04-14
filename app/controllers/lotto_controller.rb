class LottoController < ApplicationController
    def index
    
    end
    def mouse
    @name = params[:input]
    random1 = ["지나가는 서원석", "벚꽃이 슬슬 지네요", "곧 중간고사", "멋사 1일1공유", "지나가는 공대 가필드", "밥 먹을 때 혀씹음"]
    random2 = ["걷다가 발목 접지름", "곧 중간고사", "멋사 카드뉴스", "물 마시다가 딸꾹질", "하품하다 목경련"]
    random3 = ["아이디어톤", "폰 떨굼", "곧 중간고사", "동영상 봤는데 알고보니 데이터", "페이스북 로그아웃"]
   
    random_1 = random1.sample(1)
    @random1 = random_1[0]
    random_2 = random2.sample(1)
    @random2 = random_2[0]
    random_3 = random3.sample(1)
    @random3 = random_3[0]
    if @random1 == @random2 &&  @random3 == @random2
         result = "와우 중간고사가 세 개?! 이거 캡쳐해 보여주시면 동국대 세션 갈 때 노트북 들어드릴게요ㅎㅎ"
    end 
    @result = result
    
    if @random1 == "멋사 1일1공유"
        result10 = "1인 1공유...저는 이 날이 떨려요.."
    end
    @result10 = result10
    if @random1 == "지나가는 서원석"
        result4 = "저는 주시 안하셔도 되요ㅎ"
    end
    @result4 = result4
    if @random2 == "걷다가 발목 접지름"
        result11 = "저는 이제 더 이상 접지를 발목도 없어요"
    end
    @result11 = result11
    if @random2 == "멋사 카드뉴스"
        result5 = "카드뉴스.......저는 아직 막막합니다" 
    end
    @result5 = result5
    if @random3 == "아이디어톤"
        result12 = "윈도우10 리테일버전이 탐나지만... 떠오르는 아이디어가.."
    end
    @result12 = result12
    end
end