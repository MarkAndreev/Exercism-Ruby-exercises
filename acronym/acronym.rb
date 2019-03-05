class Acronym

  def self.abbreviate(phrase)
    phrase.split(/\W/) # Делит строку на все слова и возвращает Array
      .map { |p| acro_part(p) } # Каждое слово прогоняет через acro_part
      .join.upcase
  end

private

  def self.acro_part(part)
    caps = part.gsub(/[^A-Z]/, '') # Оставляет в слове только буквы капсом
    if caps.empty? || caps == part.upcase # Если букв капсом не нашлось или Само слово оказалось буквой капсом
      part[0] # Вернуть в массиве первый символ
    else
      caps # Иначе вернуть все собранные сиволы капсом
    end
  end
end
