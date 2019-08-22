require_relative '../../lib/tty-spinner'

def spinnerFunction

opts = {
  style: {
    top: "|->  ",
    middle: "|--> ",
    bottom: "|->  ",
  },
  format: :bouncing_ball
}
spinners = TTY::Spinner::Multi.new("[:spinner] Doctor Data Loading!", opts)

sp1 = spinners.register "[:spinner] one"
sp2 = spinners.register "[:spinner] two"
sp3 = spinners.register "[:spinner] three"

sp1.auto_spin
sp2.auto_spin
sp3.auto_spin

sleep(2)
sp1.success
sleep 1
sp2.success
sleep 1
sp3.success


end