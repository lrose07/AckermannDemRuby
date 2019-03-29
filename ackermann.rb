class Ackermann

  def self.run
    (0..4).each do |i|
      (0..4).each do |j|
        puts('ack(' + i.to_s + ', ' + j.to_s + '): ' + ack(i, j).to_s)
      end
    end
  end

  def self.ack(m, n)
    if m.zero?
      n + 1
    elsif n.zero?
      ack(m - 1, 1)
    else
      ack(m - 1, ack(m, n - 1))
    end
  end

  run
end