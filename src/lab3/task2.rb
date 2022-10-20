x = gets.chomp.to_f
y = 0.0
if (x <= 0 && x > -4) then
  y = ((x - 2).abs / (x ** 2 * Math.cos(x))) ** (1.0 / 7)
else
  if (x > 0 && x <= 12) then
    y = 1 / ((Math.tan(x + (1 / Math.exp(x))) / Math.sin(x) ** 2) ** (7.0 / 2))
  else
    if (x < -4 || x > 12) then
      y = 1.0 / (1 + x / (1 + x / (1 + x)))
    end
  end
end
print y, "\n"

y = case x
    when -3..0 then ((x - 2).abs / (x ** 2 * Math.cos(x))) ** (1.0 / 7)
    when 1..12 then 1 / ((Math.tan(x + (1 / Math.exp(x))) / Math.sin(x) ** 2) ** (7.0 / 2))
    else y = 1.0 / (1 + x / (1 + x / (1 + x)))
    end
print y