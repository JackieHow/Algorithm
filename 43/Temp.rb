# frozen_string_literal: true
# @param {String} num1
# @param {String} num2
# @return {String}
def multiply(num1, num2)
  return '0' if num1 == '0' || num2 == '0'

  # 初始化结果数组
  result = Array.new(num1.length + num2.length, 0)

  # 遍历每一位进行相乘
  (0...num1.length).to_a.reverse.each do |i|
    (0...num2.length).to_a.reverse.each do |j|
      result[i + j + 1] += num1[i].to_i * num2[j].to_i
      result[i + j] += result[i + j + 1] / 10
      result[i + j + 1] %= 10
    end
  end

  # 去除前导零并构造结果字符串
  result.shift while result[0] == 0
  result.empty? ? '0' : result.join
end

# 示例
num1 = "45"
num2 = "123"
puts multiply(num1, num2)  # 输出 "56088"