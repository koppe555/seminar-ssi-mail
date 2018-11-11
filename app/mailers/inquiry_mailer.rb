class InquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.received_email.subject
  #
  def received_email(user)
    @user = user
    rando = [1,2,3,4,5,6,7,8,9,10]
    rando_i = [0,1,2,3,4,5]
    i = rando_i.sample
    rando_h = [0,1,2,3,4]
    h = rando_h.sample
    rando_r = [0,1,2]
    r = rando_r.sample
    se = rando.sample
    info = ["飯島ゼミィィィ！", "稲積ゼミィィィ！", "松澤ゼミィィィ！", "宮川ゼミィィィ！", "宮治ゼミィィィ！", "村田ゼミィィィ！"]
    info_comment = ["ゼミ日はエンドレスゥゥゥ！？", "logを理解できない生徒が理解できない！？", "ゼミに入れば先生の子供と遊べる！？", "学部長就任で多忙！？", "自他共に認めるブラック研究室ゥゥゥ！", "若手のホープゥゥゥ！"]
    social = ["石田ゼミィィィ！", "長橋ゼミィィィ！", "南部ゼミィィィ！", "開澤ゼミィィィ！", "伏屋ゼミィィィ！", "皆木ゼミィィィ！"]
    social_comment = ["しゃべる速度はカメのよう！", "社情のドン！", "期待の新ゼミ！", "いい人と噂！", "すでにインフル！？", "ホグワーツ魔法学校の先生！？"]
    human = ["香川ゼミィィィ！", "刈宿ゼミィィィ！", "清成ゼミィィィ！", "高木ゼミィィィ！", "寺尾ゼミィィィ！"]
    human_comment = ["映画を見れるゥゥゥ！！", "全ての始まりビタハピの創始者ァァァ！！", "心理実験でお馴染みの", "amazonレビューは4.3！！！", "生徒へのケアは社情一ィィィ！　社情裏の支配者ァァァ！"]
    rear = ["小池ゼミィィィ！", "矢野ゼミィィィ！", "遠藤ゼミィィィ！"]
    rear_comment = ["MIT出身⁉", "ブラックボックス！", "君の肉体はここで輝く！！"]
    
    case @user.cource
    when "社会情報" then
      
      case @user.interest
      
      when "情報" then
        case se
        when 1..5
          @semi = info[i]
          @semi_comment = info_comment[i]
        when 6..8
          @semi = social[i]
          @semi_comment = social_comment[i]
        when 9
          @semi = "プロジェクト演習ゥゥゥ！"
          @semi_comment = "いいことあるよ！"
        when 10
          @semi = rear[r]
          @semi_comment = rear[r]
        end
      
      when "社会" then  
        case se
        when 1..5
          @semi = social[i]
          @semi_comment = social_comment[i]
        when 6..8
          @semi = info[i]
          @semi_comment = info_comment[i]
        when 9
          @semi = "プロジェクト演習ゥゥゥ！"
          @semi_comment = "いいことあるよ！"
        when 10
          @semi = rear.sample[r]
          @semi_comment = rear_comment[r]
        end
        
      end
        
    # clear    
        
   
    when "社会人間" then
      
      case @user.interest
      when "人間" then
        case se
        when 1..5
          @semi = human[h]
          @semi_comment = human_comment[h]
        when 6..8
          @semi = social[i]
          @semi_comment = social_comment[i]
        when 9
          @semi = "プロジェクト演習ゥゥゥ！"
          @semi_comment = "いいことあるよ！"
        when 10
          @semi = rear[r]
          @semi_comment = rear_comment[r]
        end
      
      when "社会" then
        case se
        when 1..5
          @semi = social[i]
          @semi_comment = social_comment[i]
        when 6..8
          @semi = human[h]
          @semi_comment = human_comment[h]
        when 9
          @semi = "プロジェクト演習ゥゥゥ！"
          @semi_comment = "いいことあるよ！"
        when 10
          @semi = rear[r]
          @semi_comment = rear[r]
        end
      end
      # clear
  
    when "人間情報" then
      
      case @user.interest
      
      when "人間" then
        case se
        when 1..5
          @semi = human[h]
          @semi_comment = human_comment[h]
        when 6..8
          @semi = info[i]
          @semi_comment = info_comment[i]
        when 9
          @semi = "プロジェクト演習ゥゥゥ！"
          @semi_comment = "いいことあるよ！"
        when 10
          @semi = rear[r]
          @semi_comment = rear_comment[r]
        end
      
      when "情報" then
        case se
        when 1..5
          @semi = info[i]
          @semi_comment = info_comment[i]
        when 6..8
          @semi = human[h]
          @semi_comment = human_comment[h]
        when 9
          @semi = "プロジェクト演習ゥゥゥ！"
          @semi_comment = "いいことあるよ！"
        when 10
          @semi = rear[r]
          @semi_comment = rear[r]
        end
        
      end
    end

   
    
    mail to: user.email,
         subject: "【#{@user.name}さんのゼミが決定しました！】"
  end

end
