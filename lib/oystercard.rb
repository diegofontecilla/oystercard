class Oystercard

attr_reader :balance

MAXIMUM_BALANCE = 90
MINIMUM_BALANCE = 1
MINIMUM_FARE = 2

def initialize
  @balance = 0
  @journey = false
end

def top_up(amount)
  fail "maximum balance of 90 exceeded." if amount + @balance > MAXIMUM_BALANCE
  @balance += amount
end

def deduct(amount)
  @balance -= amount
end

def in_journey?
  @journey
end

def touch_in
  fail "balance is below £#{MINIMUM_BALANCE}" if @balance < MINIMUM_BALANCE
  @journey = true
end

def touch_out
  @journey = false
  @balance -= MINIMUM_FARE
end

end
