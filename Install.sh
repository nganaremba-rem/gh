[[ "$OSTYPE" == "linux-gnu" ]] && { device="Linux"; } || { [[ "$OSTYPE" == "linux-android" ]] && { device="Android"}; }
[[ "$device" == "Linux" ]] && { yes | sudo apt install curl; cmd="sudo apt"; } || { yes | pkg install curl; cmd="pkg"; sudo=""; }
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | $sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | $sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
$cmd update
$cmd install gh
