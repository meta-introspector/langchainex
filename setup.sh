sudo NEEDRESTART_MODE=a apt install -y libncurses5-dev autoconf automake libssl-dev
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf install elixir 1.15.4-otp-26 
#asdf install erlang 26.0.2
#asdf global erlang 26.0.2
asdf install erlang 25.2
asdf global erlang 25.2
asdf global elixir 1.14.3
asdf install elixir 1.14.3
mix install
mix deps.get
mix 
