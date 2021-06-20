# Define alias in shell
alias update 'sudo apt-fast update;sudo apt-fast upgrade;sudo apt-fast autoremove;sudo apt-fast autoclean'

# Define alias in config file
alias update='sudo apt-fast update;sudo apt-fast upgrade;sudo apt-fast autoremove;sudo apt-fast autoclean'

function update
	sudo apt-fast update;sudo apt-fast upgrade;sudo apt-fast autoremove;sudo apt-fast autoclean
end

# Save across terminal sessions:
funcsave update
