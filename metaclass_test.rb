class StateMachineExample
  def process obj
    process_hook obj
  end

  private

  def process_state_1 obj
    p "in state 1: #{obj.to_s}"
    class << self
      alias process_hook process_state_2
    end
  end

  def process_state_2 obj
    p "in state 2: #{obj.to_s}"
    class << self
      alias process_hook process_state_1
    end
  end

  alias process_hook process_state_1
end

sm = StateMachineExample.new
sm.process 555
sm.process 555
sm.process 555
sm.process 555
sm.process 555
sm.process 555
sm.process 555
sm.process 555
