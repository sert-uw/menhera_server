ResponseCandidate.seed do |rc|
  rc.id = 1
  rc.short_text = '何?'
  rc.text = 'どうしたの？'
  rc.girl = Girl.find_by name: 'naoka'
end

ResponseCandidate.seed do |rc|
  rc.id = 2
  rc.short_text = '好き'
  rc.text = '好きだよ'
  rc.girl = Girl.find_by name: 'naoka'
end

ResponseCandidate.seed do |rc|
  rc.id = 3
  rc.short_text = '嫌い'
  rc.text = '嫌いなんだよ'
  rc.girl = Girl.find_by name: 'naoka'
end
